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


def get_cext_fname(proc_num: int) -> str:
    """Get name of custom Euphonic C extension .profile file"""
    return f'euphonic_c_ext.{proc_num - 1:02d}.profile'


def get_castep_fname(material: str, proc_num: int) -> str:
    """Get name of CASTEP .profile file"""
    return f'{material}.{proc_num:04d}.profile'


def get_prof_fnames(material: str, nproc: int, suffix: Optional[str] = '',
                    file_type: Optional[str] = 'castep',
                    direc: Optional[str] = 'castep') -> List[str]:
    """
    Get path and name of all profile files in directory. file_type is
    one of {'castep', 'cext'}
    """
    path = get_dir(material, direc, nproc, suffix)
    fnames = []
    for p in range(1, nproc + 1):
        if file_type == 'castep':
            fname = get_castep_fname(material, p)
        elif file_type == 'cext':
            fname = get_cext_fname(p)
        else:
            raise ValueError(f'File type {file_type} not recognised')
        fnames.append(
            os.path.join(path, fname))
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
        ignore_missing: Optional[bool] = True,
        printl: Optional[bool] = False
        ) -> Union[Tuple[None, None],
                   Tuple[ndarray, ndarray]]:
    """
    Read profiling information for a particular function from a
    particular profiling file. If ignore_missing=False, raise an
    error if the function information can't be found.
    """
    if printl:
        print(f'Reading {file_name}')
    with open(file_name, 'r') as f:
        data = f.readlines()
    if file_type == 'castep':
        timing, n_calls = extract_castep_func_prof(
            data, function_name, file_name, printl)
    elif file_type == 'cprofile':
        timing, n_calls = extract_cprofile_func_prof(
                data, function_name, printl)
    elif file_type == 'timeit':
        timing, n_calls = extract_timeit_func_prof(
                data, function_name, printl)
    elif file_type == 'cext':
        timing, n_calls = extract_cext_func_prof(
                data, function_name, printl)
    else:
        raise ValueError(f'File type {file_type} not recognised')
    if timing is None and not ignore_missing:
        raise ValueError(f'{function_name} not found in {file_name}')
    return timing, n_calls


def extract_castep_func_prof(data: List[str], func_name: str, file_name: str,
                             printl: Optional[bool] = False):
    """
    Read profiling information for a particular function from a
    CASTEP .profile file
    """
    n_calls = None
    timing = None
    for line in data:
        if ' ' + func_name + ' ' in line:
            if printl:
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


def extract_cprofile_func_prof(data: List[str], func_name: str,
                               printl: Optional[bool] = False):
    """
    Read profiling information for a particular function from a
    cProfile output file
    """
    n_calls = None
    timing = None
    for line in data:
        if func_name in line:
            if printl:
                print(line)
            split_line = line.split()
            n_calls = int(split_line[0])
            timing = float(split_line[3])  # cumulative time
            break
    return timing, n_calls


def extract_timeit_func_prof(data: List[str], func_name: str,
                             printl: Optional[bool] = False):
    """
    Read profiling information for a particular function for
    timeit data
    """
    n_calls = 1
    timing = None
    for line in data:
        if func_name in line:
            if printl:
                print(line)
            split_line = line.split()
            timing = float(split_line[-1])
            break
    return timing, n_calls


def extract_cext_func_prof(data: List[str], func_name: str,
                             printl: Optional[bool] = False):
    """
    Read profiling information for a particular function for
    custom C extension profiling data
    """
    n_calls = None
    timing = None
    for line in data:
        if func_name in line:
            if printl:
                print(line)
            split_line = line.split()
            timing = float(split_line[-1])
            n_calls = float(split_line[-2])
            break
    return timing, n_calls


def get_parallel_func_prof(
        material: str, nproc: int, function_name: str,
        file_type: Optional[str] = 'castep',
        direc: Optional[str] = 'castep',
        suffix: Optional[str] = '',
        ignore_missing: Optional[bool] = True,
        printl: Optional[bool] = False
        ) -> Union[Tuple[ndarray, ndarray],
                   Tuple[MaskedArray, MaskedArray]]:
    """
    Read parallel profiling information for a particular function from all
    profiling files in a directory, where there is one file produced
    per thread. If some files don't contain a certain function (e.g.
    some functions are only run on the 1st processor) return a masked
    array
    """
    fnames = get_prof_fnames(material, nproc, suffix=suffix, file_type=file_type,
                             direc=direc)
    times = np.full(len(fnames), -1, dtype=object)
    n_calls = np.full(len(fnames), -1, dtype=object)
    for i, fname in enumerate(fnames):
        # If there are repeat runs, the filename should have a
        # batch job number appended
        fname_repeats = glob.glob(fname + '*')
        times_i = np.full(len(fname_repeats), -1, dtype=np.float64)
        n_calls_i = np.full(len(fname_repeats), -1, dtype=np.int32)
        for j, fname_repeat in enumerate(fname_repeats):
            times_ij, n_calls_ij = get_func_prof_from_file(
                fname_repeat, function_name, file_type=file_type,
                ignore_missing=ignore_missing)
            if times_ij is None:
                if not isinstance(times_i, np.ma.MaskedArray):
                    times_i = np.ma.array(times_i)
                    n_calls_i = np.ma.array(n_calls_i)
                times_ij, n_calls_ij = (np.ma.masked, np.ma.masked)
            times_i[j] = times_ij
            n_calls_i[j] = n_calls_ij
        times[i] = times_i
        n_calls[i] = n_calls_i
    return times, n_calls


def get_all_parallel_func_prof(
        materials: List[str], nprocs: List[int], function_name: str,
        suffix: Optional[str] = '',
        file_type: Optional[str] = 'castep',
        direc: Optional[str] = 'castep',
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[ndarray, ndarray],
                   Tuple[MaskedArray, MaskedArray]]:
    """
    Same as get_all_reduced_parallel_func_prof, but doesn't reduce the
    data for repeated runs, returns everything

    Returns
    -------
    all_times
    n_calls
    """
    times = np.empty((len(materials), len(nprocs)), dtype=object)
    n_calls = np.empty((len(materials), len(nprocs)), dtype=object)
    for i, mat in enumerate(materials):
        for j, proc in enumerate(nprocs):
            (times[i, j], n_calls[i, j]) = get_parallel_func_prof(
                mat, proc, function_name, file_type=file_type,
                direc=direc, suffix=suffix)
    return times, n_calls

def get_all_reduced_parallel_func_prof(
        materials: List[str], nprocs: List[int], function_name: str,
        suffix: Optional[str] = '',
        file_type: Optional[str] = 'castep',
        direc: Optional[str] = 'castep',
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[ndarray, ndarray],
                   Tuple[MaskedArray, MaskedArray]]:
    """
    Read parallel profiling information for a particular function from all
    profiling files in all material/nprocs directories, where there is one
    file produced per thread, and the reduce to the mean/max/min of repeated
    runs

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
        np1-phonons, np2-phonons etc. this should be '-phonons'
    file_type
        The type of file to be read, one of {'castep', 'cext'}.
        'castep' is for files produced using CASTEP's built-in profiling,
        'cext' is for files produced using Euphonic's custom C extension
        profiling (see profile_c_ext branch)
   func_name
        The profiled function to read information for. Required if file_type
        is 'cprofile' or 'timeit'. Does nothing for 'time'.
    printl
        Whether to print debugging information

    Returns
    -------
    avg_times
    max_times
    min_times
    """
    all_times, all_calls = get_all_parallel_func_prof(
        materials, nprocs, function_name, suffix, file_type, direc,
        ignore_missing)
    avg_times = np.empty((len(materials), len(nprocs)), dtype=object)
    max_times = np.empty((len(materials), len(nprocs)), dtype=object)
    min_times = np.empty((len(materials), len(nprocs)), dtype=object)
    for i, mat in enumerate(materials):
        for j, proc in enumerate(nprocs):
            avg_times_ij = np.full(proc, -1, dtype=np.float64)
            max_times_ij = np.full(proc, -1, dtype=np.float64)
            min_times_ij = np.full(proc, -1, dtype=np.float64)
            for ip in range(proc):
                check = np.mean(all_times[i, j][ip])
                if check == 0 or check:
                    avg_times_ij[ip] = np.mean(all_times[i, j][ip])
                    max_times_ij[ip] = np.max(all_times[i, j][ip])
                    min_times_ij[ip] = np.min(all_times[i, j][ip])
                else:
                    if not isinstance(avg_times_ij, np.ma.MaskedArray):
                        avg_times_ij = np.ma.array(avg_times_ij)
                        max_times_ij = np.ma.array(max_times_ij)
                        min_times_ij = np.ma.array(min_times_ij)
                    avg_times_ij[ip] = np.ma.masked
                    max_times_ij[ip] = np.ma.masked
                    min_times_ij[ip] = np.ma.masked
            avg_times[i][j] = avg_times_ij
            max_times[i][j] = max_times_ij
            min_times[i][j] = min_times_ij
    return avg_times, max_times, min_times

def get_all_prof(
        materials: List[str], nprocs: List[int],
        direc: Optional[str] = 'euphonic',
        suffix: Optional[str] = '',
        file_type: Optional[str] = 'cprofile',
        func_name: Optional[str] = None,
        printl: Optional[bool] = False
        ) -> Tuple[ndarray, ndarray, ndarray, ndarray]:
    """
    Same as get_all_reduced_prof, but doesn't reduce the
    data for repeated runs, returns everything

    Returns
    -------
    all_times
    n_calls
    """
    times = np.empty((len(materials), len(nprocs)), dtype=object)
    n_calls = np.empty((len(materials), len(nprocs)), dtype=object)
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
            times_ij = np.full(len(fnames), -1, dtype=np.float64)
            n_calls_ij = np.full(len(fnames), -1, dtype=np.int32)
            if len(fnames) == 0:
                raise FileNotFoundError((
                    f'{file_type} file not found in '
                    f'{get_dir(mat, direc, proc, suffix)}'))
            if file_type == 'time':
                for k, fname in enumerate(fnames):
                    times_ij[k] = get_real_time_from_file(fname)
                    # n_calls doesn't make sense if not profiling a specific
                    # function, so just set to 1
                    n_calls_ij[k] = 1
            else:
                for k, fname in enumerate(fnames):
                    times_ij[k], n_calls_ij[k] = get_func_prof_from_file(
                        fname, func_name, file_type=file_type,
                        ignore_missing=False, printl=printl)
            if not np.all(n_calls_ij == n_calls_ij[0]):
                 raise RuntimeError((f'For {mat}, processor {proc}, suffix ',
                                     f'{suffix}, n_calls for {func_name} are ',
                                     f'not equal: {n_calls_ij}'))
            n_calls[i, j] = n_calls_ij
            times[i, j] = times_ij
    return times, n_calls

def get_all_reduced_prof(
        materials: List[str], nprocs: List[int],
        direc: Optional[str] = 'euphonic',
        suffix: Optional[str] = '',
        file_type: Optional[str] = 'cprofile',
        func_name: Optional[str] = None,
        printl: Optional[bool] = False
        ) -> Tuple[ndarray, ndarray, ndarray, ndarray]:
    """
    Read profiling information where there is 1 output file per profiling run
    from all materials/nprocessor directories, and get the mean/min/max of
    repeated runs

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
    printl
        Whether to print debugging information

    Returns
    -------
    avg_times
    max_times
    min_times
    n_calls
    """
    avg_times = np.full((len(materials), len(nprocs)), -1, dtype=np.float64)
    max_times = np.full((len(materials), len(nprocs)), -1, dtype=np.float64)
    min_times = np.full((len(materials), len(nprocs)), -1, dtype=np.float64)
    n_calls = np.full((len(materials), len(nprocs)), -1, dtype=np.int32)
    all_times, all_calls = get_all_prof(
        materials, nprocs, direc, suffix, file_type, func_name, printl)
    for i, mat in enumerate(materials):
        for j, proc in enumerate(nprocs):
            n_calls[i, j] = all_calls[i, j][0]
            avg_times[i, j] = np.mean(all_times[i, j])
            max_times[i, j] = np.amax(all_times[i, j])
            min_times[i, j] = np.amin(all_times[i, j])
    return avg_times, max_times, min_times, n_calls
