import os
from typing import List, Optional, Union, Tuple

import numpy as np
from numpy import ndarray
from numpy.ma.core import MaskedArray

def get_castep_dir(material: str, nproc: int) -> str:
    """Get name of directory containing CASTEP .profile files"""
    direc = os.path.join(material, 'castep', 'np' + str(nproc))
    return direc

def get_castep_fname(material: str, proc_num: int) -> str:
    """Get name of CASTEP .profile file"""
    return f'{material}.{proc_num:04d}.profile'

def get_castep_fnames(material: str, nproc: int) -> List[str]:
    """Get path and name of all CASTEP .profile files in directory"""
    path = get_castep_dir(material, nproc)
    fnames = []
    for p in range(1, nproc + 1):
        fnames.append(
            os.path.join(path, get_castep_fname(material, p)))
    return fnames

def get_castep_func_prof_from_file(
        file_name: str, function_name: str, 
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[None, None, None],
                   Tuple[ndarray, ndarray, ndarray]]:
    """
    Read profiling information for a particular function from a
    particular .profile file. If ignore_missing=False, raise an
    error if the function information can't be found.
    """
    print(f'Reading {file_name}')
    with open(file_name, 'r') as f:
        data = f.readlines()
    function_name_found = False
    for line in data:
        if ' ' + function_name + ' ' in line:
            split_line = line.split()
            try:
                time = float(split_line[-2].strip('s')) 
                n_profiled_calls = int(split_line[-3]) 
                n_calls = int(split_line[-4]) 
                function_name_found = True
                print(line)
                break
            except ValueError:
                pass
    if not function_name_found:
        if ignore_missing:
            return None, None, None
        else:
            raise ValueError(f'{function_name} not found in {file_name}')
           
    return time, n_profiled_calls, n_calls

def get_castep_parallel_func_prof(
        material: str, nproc: int, function_name: str,
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[ndarray, ndarray, ndarray],
                   Tuple[MaskedArray, MaskedArray, MaskedArray]]:
    """
    Read profiling information for a particular function from all
    .profile files within a directory. If some files don't contain a
    certain function (e.g. some functions are only run on the 1st
    processor) return a masked array
    """
    fnames = get_castep_fnames(material, nproc)
    times = np.full(len(fnames), -1, dtype=np.float64)
    n_prof_calls = np.full(len(fnames), -1, dtype=np.int32)
    n_calls = np.full(len(fnames), -1, dtype=np.int32)
    for i, fname in enumerate(fnames):
        times_i, n_prof_calls_i, n_calls_i = get_castep_func_prof_from_file(
            fname, function_name, ignore_missing=ignore_missing)
        if times_i is None:
            if not isinstance(times_i, np.ma.MaskedArray):
                times = np.ma.array(times)
                n_prof_calls = np.ma.array(n_prof_calls)
                n_calls = np.ma.array(n_calls)
            times_i, n_prof_calls_i, n_calls_i = (np.ma.masked, np.ma.masked,
                                                  np.ma.masked)
        times[i] = times_i
        n_prof_calls[i] = n_prof_calls_i
        n_calls[i] = n_calls_i
    return times, n_prof_calls, n_calls

def get_castep_all_func_prof(
        materials: List, nprocs: List, function_name: str,
        ignore_missing: Optional[bool] = True
        ) -> Union[Tuple[ndarray, ndarray, ndarray],
                   Tuple[MaskedArray, MaskedArray, MaskedArray]]:
    """
    Read profiling information for a particular function from
    all materials/nprocessor directories
    """
    times = np.empty((len(materials), len(nprocs)), dtype=object)
    n_prof_calls = np.empty((len(materials), len(nprocs)), dtype=object)
    n_calls = np.empty((len(materials), len(nprocs)), dtype=object)
    for i, mat in enumerate(materials):
        for j, proc in enumerate(nprocs):
            (times[i, j], n_prof_calls[i, j],
             n_calls[i, j]) = get_castep_parallel_func_prof(
                 mat, proc, function_name)
    return times, n_prof_calls, n_calls

materials = ['La2Zr2O7', 'quartz', 'Nb-181818-s0.5-NCP19-vib-disp']
nprocs = [1, 2 ,4, 8, 12, 16, 24]
times, npc, nc = get_castep_all_func_prof(materials, nprocs, 'castep') 
