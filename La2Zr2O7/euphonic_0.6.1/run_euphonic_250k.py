from euphonic import ureg, ForceConstants
from timeit import default_timer as timer
import numpy as np
import seekpath
import sys

import euphonic as eu
print(f'Euphonic version: {eu.__version__}')

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
                          'n_threads': int(sys.argv[1])}

if len(sys.argv) > 2:
    profile = True
    profile_out = sys.argv[2]
else:
    profile = False
profile_data = []

if len(sys.argv) > 3 and int(sys.argv[3]) == 1:
    calc_sf = True
else:
    calc_sf = False

start = start_timer(profile)
fc = ForceConstants.from_castep('../../castep/La2Zr2O7.castep_bin')
end_timer(profile_data, 'euphonic from_castep', start)
qpts = np.loadtxt('../../../qpts_250000.txt')

start = start_timer(profile)
phon = fc.calculate_qpoint_phonon_modes(
    qpts, reduce_qpts=False, **interpolate_kwargs)
end_timer(profile_data, 'euphonic calculate_qpoint_phonon_modes', start)

if calc_sf:
    start = start_timer(profile)
    sf = phon.calculate_structure_factor()
    end_timer(profile_data, 'euphonic calculate_structure_factor', start)

    ebins = np.arange(200)*ureg('meV')
    start = start_timer(profile)
    sqw = sf.calculate_sqw_map(ebins)
    end_timer(profile_data, 'euphonic calculate_sqw_map', start)

if profile:        
    with open(profile_out, 'w') as f:
        f.writelines(profile_data)
