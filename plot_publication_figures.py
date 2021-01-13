import matplotlib as mpl
mpl.rcParams['font.family'] = 'serif'
mpl.rcParams['mathtext.fontset'] = 'dejavuserif'
import matplotlib.pyplot as plt
import numpy as np

from read_profile import get_all_prof, get_castep_all_func_prof

materials = ['La2Zr2O7', 'quartz', 'Nb-181818-s0.5-NCP19-vib-disp']
material_labels = ['$\mathrm{La_2Zr_2O_7}$', 'Quartz', 'Nb']
nprocs = [1, 2, 4, 8, 12, 16, 24]

# Print table comparing interpolation vs. sf times
_, avg_interpolate, _, _ = get_all_prof(
        materials, nprocs=[1], direc='euphonic', file_type='timeit',
        suffix='-noc-sf', func_name='calculate_qpoint_phonon_modes')
_, avg_sf, _, _ = get_all_prof(
        materials, nprocs=[1], direc='euphonic', file_type='timeit',
        suffix='-noc-sf', func_name='calculate_structure_factor')
print(f'|{"Material":30}|{"Interpolation":13}|{"Structure Factor":16}|')
print(f'|{materials[0]:30}|{avg_interpolate[0][0]:13.4f}|{avg_sf[0][0]:16.4f}|')
print(f'|{materials[1]:30}|{avg_interpolate[1][0]:13.4f}|{avg_sf[1][0]:16.4f}|')
print(f'|{materials[2]:30}|{avg_interpolate[2][0]:13.4f}|{avg_sf[2][0]:16.4f}|')


# Print table comparing total serial CASTEP phonons time vs. write times
all_write_times, _ = get_castep_all_func_prof(
    materials, nprocs, 'phonon_write')
all_phonon_times, _ = get_castep_all_func_prof(
    materials, nprocs, 'phonon_calculate')
write_times = np.zeros(len(materials))
phonon_times = np.zeros((len(materials), len(nprocs)))
for i in range(len(materials)):
    tmp_write_times = np.zeros(len(nprocs))
    for j in range(len(nprocs)):
        tmp_write_times[j] = all_write_times[i][j][0]
        phonon_times[i][j] = np.mean(all_phonon_times[i][j])
    write_times[i] = np.mean(tmp_write_times)
print(f'\n|{"Material":30}|{"Total Time":10}|{"Write Time":10}|')
print(f'|{materials[0]:30}|{phonon_times[0][0]:10.4f}|{write_times[0]:10.4f}|')
print(f'|{materials[1]:30}|{phonon_times[1][0]:10.4f}|{write_times[1]:10.4f}|')
print(f'|{materials[2]:30}|{phonon_times[2][0]:10.4f}|{write_times[2]:10.4f}|')


# Plot comparison figure of CASTEP/Euphonic interpolation times
_, avgt_castep, maxt_castep, mint_castep = get_all_prof(
        materials, nprocs=nprocs, direc='castep', file_type='time',
        suffix='-noprof')
_, avgt_eu, maxt_eu, mint_eu = get_all_prof(
        materials, nprocs=nprocs, direc='euphonic', file_type='time')
_, avgt_eupy, maxt_eupy, mint_eupy = get_all_prof(
        materials, nprocs=[1], direc='euphonic', file_type='time', suffix='-noc')
fig, ax = plt.subplots(1)
colours = ['r', 'g', 'b']
for i in range(len(materials)):
    ax.plot(nprocs, avgt_castep[i], label=material_labels[i] + ' CASTEP', ls='--', color=colours[i], lw=1)
    ax.plot(nprocs, avgt_eu[i], label=material_labels[i] + ' Euphonic C', color=colours[i], lw=1)
    ax.scatter([1], avgt_eupy[i], label=material_labels[i] + ' Euphonic serial Python',
               color=colours[i], marker='x')
ax.set_xlim(1, 24)
ax.set_yscale('log')
ax.set_xlabel('Number of Processors')
ax.set_ylabel('Wall Time (s)')
handles, labels = ax.get_legend_handles_labels()
labels, handles = zip(*sorted(zip(labels, handles), key=lambda t: t[0]))
lgd = ax.legend(handles, labels, loc='upper left', bbox_to_anchor=(1, 1.02))
plt.savefig('figures/walltime_compare.pdf', bbox_inches='tight')

# Print Euphonic script time for 1 procs for C/Python
print(f'\nEuphonic script time for 1 proc in Python:')
print(f'{materials[0]} {avgt_eupy[0][0]}')
print(f'{materials[1]} {avgt_eupy[1][0]}')
print(f'{materials[2]} {avgt_eupy[2][0]}')
print(f'\nEuphonic script time for 1 proc in C:')
print(f'{materials[0]} {avgt_eu[0][0]}')
print(f'{materials[1]} {avgt_eu[1][0]}')
print(f'{materials[2]} {avgt_eu[2][0]}')

# Print Euphonic & CASTEP script time for 24 procs
print(f'\nEuphonic script time for 24 procs:')
print(f'{materials[0]} {avgt_eu[0][-1]}')
print(f'{materials[1]} {avgt_eu[1][-1]}')
print(f'{materials[2]} {avgt_eu[2][-1]}')
print(f'\nCASTEP phonons time for 24 procs:')
print(f'{materials[0]} {avgt_castep[0][-1]}')
print(f'{materials[1]} {avgt_castep[1][-1]}')
print(f'{materials[2]} {avgt_castep[2][-1]}')

# Plot Euphonic scaling
_, avgt_calc_ph, maxt_calc_ph, mint_calc_ph = get_all_prof(
        materials, nprocs=nprocs, direc='euphonic', file_type='timeit',
        func_name='calculate_qpoint_phonon_modes')
fig, ax = plt.subplots(1)
for i in range(len(materials)):
    ax.plot(nprocs, avgt_calc_ph[i,0]/avgt_calc_ph[i], color=colours[i],
            label=material_labels[i])
ax.plot([1,24], [1,24], color='k', ls='--')
ax.set_xlim(1, 24)
ax.set_ylim(1)
ax.set_xlabel('Number of Processors')
ax.set_ylabel('Speedup')
ax.legend()
#plt.savefig('figures/euphonic_scaling.pdf')

plt.show()
