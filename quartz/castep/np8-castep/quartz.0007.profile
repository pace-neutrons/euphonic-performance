+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> castep                                        1           1    131.05s  |
|    /                                                                        |
|   o-> memory_system_initialise                    1           1      0.00s  |
|   o-> comms_gcopy_real                            1           1      0.00s  |
|   o-> cell_read_wrapped                           1           1      8.71s  |
|   o-> ion_read                                    1           1      0.00s  |
|   o-> parameters_read                             1           1      0.01s  |
|   o-> bib_add                                     4           4      0.00s  |
|   o-> tddft_set_tddft_on                          1           1      0.00s  |
|   o-> multigrid_dlmg_initialise                   1           1      0.00s  |
|   o-> implicit_solvent_autosolv_check             1           1      0.00s  |
|   o-> model_continuation                          1           1      9.27s  |
|   o-> ion_ion_initialise                          1           1      0.00s  |
|   o-> openbc_locps_initialise                     1           1      0.00s  |
|   o-> nlxc_initialise                             1           1      0.00s  |
|   o-> parameters_output                           1           1      0.00s  |
|   o-> cell_output_wrapped                         1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> phonon_calculate                            1           1    112.89s  |
|   o-> check_forces_stresses                       1           1      0.00s  |
|   o-> model_write                                 1           1      0.15s  |
|   o-> bib_output                                  1           1      0.00s  |
|   o-> ion_ion_exit                                1           1      0.00s  |
|   o-> multigrid_dlmg_exit                         1           1      0.00s  |
|   o-> model_deallocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    112.89s  |
|    /                                                                        |
|   o-> phonon_initialise                           1           1      0.00s  |
|   o-> secondd_symmetry_init                       1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
|   o-> bib_add                                     3           3      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> cell_rationalise_coordinates                1           1      0.00s  |
|   o-> secondd_compare_kpoints                     1           1      0.00s  |
|   o-> phonon_write_header                         2           2      0.00s  |
|   o-> phonon_calculate_dynamical_dfpt             1           1      0.00s  |
|   o-> phonon_recip_to_real                        1           1      0.34s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> q_is_a_g                                   17          17      0.00s  |
|   o-> cell_supercell                              1           1      0.17s  |
|   o-> phonon_real_to_fine                      3572        3572    106.12s  |
|   o-> phonon_enforce_dmat_sumrule              3571        3571      3.50s  |
|   o-> phonon_prepare_and_diagonalise           3571        3571      1.11s  |
|   o-> phonon_accumulate_adp                    3571        3571      0.06s  |
|   o-> comms_send_complex                       3571        3571      1.43s  |
|   o-> comms_send_real                          7142        7142      0.02s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.02s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3572                         |
|  /                                                                          |
| O-> phonon_real_to_fine                        3572        3572    106.12s  |
|    /                                                                        |
|   o-> cell_num_supercells                      3572        3572      0.01s  |
|   o-> check_image_list                         3572        3572      0.04s  |
|   o-> secondd_symmetrize_dmat_cmplx            3572        3572      0.59s  |
|   o-> secondd_symmetrize_born_charges          3572        3572      0.34s  |
|   o-> ewald_calc_E2_dipole_dipole              3572        3572    103.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                       17                         |
|  /o-- phonon_real_to_fine                      3572                         |
| |/                                                                          |
| O-> ewald_calc_E2_dipole_dipole                3589        3589    103.11s  |
|    /                                                                        |
|   o-> comms_reduce_kp_logical                    34          34      0.00s  |
|   o-> comms_reduce_bnd_logical                   34          34      0.00s  |
|   o-> comms_reduce_gv_logical                    34          34      0.01s  |
|   o-> ewald_calculate_num_cells                   1           1      0.00s  |
|   o-> ewald_init_lookup                           1           1      0.00s  |
|   o-> algor_invert_real                        3589        3589      0.01s  |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
|   o-> comms_reduce_gv_complex                    34          34      0.00s  |
|   o-> comms_reduce_bnd_complex                   34          34      0.00s  |
|   o-> comms_reduce_kp_complex                    34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          64                         |
|  /o-- cell_generate_qpoints_local                 4                         |
|  /o-- ion_atom_inquire_recpot                    10                         |
|  /o-- parameters_read                             3                         |
|  /o-- parameters_bcast                          161                         |
|  /o-- parameters_reallocate_xc                   20                         |
|  /o-- cell_restore_cell                          40                         |
|  /o-- cell_restore_global_wrapped                72                         |
|  /o-- ion_atom_read_recpot                       14                         |
|  /o-- cell_reread                                60                         |
|  /o-- model_continuation                          6                         |
|  /o-- parameters_reread                           2                         |
|  /o-- ewald_calculate_num_cells                   6                         |
| |/                                                                          |
| O-> comms_gcopy_integer                         462         462      9.48s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      9.27s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.01s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   5           5      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> ion_initialise                              1           1      0.86s  |
|   o-> basis_initialise                            2           2      0.04s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> cell_reread                                 1           1      8.25s  |
|   o-> comms_gcopy_real                            9           9      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> wave_initialise_wv                          1           1      0.08s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       9           9      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> model_check_dependencies                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           1      8.71s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        64          64      8.71s  |
|   o-> cell_allocate                               1           1      0.00s  |
|   o-> comms_gcopy_logical                        11          11      0.00s  |
|   o-> comms_gcopy_real                           80          80      0.00s  |
|   o-> comms_gcopy_character                      14          14      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> cell_reread                                   1           1      8.25s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        60          60      0.76s  |
|   o-> comms_gcopy_real                           76          76      7.49s  |
|   o-> comms_gcopy_character                      14          14      0.00s  |
|   o-> comms_gcopy_logical                        10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /o-- cell_read_wrapped                          80                         |
|  /o-- cell_generate_qpoints_local                 6                         |
|  /o-- ion_atom_inquire_recpot                     2                         |
|  /o-- parameters_bcast                          212                         |
|  /o-- cell_restore_cell                          28                         |
|  /o-- cell_restore_global_wrapped               106                         |
|  /o-- ion_atom_read_recpot                       36                         |
|  /o-- cell_reread                                76                         |
|  /o-- model_continuation                          9                         |
|  /o-- ewald_calculate_num_cells                   5                         |
| |/                                                                          |
| O-> comms_gcopy_real                            561         561      7.51s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3571                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule                3571        3571      3.50s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                  7142        7142      0.03s  |
|   o-> phonon_diagonalise_d_cmplx              10713       10713      1.14s  |
|   o-> secondd_find_acoustics                   3571        3571      0.18s  |
|   o-> secondd_symmetrize_dmat_cmplx            3571        3571      1.78s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /o-- phonon_real_to_fine                      3572                         |
|  /o-- phonon_enforce_dmat_sumrule              3571                         |
|  /o-- phonon_prepare_and_diagonalise           3571                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx             10814       10814      2.94s  |
|    /                                                                        |
|   o-> two_q_is_a_g                            10814       10814      0.03s  |
|   o-> hermitian4                              10814       10814      0.05s  |
|   o-> cell_copy_symmetry                      21628       21628      0.10s  |
|   o-> cell_reduce_symmetry_ops_wrapped        10814       10814      0.34s  |
|   o-> secondd_group_symmetrize_dmat           10814       10814      1.79s  |
|   o-> cell_deallocate                         10814       10814      0.04s  |
|   o-> secondd_find_inversion                  10814       10814      0.04s  |
|   o-> secondd_tr_symmetrize_dmat               3624        3624      0.20s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat             10814       10814      1.79s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      10814       10814      0.04s  |
|   o-> secondd_check_equiv_ions                10814       10814      0.06s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      39526       39526      1.30s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             10713                         |
|  /o-- phonon_prepare_and_diagonalise           3571                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                14284       14284      1.46s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat            100                         |
|  /o-- secondd_group_symmetrize_dmat           39526                         |
|  /o-- secondd_tr_symmetrize_dmat               3624                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion        43250       43250      1.44s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases             43250       43250      0.64s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3571                         |
|  /                                                                          |
| O-> comms_send_complex                         3571        3571      1.43s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3571                         |
|  /                                                                          |
| O-> phonon_prepare_and_diagonalise             3571        3571      1.11s  |
|    /                                                                        |
|   o-> q_is_a_g                                 7142        7142      0.02s  |
|   o-> secondd_symmetrize_dmat_cmplx            3571        3571      0.55s  |
|   o-> phonon_constrain_dmat                    3571        3571      0.01s  |
|   o-> phonon_mass_weight_dmat                  3571        3571      0.02s  |
|   o-> phonon_diagonalise_d_cmplx               3571        3571      0.32s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> ion_initialise                                1           1      0.86s  |
|    /                                                                        |
|   o-> ion_allocate                                1           1      0.00s  |
|   o-> ion_atom_allocate_pspot                     4           4      0.00s  |
|   o-> ion_atom_read_recpot                        2           2      0.01s  |
|   o-> ion_set_data                                2           2      0.00s  |
|   o-> ion_atom_deallocate_pspot                   5           5      0.00s  |
|   o-> ion_set_psp                                 2           2      0.00s  |
|   o-> ion_atom_pseudo_scf                         2           2      0.84s  |
|   o-> ion_clebsch_gordan                          1           1      0.00s  |
|   o-> ion_atom_radial_transform                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              2                         |
|  /                                                                          |
| O-> ion_atom_pseudo_scf                           2           2      0.84s  |
|    /                                                                        |
|   o-> ion_atom_init_pseudo_basis                  2           2      0.02s  |
|   o-> ion_atom_init_pseudo_atom                   2           2      0.04s  |
|   o-> ion_atom_init_pseudo_H                      2           2      0.00s  |
|   o-> ion_atom_ps_diag                           63          63      0.71s  |
|   o-> ion_atom_set_pseudo_H                      63          63      0.01s  |
|   o-> ion_atom_regin                           4002        4002      0.01s  |
|   o-> ion_atom_basis_pseudo_dealloc               2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                        63                         |
|  /                                                                          |
| O-> ion_atom_ps_diag                             63          63      0.71s  |
|    /                                                                        |
|   o-> ion_atom_regin                          90972       90972      0.32s  |
|   o-> ion_atom_rectoreal                        126         126      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion      43250                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases               43250       43250      0.64s  |
|    /                                                                        |
|   o-> q_is_a_g                                28822       28822      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped          10814       10814      0.34s  |
|    /                                                                        |
|   o-> cell_check_group                        10814       10814      0.24s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      0.34s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      0.17s  |
|   o-> cell_map_kpoint_subset                      1           1      0.00s  |
|   o-> secondd_symmetrize_born_charges             1           1      0.00s  |
|   o-> ewald_calc_E2_dipole_dipole                17          17      0.09s  |
|   o-> cell_find_kpoint_transform_kpoints        100         100      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat            100         100      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx             100         100      0.02s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_real_to_fine                      3572                         |
| |/                                                                          |
| O-> secondd_symmetrize_born_charges            3573        3573      0.34s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 3573        3573      0.15s  |
|   o-> secondd_apply_symmetry_to_born          21438       21438      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2      0.33s  |
|    /                                                                        |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_recip_lattice                          2           2      0.00s  |
|   o-> cell_calculate_volume                       2           2      0.00s  |
|   o-> cell_generate_supercell_origins             2           2      0.00s  |
|   o-> cell_set_supercell_symmetry                 2           2      0.16s  |
|   o-> cell_copy_kpoints                           2           2      0.00s  |
|   o-> cell_kpoints_spacing_wrapped                2           2      0.07s  |
|   o-> cell_generate_cell_constraints              2           2      0.00s  |
|   o-> cell_generate_ionic_constraints             2           2      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_basis                296                         |
|  /o-- ion_atom_init_pseudo_H                     12                         |
|  /o-- ion_atom_pseudo_hartree                    65                         |
|  /o-- ion_atom_pseudo_xc                         65                         |
|  /o-- ion_atom_ps_diag                        90972                         |
|  /o-- ion_atom_calc_pseudo_rho                   63                         |
|  /o-- ion_atom_set_pseudo_H                     326                         |
|  /o-- ion_atom_pseudo_scf                      4002                         |
| |/                                                                          |
| O-> ion_atom_regin                            95801       95801      0.33s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_symmetry_ops_wrapped        10814                         |
|  /                                                                          |
| O-> cell_check_group                          10814       10814      0.24s  |
|    /                                                                        |
|   o-> algor_invert_real                       28712       28712      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges          3573                         |
|  /o-- secondd_apply_symmetry_to_dmat            100                         |
|  /o-- secondd_group_symmetrize_dmat           10814                         |
|  /o-- secondd_tr_symmetrize_dmat               3624                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  18111       18111      0.23s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions             25718       25718      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            3624                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                 3624        3624      0.20s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 3624        3624      0.01s  |
|   o-> secondd_apply_symmetry_to_dmat_ion       3624        3624      0.14s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              3571                         |
|  /                                                                          |
| O-> secondd_find_acoustics                     3571        3571      0.18s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_set_supercell_symmetry                   2           2      0.16s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_reduce_symmetry_supercell              2           2      0.01s  |
|   o-> cell_find_related_atoms_supercell           2           2      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_write                                   1           1      0.15s  |
|    /                                                                        |
|   o-> model_write_all                             1           1      0.00s  |
|   o-> comms_barrier_farm                          1           1      0.00s  |
|   o-> comms_barrier                               1           1      0.15s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier                                 1           1      0.15s  |
+-----------------------------------------------------------------------------+
|   o-- cell_find_reduced_cell                   1212                         |
|  /o-- cell_sort_kpoints_with_recip             2422                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- ewald_calc_E2_dipole_dipole              3589                         |
|  /o-- cell_find_kpoint_transform_kpoints        100                         |
|  /o-- cell_check_group                        28712                         |
| |/                                                                          |
| O-> algor_invert_real                         36041       36041      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            27                         |
|  /o-- secondd_compute_atom_phases             28822                         |
|  /o-- phonon_calculate                           17                         |
|  /o-- phonon_prepare_and_diagonalise           7142                         |
| |/                                                                          |
| O-> q_is_a_g                                  36008       36008      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           21628                         |
|  /                                                                          |
| O-> cell_copy_symmetry                        21628       21628      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges         21438                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_born            21438       21438      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_ionic_constraints               2           2      0.10s  |
|    /                                                                        |
|   o-> algor_uniform_random                     7200        7200      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_initialise_wv                            1           1      0.08s  |
|     +- section "initialisation", branch on value of method:-                |
|       R                                           1           1      0.08s  |
|         \                                                                   |
|          o-> wave_spin_type_wv                    1           1      0.00s  |
|          o-> wave_prepare_init_wvfn               1           1      0.00s  |
|          o-> algor_set_random_seed                1           1      0.00s  |
|          o-> algor_uniform_random_array         168         168      0.00s  |
|          o-> wave_Sorthonormalise_wv              1           1      0.08s  |
|    /                                                                        |
|   o-> ion_set_projectors                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions                25718                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions               25718       25718      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv                       1           1      0.08s  |
|    /                                                                        |
|   o-> wave_Sorthonormalise_wv_ks                  7           7      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv                     7                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv_ks                    7           7      0.08s  |
|    /                                                                        |
|   o-> wave_calc_Soverlap_wv_ks                    7           7      0.07s  |
|   o-> wave_orthonormalise_over_wv_ks              7           7      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                  7                         |
|  /                                                                          |
| O-> wave_calc_Soverlap_wv_ks                      7           7      0.07s  |
|    /                                                                        |
|   o-> coeffs_dot_all_self                         7           7      0.00s  |
|   o-> wave_beta_phi_wv_ks                         7           7      0.06s  |
|   o-> wave_q_dot_all_self_c                       7           7      0.00s  |
|   o-> comms_reduce_gv_complex                     7           7      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      0.07s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- cell_unfold_kpoints_arg_trace               1                         |
|  /o-- cell_generate_MP_set_wrapped                2                         |
| |/                                                                          |
| O-> cell_reduce_kpoints_internal                  3           3      0.07s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       3           3      0.00s  |
|   o-> cell_sort_kpoints_with_recip             1204        1204      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_spacing_wrapped                2                         |
|  /                                                                          |
| O-> cell_generate_MP_set_wrapped                  2           2      0.07s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_reduce_kpoints_internal                2           2      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal             1204                         |
|  /o-- cell_map_kpoint_subset                      7                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip               1211        1211      0.07s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                   1211        1211      0.01s  |
|   o-> algor_invert_real                        2422        2422      0.01s  |
|   o-> algor_sort                               1211        1211      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3571                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                      3571        3571      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    7                         |
|  /                                                                          |
| O-> wave_beta_phi_wv_ks                           7           7      0.06s  |
|    /                                                                        |
|   o-> ion_set_projectors                          7           7      0.00s  |
|   o-> wave_calc_ps_q_nonzero                      7           7      0.00s  |
|   o-> ion_all_beta_multi_phi_recip                7           7      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                         7                         |
|  /                                                                          |
| O-> ion_all_beta_multi_phi_recip                  7           7      0.06s  |
|    /                                                                        |
|   o-> ion_beta_recip_set                          7           7      0.03s  |
|   o-> algor_matmul_cmplx_cmplx                    7           7      0.00s  |
|   o-> comms_reduce_gv_complex                     7           7      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> hermitian4                                10814       10814      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              7142                         |
|  /o-- phonon_prepare_and_diagonalise           3571                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                   10713       10713      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         2                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_atom                     2           2      0.04s  |
|    /                                                                        |
|   o-> ion_atom_resolve_pseudo_cfg                 2           2      0.00s  |
|   o-> ion_atom_set_pseudo_occ                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.04s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_distribute_grids                      1           1      0.04s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.00s  |
|   o-> basis_count_plane_waves                     1           1      0.00s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               7                         |
|  /o-- model_reset                                 8                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              2                         |
|  /o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_deallocate                           10836       10836      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_complex                    48                         |
|  /o-- comms_reduce_bnd_complex                   41                         |
|  /o-- comms_reduce_kp_complex                    34                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                  123         123      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> secondd_find_inversion                    10814       10814      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.04s  |
|    /                                                                        |
|   o-> basis_utils_sort_columns                    1           1      0.00s  |
|   o-> comms_gather_gv_integer                    12          12      0.00s  |
|   o-> comms_map_transpose                         2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                7                         |
|  /o-- wave_calc_Soverlap_wv_ks                    7                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
| |/                                                                          |
| O-> comms_reduce_gv_complex                      48          48      0.04s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 48          48      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           10814                         |
|  /                                                                          |
| O-> cell_factor_group_symmetry_wrapped        10814       10814      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      3572                         |
|  /                                                                          |
| O-> check_image_list                           3572        3572      0.04s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped          900         900      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> two_q_is_a_g                              10814       10814      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                7                         |
|  /                                                                          |
| O-> ion_beta_recip_set                            7           7      0.03s  |
|    /                                                                        |
|   o-> ion_set_projectors                          7           7      0.00s  |
|   o-> ion_cc_structure_factor                    63          63      0.00s  |
|   o-> ion_beta_recip_interpolation              315         315      0.01s  |
|   o-> basis_multiply_recip_reduced              315         315      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          7200                         |
|  /                                                                          |
| O-> algor_uniform_random                       7200        7200      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         7142                         |
|  /                                                                          |
| O-> comms_send_real                            7142        7142      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      2                         |
|  /                                                                          |
| O-> comms_map_transpose                           2           2      0.02s  |
|    /                                                                        |
|   o-> comms_map_transpose_n                       2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose                         2                         |
|  /                                                                          |
| O-> comms_map_transpose_n                         2           2      0.02s  |
|    /                                                                        |
|   o-> comms_local_map                             2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose_n                       2                         |
|  /                                                                          |
| O-> comms_local_map                               2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        3                         |
|  /o-- comms_reduce_bnd_real                       5                         |
|  /o-- comms_reduce_kp_real                        3                         |
| |/                                                                          |
| O-> comms_reduce_array_real                      11          11      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          5           5      0.02s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         2                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_basis                    2           2      0.02s  |
|    /                                                                        |
|   o-> ion_atom_find_root                       1068        1068      0.01s  |
|   o-> ion_atom_regin                            296         296      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip             1211                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                     1212        1212      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                        1212        1212      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           3571                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                      3571        3571      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- phonon_real_to_fine                      3572                         |
| |/                                                                          |
| O-> cell_num_supercells                        3581        3581      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                        315                         |
|  /                                                                          |
| O-> ion_beta_recip_interpolation                315         315      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> parameters_read                               1           1      0.01s  |
|    /                                                                        |
|   o-> parameters_keywords_setup                   1           1      0.00s  |
|   o-> comms_gcopy_integer                         3           3      0.01s  |
|   o-> parameters_bcast                            1           1      0.00s  |
|   o-> algor_set_random_seed                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> cell_restore_wrapped                          2           2      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_character                       2           2      0.00s  |
|   o-> cell_restore_cell                           2           2      0.00s  |
|   o-> cell_restore_global_wrapped                 2           2      0.00s  |
|   o-> cell_analyse_symmetry_wrapped               2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              2                         |
|  /                                                                          |
| O-> ion_atom_read_recpot                          2           2      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_real                           36          36      0.01s  |
|   o-> comms_gcopy_integer                        14          14      0.00s  |
|   o-> comms_gcopy_logical                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_dmat              100         100      0.01s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                  100         100      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat_ion        100         100      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_set_projectors                         15                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_gv_logical                      50          50      0.01s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                        63                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_H                        63          63      0.01s  |
|    /                                                                        |
|   o-> ion_atom_calc_pseudo_rho                   63          63      0.00s  |
|   o-> ion_atom_pseudo_hartree                    63          63      0.00s  |
|   o-> ion_atom_pseudo_xc                         63          63      0.00s  |
|   o-> ion_atom_regin                            326         326      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_restore                          1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_bcast                              3           3      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                       141         141      0.00s  |
|   o-> comms_gcopy_character                     213         213      0.00s  |
|   o-> comms_gcopy_integer                       161         161      0.00s  |
|   o-> parameters_reallocate_xc                   20          20      0.00s  |
|   o-> comms_gcopy_real                          212         212      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          11                         |
|  /o-- cell_generate_qpoints_local                 2                         |
|  /o-- parameters_bcast                          141                         |
|  /o-- model_continuation                          4                         |
|  /o-- cell_restore_cell                           6                         |
|  /o-- cell_restore_global_wrapped                12                         |
|  /o-- ion_atom_read_recpot                        2                         |
|  /o-- cell_reread                                10                         |
|  /o-- parameters_reread                           1                         |
|  /o-- phonon_initialise                           1                         |
|  /o-- ewald_calculate_num_cells                   3                         |
|  /o-- secondd_detect_symmetry_changed             1                         |
|  /o-- secondd_detect_kpoints_changed              1                         |
| |/                                                                          |
| O-> comms_gcopy_logical                         195         195      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                  7                         |
|  /                                                                          |
| O-> wave_orthonormalise_over_wv_ks                7           7      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_complex                    7           7      0.00s  |
|   o-> algor_invert_complex                        7           7      0.00s  |
|   o-> comms_copy_gv_complex                       7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_basis               1068                         |
|  /                                                                          |
| O-> ion_atom_find_root                         1068        1068      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                7                         |
|  /                                                                          |
| O-> algor_matmul_cmplx_cmplx                      7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    7                         |
|  /                                                                          |
| O-> coeffs_dot_all_self                           7           7      0.00s  |
|    /                                                                        |
|   o-> local_dot_all_self                          7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- coeffs_dot_all_self                         7                         |
|  /                                                                          |
| O-> local_dot_all_self                            7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip             1211                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                 1213        1213      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_kp_complex                      34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_restore_global_wrapped                   2           2      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_character                     198         198      0.00s  |
|   o-> comms_gcopy_integer                        72          72      0.00s  |
|   o-> comms_gcopy_real                          106         106      0.00s  |
|   o-> cell_detect_MP                              4           4      0.00s  |
|   o-> comms_gcopy_logical                        12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- model_deallocate                            1                         |
| |/                                                                          |
| O-> model_reset                                   2           2      0.00s  |
|    /                                                                        |
|   o-> cell_deallocate                             8           8      0.00s  |
|   o-> wave_deallocate_wv                          2           2      0.00s  |
|   o-> density_deallocate                          2           2      0.00s  |
|   o-> dielectric_permittivity_deallocate          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_prepare_init_wvfn                      1                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                      40          40      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_read                                      1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_inquire_recpot                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.00s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_parallel                       1           1      0.00s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_parallel                         1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> bib_output                                    1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_farm_logical                   1           1      0.00s  |
|   o-> comms_reduce_bnd_logical                    1           1      0.00s  |
|   o-> comms_reduce_gv_logical                     1           1      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                          900                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            900         900      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      4                         |
|  /o-- phonon_calculate                            3                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
|  /o-- cell_generate_MP_set_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                      11          11      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          14                         |
|  /o-- parameters_bcast                          213                         |
|  /o-- cell_restore_wrapped                        2                         |
|  /o-- cell_restore_cell                           8                         |
|  /o-- cell_restore_global_wrapped               198                         |
|  /o-- cell_reread                                14                         |
|  /o-- model_continuation                          9                         |
|  /o-- phonon_initialise                           1                         |
|  /o-- ewald_calculate_num_cells                   1                         |
| |/                                                                          |
| O-> comms_gcopy_character                       460         460      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          5                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                     9           9      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> nlxc_initialise                               1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.00s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_read                                    2                         |
|  /                                                                          |
| O-> ion_atom_inquire_recpot                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        10          10      0.00s  |
|   o-> comms_gcopy_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              2                         |
|  /                                                                          |
| O-> ion_set_data                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                        315                         |
|  /                                                                          |
| O-> basis_multiply_recip_reduced                315         315      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                         63                         |
|  /                                                                          |
| O-> ion_cc_structure_factor                      63          63      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_finalise                              1           1      0.00s  |
|    /                                                                        |
|   o-> raman_finalise                              1           1      0.00s  |
|   o-> secondd_deallocate_wvfns                    1           1      0.00s  |
|   o-> secondd_detect_symmetry_changed             1           1      0.00s  |
|   o-> secondd_detect_kpoints_changed              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_gv_real                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      2                         |
|  /o-- ion_atom_set_pseudo_H                      63                         |
| |/                                                                          |
| O-> ion_atom_pseudo_xc                           65          65      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             65          65      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_symmetry_init                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         2                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_H                        2           2      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             12          12      0.00s  |
|   o-> ion_atom_pseudo_hartree                     2           2      0.00s  |
|   o-> ion_atom_pseudo_xc                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    7                         |
|  /                                                                          |
| O-> wave_q_dot_all_self_c                         7           7      0.00s  |
|    /                                                                        |
|   o-> local_q_dot_all_self_c                      7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          100         100      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         100         100      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- nlxc_initialise                             1                         |
| |/                                                                          |
| O-> cell_generate_qpoints_local                   2           2      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       2           2      0.00s  |
|   o-> cell_detect_MP                              2           2      0.00s  |
|   o-> comms_gcopy_real                            6           6      0.00s  |
|   o-> comms_gcopy_integer                         4           4      0.00s  |
|   o-> comms_gcopy_logical                         2           2      0.00s  |
|   o-> cell_unfold_kpoints_arg_trace               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              4                         |
|  /                                                                          |
| O-> ion_atom_allocate_pspot                       4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                        168                         |
|  /o-- cell_generate_cell_constraints              2                         |
| |/                                                                          |
| O-> algor_uniform_random_array                  170         170      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_restore_cell                             2           2      0.00s  |
|    /                                                                        |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> comms_gcopy_real                           28          28      0.00s  |
|   o-> comms_gcopy_integer                        40          40      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> comms_gcopy_logical                         6           6      0.00s  |
|   o-> comms_gcopy_character                       8           8      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /o-- wave_beta_phi_wv_ks                         7                         |
|  /o-- ion_beta_recip_set                          7                         |
| |/                                                                          |
| O-> ion_set_projectors                           15          15      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_logical                    15          15      0.00s  |
|   o-> comms_reduce_gv_integer                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_pseudo_H                      63                         |
|  /                                                                          |
| O-> ion_atom_calc_pseudo_rho                     63          63      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             63          63      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      2                         |
|  /o-- ion_atom_set_pseudo_H                      63                         |
| |/                                                                          |
| O-> ion_atom_pseudo_hartree                      65          65      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             65          65      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_diag                          126                         |
|  /                                                                          |
| O-> ion_atom_rectoreal                          126         126      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_parallel_strategy                       1           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               1           1      0.00s  |
|   o-> assign_nodes                                1           1      0.00s  |
|   o-> reassign_nodes                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /o-- ion_set_projectors                          1                         |
|  /o-- wave_prepare_init_wvfn                     14                         |
| |/                                                                          |
| O-> comms_reduce_gv_integer                      18          18      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_check_dependencies                      1           1      0.00s  |
|    /                                                                        |
|   o-> model_symmetry_unchanged                    1           1      0.00s  |
|   o-> model_ionic_constr_unchanged                1           1      0.00s  |
|   o-> model_cell_constr_unchanged                 1           1      0.00s  |
|   o-> model_pressure_unchanged                    1           1      0.00s  |
|   o-> model_efield_unchanged                      1           1      0.00s  |
|   o-> model_hubbard_u_unchanged                   1           1      0.00s  |
|   o-> model_kpoints_unchanged_2                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              7                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
| |/                                                                          |
| O-> comms_reduce_bnd_complex                     41          41      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 41          41      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip                7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /                                                                          |
| O-> cell_unfold_kpoints_arg_trace                 1           1      0.00s  |
|    /                                                                        |
|   o-> cell_reduce_kpoints_internal                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- model_continuation                          2                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_allocate                                 7           7      0.00s  |
|    /                                                                        |
|   o-> cell_deallocate                             7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_deallocate                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_keywords_setup                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> model_write_all                               1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_dump                             1           1      0.00s  |
|   o-> cell_dump                                   2           2      0.00s  |
|   o-> model_write_occ_eigenvalues                 1           1      0.00s  |
|   o-> density_write                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_symmetry_unchanged                      1           1      0.00s  |
|    /                                                                        |
|   o-> model_compare_matrices                     36          36      0.00s  |
|   o-> model_compare_vectors                       6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              7                         |
|  /                                                                          |
| O-> algor_invert_complex                          7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_calculate_dynamical_dfpt               1           1      0.00s  |
|    /                                                                        |
|   o-> q_is_a_g                                   27          27      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              7                         |
|  /                                                                          |
| O-> comms_copy_gv_complex                         7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                 1                         |
|  /                                                                          |
| O-> ewald_init_lookup                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_allocate                              5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_prepare_init_wvfn                        1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                    14          14      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           20                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     20          20      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        20          20      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_cell_constraints                2           2      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random_array                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> density_write                                 1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> density_write_parallel                      1           1      0.00s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                 1                         |
|  /                                                                          |
| O-> ewald_calculate_num_cells                     1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_real                            5           5      0.00s  |
|   o-> comms_gcopy_logical                         3           3      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_setup_keywords                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                     39          39      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_symmetry_unchanged                   36                         |
|  /                                                                          |
| O-> model_compare_matrices                       36          36      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_copy                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              2                         |
|  /                                                                          |
| O-> ion_set_psp                                   2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- wave_initialise_wv                          1                         |
| |/                                                                          |
| O-> algor_set_random_seed                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_reduce_kpoints_internal                3                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- model_write_occ_eigenvalues                 2                         |
| |/                                                                          |
| O-> comms_reduce_bnd_real                         5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             2                         |
|  /                                                                          |
| O-> cell_dump                                     2           2      0.00s  |
|    /                                                                        |
|   o-> cell_dump_cell                              2           2      0.00s  |
|   o-> cell_dump_global                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> basis_deallocate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /                                                                          |
| O-> comms_gather_gv_integer                      12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               2           2      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                         7                         |
|  /                                                                          |
| O-> wave_calc_ps_q_nonzero                        7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              5                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_initialise                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> model_write_occ_eigenvalues                   1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> ion_finalise                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   2                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_occ                       2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_q_dot_all_self_c                       7                         |
|  /                                                                          |
| O-> local_q_dot_all_self_c                        7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> check_forces_stresses                         1           1      0.00s  |
|    /                                                                        |
|   o-> firstd_output_forces                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_efield_unchanged                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> openbc_locps_initialise                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_pressure_unchanged                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> find_strategy                                 1           1      0.00s  |
|    /                                                                        |
|   o-> best_mixed_strategy                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            6                         |
|  /                                                                          |
| O-> basis_utils_prime_factors                     6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> raman_finalise                                1           1      0.00s  |
|    /                                                                        |
|   o-> raman_empty_cache                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_symmetry_unchanged                    6                         |
|  /                                                                          |
| O-> model_compare_vectors                         6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                            1                         |
|  /                                                                          |
| O-> cell_detect_same_cell                         1           1      0.00s  |
|    /                                                                        |
|   o-> algor_sort                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> cell_distribute_kpoints_wrapped               3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_deallocate                            4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_output_wrapped                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         2                         |
|  /                                                                          |
| O-> ion_atom_basis_pseudo_dealloc                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_hubbard_u_unchanged                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_initialise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_bnd_logical                    1                         |
|  /o-- comms_reduce_gv_logical                     1                         |
|  /o-- comms_reduce_kp_logical                     1                         |
| |/                                                                          |
| O-> comms_lcopy                                   3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_write                               1                         |
|  /                                                                          |
| O-> density_write_parallel                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_cell                                2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_kpoints_unchanged_2                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_recip_lattice                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier_farm                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_global                              2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> parameters_output                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> phonon_require_gs_wvfn                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_calculate_volume                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_exit                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> tddft_set_tddft_on                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- find_strategy                               1                         |
|  /                                                                          |
| O-> best_mixed_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_ionic_constr_unchanged                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   2                         |
|  /                                                                          |
| O-> ion_atom_resolve_pseudo_cfg                   2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_spin_type_wv                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> parameters_dump                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_output                                  1                         |
|  /                                                                          |
| O-> comms_reduce_farm_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_exit                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> assign_nodes                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> memory_system_initialise                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_forces_stresses                       1                         |
|  /                                                                          |
| O-> firstd_output_forces                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> cell_rationalise_coordinates                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> reassign_nodes                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> implicit_solvent_autosolv_check               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_cell_constr_unchanged                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
Class of operation                  Time spent
COMMS                                  18.70s
COMMS_GV                                0.05s
COMMS_KP                                0.03s
COMMS_BND                               0.00s
COMMS_FARM                              0.00s
     242 different subroutines and functions were traced
Hash collisions:        317
  
