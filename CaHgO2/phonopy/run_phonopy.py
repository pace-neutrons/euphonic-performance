from euphonic import ureg, ForceConstants
from timeit import default_timer as timer
import numpy as np
import phonopy
import seekpath
import sys

def start_timer(profile):
    if profile:
        return timer()
    else:
        return None

def end_timer(profile_data, funcstr, start_time):
    end = timer()
    if start_time is not None:
        profile_data.append(funcstr + f' {end-start: .3f}\n')

if len(sys.argv) > 1:
    profile = True
    profile_out = sys.argv[1]
else:
    profile = False
profile_data = []

qpts = np.loadtxt('../../../qpts_25000.txt')
#qpts = qpts[:250]

start = start_timer(profile)
phonon = phonopy.load('../mp-7041-20180417.yaml')
end_timer(profile_data, 'phonopy load', start)

start = start_timer(profile)
phonon.run_band_structure(qpts, with_eigenvectors=True)
end_timer(profile_data, 'phonopy run_band_structure', start)

if profile:        
    with open(profile_out, 'w') as f:
        f.writelines(profile_data)
