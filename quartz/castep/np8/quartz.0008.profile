+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    113.62s  |
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
|   o-> phonon_recip_to_real                        1           1      0.33s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> q_is_a_g                                   17          17      0.00s  |
|   o-> cell_supercell                              1           1      0.16s  |
|   o-> phonon_real_to_fine                      3572        3572    105.57s  |
|   o-> phonon_enforce_dmat_sumrule              3571        3571      3.31s  |
|   o-> phonon_prepare_and_diagonalise           3571        3571      1.11s  |
|   o-> phonon_accumulate_adp                    3571        3571      0.05s  |
|   o-> comms_send_complex                       3571        3571      2.93s  |
|   o-> comms_send_real                          7142        7142      0.03s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.01s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3572                         |
|  /                                                                          |
| O-> phonon_real_to_fine                        3572        3572    105.57s  |
|    /                                                                        |
|   o-> cell_num_supercells                      3572        3572      0.01s  |
|   o-> check_image_list                         3572        3572      0.04s  |
|   o-> secondd_symmetrize_dmat_cmplx            3572        3572      0.56s  |
|   o-> secondd_symmetrize_born_charges          3572        3572      0.34s  |
|   o-> ewald_calc_E2_dipole_dipole              3572        3572    102.50s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                       17                         |
|  /o-- phonon_real_to_fine                      3572                         |
| |/                                                                          |
| O-> ewald_calc_E2_dipole_dipole                3589        3589    102.59s  |
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
|   o-- phonon_calculate                         3571                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule                3571        3571      3.31s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                  7142        7142      0.03s  |
|   o-> phonon_diagonalise_d_cmplx              10713       10713      1.13s  |
|   o-> secondd_find_acoustics                   3571        3571      0.14s  |
|   o-> secondd_symmetrize_dmat_cmplx            3571        3571      1.68s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3571                         |
|  /                                                                          |
| O-> comms_send_complex                         3571        3571      2.93s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /o-- phonon_real_to_fine                      3572                         |
|  /o-- phonon_enforce_dmat_sumrule              3571                         |
|  /o-- phonon_prepare_and_diagonalise           3571                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx             10814       10814      2.81s  |
|    /                                                                        |
|   o-> two_q_is_a_g                            10814       10814      0.03s  |
|   o-> hermitian4                              10814       10814      0.05s  |
|   o-> cell_copy_symmetry                      21628       21628      0.10s  |
|   o-> cell_reduce_symmetry_ops_wrapped        10814       10814      0.35s  |
|   o-> secondd_group_symmetrize_dmat           10814       10814      1.65s  |
|   o-> cell_deallocate                         10814       10814      0.04s  |
|   o-> secondd_find_inversion                  10814       10814      0.04s  |
|   o-> secondd_tr_symmetrize_dmat               3624        3624      0.18s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat             10814       10814      1.65s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      10814       10814      0.04s  |
|   o-> secondd_check_equiv_ions                10814       10814      0.06s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      39526       39526      1.17s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             10713                         |
|  /o-- phonon_prepare_and_diagonalise           3571                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                14284       14284      1.45s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat            100                         |
|  /o-- secondd_group_symmetrize_dmat           39526                         |
|  /o-- secondd_tr_symmetrize_dmat               3624                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion        43250       43250      1.30s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases             43250       43250      0.55s  |
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
|   o-- secondd_apply_symmetry_to_dmat_ion      43250                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases               43250       43250      0.55s  |
|    /                                                                        |
|   o-> q_is_a_g                                28822       28822      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped          10814       10814      0.35s  |
|    /                                                                        |
|   o-> cell_check_group                        10814       10814      0.24s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_real_to_fine                      3572                         |
| |/                                                                          |
| O-> secondd_symmetrize_born_charges            3573        3573      0.34s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 3573        3573      0.15s  |
|   o-> secondd_apply_symmetry_to_born          21438       21438      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      0.33s  |
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
| O-> secondd_tr_symmetrize_dmat                 3624        3624      0.18s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 3624        3624      0.01s  |
|   o-> secondd_apply_symmetry_to_dmat_ion       3624        3624      0.13s  |
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
|   o-- phonon_enforce_dmat_sumrule              3571                         |
|  /                                                                          |
| O-> secondd_find_acoustics                     3571        3571      0.14s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- cell_find_reduced_cell                   1210                         |
|  /o-- cell_sort_kpoints_with_recip             2418                         |
|  /o-- ewald_calc_E2_dipole_dipole              3589                         |
|  /o-- cell_find_kpoint_transform_kpoints        100                         |
|  /o-- cell_check_group                        28712                         |
| |/                                                                          |
| O-> algor_invert_real                         36036       36036      0.11s  |
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
|   o-- secondd_check_equiv_ions                25718                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions               25718       25718      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      0.08s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.01s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   4           4      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> basis_initialise                            2           2      0.06s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> comms_gcopy_real                            9           9      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       9           9      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      0.07s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_spacing_wrapped                2                         |
|  /                                                                          |
| O-> cell_generate_MP_set_wrapped                  2           2      0.07s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_reduce_kpoints_internal                2           2      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_MP_set_wrapped                2                         |
|  /                                                                          |
| O-> cell_reduce_kpoints_internal                  2           2      0.07s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       2           2      0.00s  |
|   o-> cell_sort_kpoints_with_recip             1202        1202      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal             1202                         |
|  /o-- cell_map_kpoint_subset                      7                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip               1209        1209      0.06s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                   1209        1209      0.01s  |
|   o-> algor_invert_real                        2418        2418      0.01s  |
|   o-> algor_sort                               1209        1209      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.06s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_distribute_grids                      1           1      0.05s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.00s  |
|   o-> basis_count_plane_waves                     1           1      0.00s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3571                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                      3571        3571      0.05s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.05s  |
|    /                                                                        |
|   o-> basis_utils_sort_columns                    1           1      0.00s  |
|   o-> comms_gather_gv_integer                    12          12      0.00s  |
|   o-> comms_map_transpose                         2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /                                                                          |
| O-> secondd_find_inversion                    10814       10814      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               9                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              2                         |
|  /o-- secondd_symmetrize_dmat_cmplx           10814                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                           10838       10837      0.04s  |
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
|   o-- phonon_calculate                         7142                         |
|  /                                                                          |
| O-> comms_send_real                            7142        7142      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          7200                         |
|  /                                                                          |
| O-> algor_uniform_random                       7200        7200      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip             1209                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                     1210        1210      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                        1210        1210      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        3                         |
|  /o-- comms_reduce_bnd_real                       3                         |
|  /o-- comms_reduce_kp_real                        3                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       9           9      0.01s  |
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
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          5           5      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      2                         |
|  /                                                                          |
| O-> comms_map_transpose                           2           2      0.01s  |
|    /                                                                        |
|   o-> comms_map_transpose_n                       2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           3571                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                      3571        3571      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose                         2                         |
|  /                                                                          |
| O-> comms_map_transpose_n                         2           2      0.01s  |
|    /                                                                        |
|   o-> comms_local_map                             2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose_n                       2                         |
|  /                                                                          |
| O-> comms_local_map                               2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          64                         |
|  /o-- cell_generate_qpoints_local                 2                         |
|  /o-- parameters_read                             3                         |
|  /o-- parameters_bcast                          161                         |
|  /o-- parameters_reallocate_xc                   20                         |
|  /o-- cell_restore_cell                          40                         |
|  /o-- cell_restore_global_wrapped                72                         |
|  /o-- model_continuation                          6                         |
|  /o-- parameters_reread                           2                         |
|  /o-- ewald_calculate_num_cells                   6                         |
| |/                                                                          |
| O-> comms_gcopy_integer                         376         221      0.01s  |
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
|   o-- comms_reduce_gv_complex                    34                         |
|  /o-- comms_reduce_bnd_complex                   34                         |
|  /o-- comms_reduce_kp_complex                    34                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                  102         102      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_dmat              100         100      0.01s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                  100         100      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat_ion        100         100      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_gv_logical                      34          34      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_kp_complex                      34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.00s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_parallel                       1           1      0.00s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip             1209                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                 1211        1211      0.00s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_initialise                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> ion_initialise                                1           1      0.00s  |
|    /                                                                        |
|   o-> ion_allocate                                1           1      0.00s  |
|   o-> ion_atom_deallocate_pspot                   1           1      0.00s  |
|   o-> ion_clebsch_gordan                          1           1      0.00s  |
|   o-> ion_atom_radial_transform                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_restore                          1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_bcast                              3           2      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                       141          72      0.00s  |
|   o-> comms_gcopy_character                     213         114      0.00s  |
|   o-> comms_gcopy_integer                       161          82      0.00s  |
|   o-> parameters_reallocate_xc                   20          13      0.00s  |
|   o-> comms_gcopy_real                          212         106      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                          900                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            900         900      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_gv_complex                      34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_initialise                            1                         |
|  /o-- model_continuation                          1                         |
| |/                                                                          |
| O-> model_reset                                   2           2      0.00s  |
|    /                                                                        |
|   o-> cell_deallocate                             7           7      0.00s  |
|   o-> wave_deallocate_wv                          2           2      0.00s  |
|   o-> density_deallocate                          2           2      0.00s  |
|   o-> dielectric_permittivity_deallocate          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          80                         |
|  /o-- cell_generate_qpoints_local                 3                         |
|  /o-- parameters_bcast                          212                         |
|  /o-- cell_restore_cell                          28                         |
|  /o-- cell_restore_global_wrapped               106                         |
|  /o-- model_continuation                          9                         |
|  /o-- ewald_calculate_num_cells                   5                         |
| |/                                                                          |
| O-> comms_gcopy_real                            443         254      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- cell_read_wrapped                          11                         |
|  /o-- cell_generate_qpoints_local                 1                         |
|  /o-- parameters_bcast                          141                         |
|  /o-- model_continuation                          4                         |
|  /o-- cell_restore_cell                           6                         |
|  /o-- cell_restore_global_wrapped                12                         |
|  /o-- parameters_reread                           1                         |
|  /o-- phonon_initialise                           1                         |
|  /o-- ewald_calculate_num_cells                   3                         |
|  /o-- secondd_detect_symmetry_changed             1                         |
|  /o-- secondd_detect_kpoints_changed              1                         |
| |/                                                                          |
| O-> comms_gcopy_logical                         183         101      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            3                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
|  /o-- cell_generate_MP_set_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                       7           7      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_generate_symmetry_wrapped                1           1      0.00s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_find_related_atoms                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- cell_read_wrapped                          14                         |
|  /o-- parameters_bcast                          213                         |
|  /o-- cell_restore_wrapped                        2                         |
|  /o-- cell_restore_cell                           8                         |
|  /o-- cell_restore_global_wrapped               198                         |
|  /o-- model_continuation                          9                         |
|  /o-- phonon_initialise                           1                         |
|  /o-- ewald_calculate_num_cells                   1                         |
| |/                                                                          |
| O-> comms_gcopy_character                       447         333      0.00s  |
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
|   o-- model_initialise                            2                         |
|  /o-- model_continuation                          4                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                    10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          100         100      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         100         100      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                 1                         |
|  /                                                                          |
| O-> ewald_init_lookup                             1           1      0.00s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip                7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                5           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          1                         |
| |/                                                                          |
| O-> comms_parallel_strategy                       2           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               2           1      0.00s  |
|   o-> assign_nodes                                2           1      0.00s  |
|   o-> reassign_nodes                              2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_bnd_complex                     34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- model_initialise                            2                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- model_continuation                          2                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_allocate                                 9           8      0.00s  |
|    /                                                                        |
|   o-> cell_deallocate                             9           8      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_calculate_dynamical_dfpt               1           1      0.00s  |
|    /                                                                        |
|   o-> q_is_a_g                                   27          27      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_gv_real                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                      38          38      0.00s  |
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
|   o-- ewald_calc_E2_dipole_dipole                 1                         |
|  /                                                                          |
| O-> ewald_calculate_num_cells                     1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_real                            5           5      0.00s  |
|   o-> comms_gcopy_logical                         3           3      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_cell_constraints                2           2      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random_array                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           20                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     20          13      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        20          13      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                     38          38      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /                                                                          |
| O-> comms_gather_gv_integer                      12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
| |/                                                                          |
| O-> density_allocate                              3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> thermo_calculate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               2           2      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_real                         3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_reduce_kpoints_internal                2                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> raman_finalise                                1           1      0.00s  |
|    /                                                                        |
|   o-> raman_empty_cache                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            6                         |
|  /                                                                          |
| O-> basis_utils_prime_factors                     6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                            1                         |
|  /                                                                          |
| O-> cell_detect_same_cell                         1           1      0.00s  |
|    /                                                                        |
|   o-> algor_sort                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> secondd_symmetry_init                         2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          3                         |
| |/                                                                          |
| O-> cell_distribute_kpoints_wrapped               4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> find_strategy                                 2           1      0.00s  |
|    /                                                                        |
|   o-> best_mixed_strategy                         2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_find_related_atoms                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_detect_primitive                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_cell_constraints              2                         |
|  /                                                                          |
| O-> algor_uniform_random_array                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_recip_lattice                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_calculate_volume                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 1                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> reassign_nodes                                2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- find_strategy                               2                         |
|  /                                                                          |
| O-> best_mixed_strategy                           2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_require_gs_wvfn                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> assign_nodes                                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_rationalise_coordinates                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> phonons                                       1           1      0.00s  |
|    /                                                                        |
|   o-> comms_parallel_strategy                     1           0not profiled |
|   o-> comms_gcopy_character                       1           0not profiled |
|   o-> comms_gcopy_logical                         1           0not profiled |
|   o-> io_delete_file                              1           0not profiled |
|   o-> cell_read_wrapped                           1           0not profiled |
|   o-> cell_distribute_kpoints_wrapped             1           0not profiled |
|   o-> cell_rationalise_coordinates                1           0not profiled |
|   o-> parameters_read                             1           0not profiled |
|   o-> secondd_symmetry_init                       1           0not profiled |
|   o-> model_initialise                            1           1      0.00s  |
|   o-> ion_initialise                              1           1      0.00s  |
|   o-> model_continuation                          1           1      0.08s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.00s  |
|   o-> phonon_calculate                            1           1    113.62s  |
|   o-> thermo_calculate                            1           1      0.00s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           0not profiled |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           0not profiled |
|   o-> comms_gcopy_integer                        64           0not profiled |
|   o-> cell_allocate                               1           0not profiled |
|   o-> comms_gcopy_logical                        11           0not profiled |
|   o-> comms_gcopy_real                           80           0not profiled |
|   o-> comms_gcopy_character                      14           0not profiled |
|   o-> cell_generate_qpoints_local                 1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_keywords_setup                     1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_read                               1           0not profiled |
|    /                                                                        |
|   o-> parameters_keywords_setup                   1           0not profiled |
|   o-> comms_gcopy_integer                         3           0not profiled |
|   o-> parameters_bcast                            1           0not profiled |
|   o-> algor_set_random_seed                       1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_generate_qpoints_local                   1           0not profiled |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           0not profiled |
|   o-> cell_detect_MP                              1           0not profiled |
|   o-> comms_gcopy_real                            3           0not profiled |
|   o-> comms_gcopy_integer                         2           0not profiled |
|   o-> comms_gcopy_logical                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> io_delete_file                                1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> algor_set_random_seed                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_setup_keywords                           1           0not profiled |
+-----------------------------------------------------------------------------+
     162 different subroutines and functions were traced
Hash collisions:          1
