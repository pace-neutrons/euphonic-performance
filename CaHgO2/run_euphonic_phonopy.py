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

interpolate_kwargs = {'use_c': False}
if len(sys.argv) > 1 and int(sys.argv[1]) > 0:
    interpolate_kwargs = {'use_c': True,
                          'n_threads': int(sys.argv[1]),
                          'fall_back_on_python': False}

if len(sys.argv) > 2:
    profile = True
    profile_out = sys.argv[2]
else:
    profile = False
profile_data = []

fc = ForceConstants.from_phonopy(summary_name='../mp-7041-20180417.yaml')
qpts = np.loadtxt('../../qpts_25000.txt')
#qpts = qpts[:250]

start = start_timer(profile)
phon = fc.calculate_qpoint_phonon_modes(
    qpts, asr='reciprocal', reduce_qpts=False, **interpolate_kwargs)
end_timer(profile_data, 'euphonic calculate_qpoint_phonon_modes', start)

start = start_timer(profile)
sf = phon.calculate_structure_factor()
end_timer(profile_data, 'euphonic calculate_structure_factor', start)

ebins = np.arange(200)*ureg('meV')
start = start_timer(profile)
sqw = sf.calculate_sqw_map(ebins)
end_timer(profile_data, 'euphonic calculate_sqw_map', start)

phonon = phonopy.load('../mp-7041-20180417.yaml')

start = start_timer(profile)
phonon.run_band_structure(qpts, with_eigenvectors=True)
end_timer(profile_data, 'phonopy run_band_structure', start)

if profile:        
    with open(profile_out, 'w') as f:
        f.writelines(profile_data)
