import os
import re
import glob
from typing import List, Optional, Union, Tuple
import warnings

import numpy as np
from numpy import ndarray
from numpy.ma.core import MaskedArray


def get_dir(material: str, code: str, nproc: int,
            suffix: Optional[str] = '') -> str:
    """Get name of directory containing profile files"""
    direc = os.path.join(material, code, 'np' + str(nproc) + suffix)
    return direc


def get_castep_fname(material: str, proc_num: int) -> str:
    """Get name of CASTEP .profile file"""
    return f'{material}.{proc_num:04d}.profile'


def get_castep_fnames(material: str, nproc: int) -> List[str]:
    """Get path and name of all CASTEP .profile files in directory"""
    path = get_dir(material, 'castep', nproc)
    fnames = []
    for p in range(1, nproc + 1):
        fnames.append(
            os.path.join(path, get_castep_fname(material, p)))
    return fnames


def get_cprofile_fname(material: str, nproc: int) -> str:
    """Get name of output cProfile file"""
    return f'{material}_np{nproc}_cprofile.txt'


def get_timeit_fname(material: str, nproc: int) -> str:
    """Get name of custom output timeit file"""
    return f'{material}_np{nproc}_timeit.txt'


def get_real_time_from_file(file_name: str) -> float:
    """
    Read the 'real' time as returned by the time command (example below)
    and return it in seconds

    real    9m24.355s
    user    6m58.275s
    sys     2m18.659s
    """
    pattern = re.compile('real\s*(\d+)m(\d+\.\d+)s')
    with open(file_name, 'r') as f:
        data = f.readlines()
    for line in data:
        res = pattern.match(line)
        if res is not None:
            break
    if res is None:
        raise ValueError(f'real time not found in {file_name}')
    else:
        return int(res.group(1))*60 + float(res.group(2))


def get_func_prof_from_file(
        file_name: str, function_name: str,
        file_type: Optional[str] = 'castep',
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[None, None],
                   Tuple[ndarray, ndarray]]:
    """
    Read profiling information for a particular function from a
    particular profiling file. If ignore_missing=False, raise an
    error if the function information can't be found.
    """
    print(f'Reading {file_name}')
    with open(file_name, 'r') as f:
        data = f.readlines()
    if file_type == 'castep':
        timing, n_calls = extract_castep_func_prof(
            data, function_name, file_name)
    elif file_type == 'cprofile':
        timing, n_calls = extract_cprofile_func_prof(data, function_name)
    elif file_type == 'timeit':
        timing, n_calls = extract_timeit_func_prof(data, function_name)
    else:
        raise ValueError(f'File type {file_type} not recognised')
    if timing is None and not ignore_missing:
        raise ValueError(f'{function_name} not found in {file_name}')
    return timing, n_calls


def extract_castep_func_prof(data: List[str], func_name: str, file_name: str):
    """
    Read profiling information for a particular function from a
    CASTEP .profile file
    """
    n_calls = None
    timing = None
    for line in data:
        if ' ' + func_name + ' ' in line:
            print(line)
            split_line = line.split()
            try:
                timing = float(split_line[-2].strip('s'))
                n_calls = int(split_line[-4])
                n_profiled_calls = int(split_line[-3]) 
                if n_calls != n_profiled_calls:
                    warnings.warn((
                        f'Number of calls is not the same as number of '
                        f'profiled calls for {func_name} in {file_name}'))
                break
            except ValueError:
                pass
    return timing, n_calls


def extract_cprofile_func_prof(data: List[str], func_name: str):
    """
    Read profiling information for a particular function from a
    cProfile output file
    """
    n_calls = None
    timing = None
    for line in data:
        if func_name in line:
            print(line)
            split_line = line.split()
            n_calls = int(split_line[0])
            timing = float(split_line[3])  # cumulative time
            break
    return timing, n_calls


def extract_timeit_func_prof(data: List[str], func_name: str):
    """
    Read profiling information for a particular function for
    timeit data
    """
    n_calls = 1
    timing = None
    for line in data:
        if func_name in line:
            print(line)
            split_line = line.split()
            timing = float(split_line[-1])
            break
    return timing, n_calls


def get_castep_parallel_func_prof(
        material: str, nproc: int, function_name: str,
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[ndarray, ndarray],
                   Tuple[MaskedArray, MaskedArray]]:
    """
    Read profiling information for a particular function from all
    .profile files within a directory. If some files don't contain a
    certain function (e.g. some functions are only run on the 1st
    processor) return a masked array
    """
    fnames = get_castep_fnames(material, nproc)
    times = np.full(len(fnames), -1, dtype=np.float64)
    n_calls = np.full(len(fnames), -1, dtype=np.int32)
    for i, fname in enumerate(fnames):
        times_i, n_calls_i = get_func_prof_from_file(
            fname, function_name, file_type='castep',
            ignore_missing=ignore_missing)
        if times_i is None:
            if not isinstance(times_i, np.ma.MaskedArray):
                times = np.ma.array(times)
                n_calls = np.ma.array(n_calls)
            times_i, n_calls_i = (np.ma.masked, np.ma.masked)
        times[i] = times_i
        n_calls[i] = n_calls_i
    return times, n_calls


def get_castep_all_func_prof(
        materials: List[str], nprocs: List[int], function_name: str,
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[ndarray, ndarray],
                   Tuple[MaskedArray, MaskedArray]]:
    """
    Read CASTEP profiling information for a particular function from
    all materials/nprocessor directories
    """
    times = np.empty((len(materials), len(nprocs)), dtype=object)
    n_calls = np.empty((len(materials), len(nprocs)), dtype=object)
    for i, mat in enumerate(materials):
        for j, proc in enumerate(nprocs):
            (times[i, j], n_calls[i, j]) = get_castep_parallel_func_prof(
                mat, proc, function_name)
    return times, n_calls


def get_all_prof(
        materials: List[str], nprocs: List[int],
        direc: Optional[str] = 'euphonic',
        suffix: Optional[str] = '',
        file_type: Optional[str] = 'cprofile',
        func_name: Optional[str] = None
        ) -> Tuple[ndarray, ndarray, ndarray, ndarray]:
    """
    Read profiling information where there is 1 output file per profiling run
    from all materials/nprocessor directories

    Parameters
    ----------
    materials
        Materials directories to look in
    nprocs
        Processor directories to look in
    direc
        Subdirectory to look in. Usually the modelling code name
    suffix
        Add this suffix onto the processor directories e.g. if they are named
        np1-cprofile, np2-cprofile etc. this should be '-cprofile'
    file_type
        The type of file to be read, one of {'cprofile', 'timeit', 'time'}.
        'timeit' is custom per-function profiling using Python timeit, 'time'
        is output from the Linux time tool.
   func_name
        The profiled function to read information for. Required if file_type
        is 'cprofile' or 'timeit'. Does nothing for 'time'.
    """
    avg_times = np.full((len(materials), len(nprocs)), -1, dtype=np.float64)
    max_times = np.full((len(materials), len(nprocs)), -1, dtype=np.float64)
    min_times = np.full((len(materials), len(nprocs)), -1, dtype=np.float64)
    n_calls = np.full((len(materials), len(nprocs)), -1, dtype=np.int32)
    for i, mat in enumerate(materials):
        for j, proc in enumerate(nprocs):
            if file_type == 'cprofile':
                fnames = glob.glob(get_dir(mat, direc, proc, suffix) + '/*cprofile*txt')
            elif file_type=='timeit':
                fnames = glob.glob(get_dir(mat, direc, proc, suffix) + '/*timeit*txt')
            elif file_type=='time':
                fnames = glob.glob(get_dir(mat, direc, proc, suffix) + '/*.err')
            else:
                raise ValueError(f'File type {file_type} not recognised')
            times = np.full(len(fnames), -1, dtype=np.float64)
            n_calls_ij = np.full(len(fnames), -1, dtype=np.int32)
            if file_type == 'time':
                for k, fname in enumerate(fnames):
                    times[k] = get_real_time_from_file(fname)
                    # n_calls doesn't make sense if not profiling a specific
                    # function, so just set to 1
                    n_calls_ij[k] = 1
            else:
                for k, fname in enumerate(fnames):
                    times[k], n_calls_ij[k] = get_func_prof_from_file(
                        fname, func_name, file_type=file_type,
                        ignore_missing=False)
            if not np.all(n_calls_ij == n_calls_ij[0]):
                 raise RuntimeError((f'For {mat}, processor {proc}, suffix ',
                                     f'{suffix}, n_calls for {func_name} are ',
                                     f'not equal: {n_calls_ij}'))
            n_calls[i, j] = n_calls_ij[0]
            avg_times[i, j] = np.mean(times)
            max_times[i, j] = np.amax(times)
            min_times[i, j] = np.amin(times)
    return n_calls, avg_times, max_times, min_times


materials = ['La2Zr2O7', 'quartz', 'Nb-181818-s0.5-NCP19-vib-disp']
nprocs = [1, 2 ,4, 8, 12, 16, 24]
#times, nc = get_castep_all_func_prof(materials, nprocs, 'phonon_calculate')
#times, nc = get_all_prof(['CaHgO2'], [1,2], func_name='run_band_structure', direc='')

#_, avgtp, maxtp, mintp = get_all_prof(['CaHgO2'], [1,2,4], direc='phonopy', suffix='', file_type='time')
#_, avgt, maxt, mint = get_all_prof(['La2Zr2O7'], [1,2,4,8,12,16,24], direc='euphonic', suffix='', file_type='time')
_, avgt, maxt, mint = get_all_prof(materials, nprocs, direc='euphonic', suffix='',
                                   func_name='calculate_qpoint_phonon_modes',
                                   file_type='time')
#_, avgt, maxt, mint = get_all_prof(['La2Zr2O7', 'quartz'], [1], direc='euphonic',
#                                   suffix='-cprofile', func_name='calculate_qpoint_phonon_modes', file_type='cprofile')

