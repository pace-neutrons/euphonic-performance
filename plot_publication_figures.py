import matplotlib as mpl
#mpl.rcParams['font.family'] = 'serif'
#mpl.rcParams['mathtext.fontset'] = 'dejavuserif'
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
from matplotlib.patches import Patch
import numpy as np

from read_profile import (get_all_prof, get_all_reduced_prof,
                          get_all_parallel_func_prof,
                          get_all_reduced_parallel_func_prof)

castep_materials = ['Nb-181818-s0.5-NCP19-vib-disp', 'quartz', 'La2Zr2O7']
#phonopy_materials = ['Al']
phonopy_materials = []
materials = castep_materials + phonopy_materials
castep_material_labels = ['Niobium', 'Quartz', '$\mathrm{La_2Zr_2O_7}$']
phonopy_material_labels = ['Aluminium']
material_labels = castep_material_labels + phonopy_material_labels
nprocs = [1, 2, 4, 8, 12, 16, 24]

figsize_1col = (3.48, 2.5)
figsize_1col_tall = (3.48, 3.)
figsize_1p5col = (4.72, 2.83)
figsize_2col = (7.09, 2.36)

def reduce_parallel_prof(parallel_times, op='mean'):
    # Parallel profiling results are reported once per thread.
    # Reduce this to the mean value per run
    reduced_time = np.zeros(parallel_times.shape)
    for i in range(len(parallel_times)):
        for j in range(len(parallel_times[0])):
            times_ij = parallel_times[i, j]
            if np.ma.is_masked(times_ij) and times_ij.mask.all():
                continue
            elif op == 'mean':
                reduced_time[i, j] = np.mean(times_ij)
            elif op == 'max':
                reduced_time[i, j] = np.amax(times_ij)
    return reduced_time

# Print table comparing interpolation vs. sf times
avgt_eupy, _, _, _ = get_all_reduced_prof(
        materials, nprocs=[1], direc='euphonic_0.6.1', file_type='timeit',
        suffix='-noc-sf', func_name='calculate_qpoint_phonon_modes')
avg_sf, _, _, _ = get_all_reduced_prof(
        materials, nprocs=[1], direc='euphonic_0.6.1', file_type='timeit',
        suffix='-noc-sf', func_name='calculate_structure_factor')
print(f'|{"Material":30}|{"Interpolation":13}|{"Structure Factor":16}|')
for i in range(len(materials)):
    print(f'|{materials[i]:30}|{avgt_eupy[i][0]:13.4f}|{avg_sf[i][0]:16.4f}|')


# Print table comparing total serial CASTEP phonons time vs. write times
all_avg_write_times, _, _ = get_all_reduced_parallel_func_prof(
    castep_materials, nprocs, 'phonon_write', suffix='-phonons-prof')
write_times = reduce_parallel_prof(all_avg_write_times)
all_avg_phonon_times, _, _ = get_all_reduced_parallel_func_prof(
    castep_materials, nprocs, 'phonon_calculate', suffix='-phonons-prof')
phonon_times = reduce_parallel_prof(all_avg_phonon_times)
print(f'\n|{"Material":30}|{"Total Time":10}|{"Write Time":10}|')
for i in range(len(castep_materials)):
    print(f'|{materials[i]:30}|{phonon_times[i, 0]:10.4f}|{write_times[i, 0]:10.4f}|')


# Plot comparison figure of CASTEP/Euphonic interpolation times
# Different options for 'total' CASTEP calculation time, phonons tool
# time with profiling on/off, or phonon_calculate time in profiling output
avgt_castep_noprof, maxt_castep, mint_castep, _ = get_all_reduced_prof(
        castep_materials, nprocs=nprocs, direc='castep', file_type='time',
        suffix='-phonons')
avgt_castep_prof, _, _, _ = get_all_reduced_prof(
        castep_materials, nprocs=nprocs, direc='castep', file_type='time',
        suffix='-phonons-prof')
avgt_phonon_calc, _, _ = get_all_reduced_parallel_func_prof(
    castep_materials, nprocs, 'phonon_calculate', suffix='-phonons-prof')
avgt_phonon_calc_r = reduce_parallel_prof(avgt_phonon_calc)
# Get time to reconstruct fc mat (recip_to_real)
avgt_recip_to_real, _, _ = get_all_reduced_parallel_func_prof(
    castep_materials, nprocs, 'phonon_recip_to_real', suffix='-phonons-prof')
avgt_recip_to_real_r = reduce_parallel_prof(avgt_recip_to_real)
# Get time to calculate supercell (cell_supercell)
avgt_cell_supercell, _, _ = get_all_reduced_parallel_func_prof(
    castep_materials, nprocs, 'cell_supercell', suffix='-phonons-prof')
avgt_cell_supercell_r = reduce_parallel_prof(avgt_cell_supercell)

# Subtract cell_supercell and phonon_write time from phonon_calculate time
avgt_castep = (avgt_phonon_calc_r
               - write_times
               - avgt_cell_supercell_r
               - avgt_recip_to_real_r)

# Now get Euphonic interpolation times with/without C
# Just use time from '-noc-sf'
#avgt_eupy, _, _, _ = get_all_reduced_prof(
#        materials, [1], direc='euphonic_0.6.1', file_type='timeit',
#        suffix='-noc', func_name='calculate_qpoint_phonon_modes')
avgt_eu, _, _, _ = get_all_reduced_prof(
        materials, nprocs, direc='euphonic_0.6.1', file_type='timeit',
        func_name='calculate_qpoint_phonon_modes')

# Get Phonopy interpolation times
avgt_phonopy, _, _, _ = get_all_reduced_prof(
        phonopy_materials, nprocs=[1], direc='phonopy', file_type='timeit',
        func_name='run_qpoints')

# Plot Euphonic vs. CASTEP interpolation time
colours = ['tab:cyan', 'orange', 'm', 'darkgreen']
markerstyle = {'ms':  3}
castep_style = {'ls': '--', 'marker': '^', **markerstyle}
euphonic_style = {'marker': 'o', **markerstyle}
with plt.style.context('pub.mplstyle'):
    fig, ax = plt.subplots(1, figsize=figsize_1col_tall)
    for i in range(len(castep_materials)):
            ax.plot(nprocs, avgt_castep[i], label=castep_material_labels[i] + ' CASTEP', color=colours[i],
                    **castep_style)
    for i in range(len(phonopy_materials)):
        ax.scatter([1], avgt_phonopy[i], label=phonopy_material_labels[i] + ' Phonopy',
                   color=colours[len(castep_materials) + i], marker='P', clip_on=False)
    for i in range(len(materials)):
        ax.plot(nprocs, avgt_eu[i], label=material_labels[i] + ' Euphonic C', color=colours[i],
                **euphonic_style)
        ax.scatter([1], avgt_eupy[i], label=material_labels[i] + ' Euphonic serial Python',
                   color=colours[i], marker='x', clip_on=False)
    ax.set_xlim(0, 24)
    ax.set_xticks(nprocs)
    ax.set_yscale('log')
    ax.set_xlabel('Number of Processors')
    ax.set_ylabel('Wall Time (s)')
    # Create custom legend
    material_lines = [Patch(color=colour) for colour in colours[:len(castep_materials)]]
    interpolation_lines = [Line2D([0], [0], color='k', **castep_style),
                           Line2D([0], [0], color='k', **euphonic_style),
                           Line2D([0], [0], color='k', ls='None', marker='x')]
    material_title = Line2D([], [], marker='None', ls='None')
    interpolation_title = Line2D([], [], marker='None', ls='None')
    blank = Patch(visible=False)
    handles = ([material_title]
               + [blank]*(len(material_lines) - 1)
               + [interpolation_title]
               + [blank]*(len(interpolation_lines) - 1)
               + material_lines
               + interpolation_lines)
    labels = (['Material']
             + ['']*(len(material_lines) - 1)
             + ['Interpolation Method']
             + ['']*(len(interpolation_lines) - 1)
             + castep_material_labels
             + ['CASTEP', 'Euphonic C', 'Euphonic Serial Python'])
    lgd = ax.legend(handles, labels, loc='upper right', ncol=2)
    plt.savefig('figures/walltime_compare.png')

# Print Euphonic calculate_qpoint_phonon_modes time for 1 procs for C/Python
print(f'\nEuphonic calculate_qpoint_phonon_modes time for 1 proc in Python:')
for i in range(len(materials)):
    print(f'{materials[i]} {avgt_eupy[i][0]}')
print(f'\nEuphonic calculate_qpoint_phonon_modes time for 1 proc in C:')
for i in range(len(materials)):
    print(f'{materials[i]} {avgt_eu[i][0]}')

# Print Euphonic & CASTEP script time for 24 procs
print(f'\nEuphonic calculate_qpoint_phonon_modes time for 24 procs:')
for i in range(len(materials)):
    print(f'{materials[i]} {avgt_eu[i][-1]}')
print(f'\nCASTEP phonon_calculate time for 24 procs (no subtraction):')
for i in range(len(castep_materials)):
    print(f'{materials[i]} {phonon_times[i][-1]}')

# Read timing + C extension profiling for 250k qpts
cext_kwargs = {'direc': 'euphonic_0.6.1', 'suffix': '-cext-250k'}
cext_calc_ph, _, _, _ = get_all_reduced_prof(
        materials, nprocs=nprocs, file_type='timeit',
        func_name='calculate_qpoint_phonon_modes', **cext_kwargs)
cext_kwargs['file_type'] = 'cext'
parallel_cext_par, maxt, mint = get_all_reduced_parallel_func_prof(
    materials, nprocs, 'total in parallel section', **cext_kwargs)
cext_par = reduce_parallel_prof(parallel_cext_par)
parallel_cext_calc_dyn_mat, maxt, mint = get_all_reduced_parallel_func_prof(
    materials, nprocs, 'calculate_dyn_mat_at_q', **cext_kwargs)
cext_calc_dyn_mat = reduce_parallel_prof(parallel_cext_calc_dyn_mat)
parallel_cext_calc_dipole, maxt, mint = get_all_reduced_parallel_func_prof(
    materials, nprocs, 'calculate_dipole_correction', **cext_kwargs)
cext_calc_dipole = reduce_parallel_prof(parallel_cext_calc_dipole)
parallel_cext_diag_dyn_mat, maxt, mint = get_all_reduced_parallel_func_prof(
    materials, nprocs, 'diagonalise_dyn_mat', **cext_kwargs)
cext_diag_dyn_mat = reduce_parallel_prof(parallel_cext_diag_dyn_mat)

# Plot Euphonic walltimes for 250k
with plt.style.context('pub.mplstyle'):
    fig, ax = plt.subplots(1, figsize=figsize_1col)
    for i in range(len(materials)):
        ax.plot(nprocs, cext_calc_ph[i], label=material_labels[i], color=colours[i],
                **euphonic_style)
    ax.set_xticks(nprocs)
    ax.set_xlim(1, 24)
    ax.set_yscale('log')
    ax.set_xlabel('Number of Processors')
    ax.set_ylabel('Wall Time (s)')
    ax.legend()
    plt.savefig('figures/euphonic_walltime_250k.png')

# Plot Euphonic scaling for 250k
with plt.style.context('pub.mplstyle'):
    fig, ax = plt.subplots(1, figsize=figsize_1col)
    for i in range(len(materials)):
        ax.plot(nprocs, cext_calc_ph[i,0]/cext_calc_ph[i], color=colours[i],
                label=material_labels[i], **euphonic_style)
    ax.plot([1,24], [1,24], color='k', ls='--', lw='1', label='Perfect scaling')
    ax.set_xticks(nprocs)
    ax.set_xlim(1, 24)
    ax.set_ylim(1, 24)
    ax.set_xlabel('Number of Processors')
    ax.set_ylabel('Speedup')
    ax.legend()
    plt.savefig('figures/euphonic_scaling_250k.png')

# Plot C extension profiling
cext_colours = ['r', 'c', 'm', 'orange']
with plt.style.context('pub.mplstyle'):
    fig, axes = plt.subplots(1,len(materials), sharey=True, figsize=figsize_2col)
    for i, mat in enumerate(materials):
        frac_dipole = cext_calc_dipole[i]/cext_calc_ph[i]
        if cext_calc_dipole[i, 0] > 0:
            axes[i].plot(nprocs, frac_dipole, label='Ewald Sum Correction', color=cext_colours[0])
            axes[i].fill_between(nprocs, np.zeros(len(nprocs)), frac_dipole, color=cext_colours[0], alpha=0.4)
        frac_calc_dyn = frac_dipole + cext_calc_dyn_mat[i]/cext_calc_ph[i]
        axes[i].plot(nprocs, frac_calc_dyn, label='Dynamical Matrix Calculation', color=cext_colours[1])
        axes[i].fill_between(nprocs, frac_dipole, frac_calc_dyn, color=cext_colours[1], alpha=0.4)
        frac_diag_dyn = frac_calc_dyn + cext_diag_dyn_mat[i]/cext_calc_ph[i]
        axes[i].plot(nprocs, frac_diag_dyn, label='Dynamical Matrix Diagonalisation', color=cext_colours[2])
        axes[i].fill_between(nprocs, frac_calc_dyn, frac_diag_dyn, color=cext_colours[2], alpha=0.4)
        frac_par = cext_par[i]/cext_calc_ph[i]
        axes[i].plot(nprocs, frac_par, label='Remainder of Parallel Section', color=cext_colours[3])
        axes[i].fill_between(nprocs, frac_diag_dyn, frac_par, color=cext_colours[3], alpha=0.4)

        axes[i].set_xticks(nprocs)
        axes[i].set_xlim(1, 24)
        axes[i].set_ylim(0, 1)
        axes[i].set_title(material_labels[i])
        box = axes[i].get_position()
        axes[i].set_position([box.x0, box.y0 + box.height * 0.15,
                              box.width, box.height * 0.85])
    axes[0].set_ylabel('Fraction of function time')

    handles, labels = axes[1].get_legend_handles_labels()
    # Make legend appear as a block of colour rather than a line
    patch_handles = [Patch(color=colour, alpha=0.4) for colour in cext_colours]
    # Put a legend below center axis
    # Position based on number of subplots
    if len(materials)%2 == 0:
        legend_x = 1.0
    else:
        legend_x = 0.5
    axes[(len(materials) - 1)//2].legend(
            patch_handles, labels,
            loc='upper center', bbox_to_anchor=(legend_x, -0.19), ncol=4)
    fig.text(0.5, 0.11, 'Number of Processors', ha='center')
    plt.savefig('figures/cext_prof.png')

parallel_cext_for, maxt, mint = get_all_reduced_parallel_func_prof(
    materials, nprocs, 'total in for loop', **cext_kwargs)
cext_for = reduce_parallel_prof(parallel_cext_for)
print(f'\n\nTime in parallel C for Nb, 24 procs: {cext_for[2, -1]}')

#plt.show()
print(f'\nCASTEP graph times')
for i in range(len(castep_materials)):
    print(f'{materials[i]} {avgt_castep[i][:]}')
print(f'\nEuphonic c graph times')
for i in range(len(castep_materials)):
    print(f'{materials[i]} {avgt_eu[i][:]}')
print(f'\nEuphonic Py times')
for i in range(len(castep_materials)):
    print(f'{materials[i]} {avgt_eupy[i]}')

