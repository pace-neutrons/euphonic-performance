+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1     73.51s  |
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
|   o-> phonon_recip_to_real                        1           1      0.32s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> q_is_a_g                                   17          17      0.00s  |
|   o-> cell_supercell                              1           1      0.17s  |
|   o-> phonon_real_to_fine                      2274        2274     67.77s  |
|   o-> phonon_enforce_dmat_sumrule              2273        2273      2.16s  |
|   o-> phonon_prepare_and_diagonalise           2273        2273      0.72s  |
|   o-> phonon_accumulate_adp                    2273        2273      0.04s  |
|   o-> comms_send_complex                       2273        2273      2.22s  |
|   o-> comms_send_real                          4546        4546      0.02s  |
|   o-> comms_reduce_gv_real                        1           1      0.02s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.00s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2274                         |
|  /                                                                          |
| O-> phonon_real_to_fine                        2274        2274     67.77s  |
|    /                                                                        |
|   o-> cell_num_supercells                      2274        2274      0.01s  |
|   o-> check_image_list                         2274        2274      0.03s  |
|   o-> secondd_symmetrize_dmat_cmplx            2274        2274      0.35s  |
|   o-> secondd_symmetrize_born_charges          2274        2274      0.22s  |
|   o-> ewald_calc_E2_dipole_dipole              2274        2274     65.51s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                       17                         |
|  /o-- phonon_real_to_fine                      2274                         |
| |/                                                                          |
| O-> ewald_calc_E2_dipole_dipole                2291        2291     65.57s  |
|    /                                                                        |
|   o-> comms_reduce_kp_logical                    34          34      0.00s  |
|   o-> comms_reduce_bnd_logical                   34          34      0.00s  |
|   o-> comms_reduce_gv_logical                    34          34      0.01s  |
|   o-> ewald_calculate_num_cells                   1           1      0.00s  |
|   o-> ewald_init_lookup                           1           1      0.00s  |
|   o-> algor_invert_real                        2291        2291      0.01s  |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
|   o-> comms_reduce_gv_complex                    34          34      0.00s  |
|   o-> comms_reduce_bnd_complex                   34          34      0.00s  |
|   o-> comms_reduce_kp_complex                    34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> comms_send_complex                         2273        2273      2.22s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule                2273        2273      2.16s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                  4546        4546      0.02s  |
|   o-> phonon_diagonalise_d_cmplx               6819        6819      0.75s  |
|   o-> secondd_find_acoustics                   2273        2273      0.09s  |
|   o-> secondd_symmetrize_dmat_cmplx            2273        2273      1.09s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /o-- phonon_real_to_fine                      2274                         |
|  /o-- phonon_enforce_dmat_sumrule              2273                         |
|  /o-- phonon_prepare_and_diagonalise           2273                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx              6920        6920      1.82s  |
|    /                                                                        |
|   o-> two_q_is_a_g                             6920        6920      0.02s  |
|   o-> hermitian4                               6920        6920      0.03s  |
|   o-> cell_copy_symmetry                      13840       13840      0.07s  |
|   o-> cell_reduce_symmetry_ops_wrapped         6920        6920      0.23s  |
|   o-> secondd_group_symmetrize_dmat            6920        6920      1.07s  |
|   o-> cell_deallocate                          6920        6920      0.03s  |
|   o-> secondd_find_inversion                   6920        6920      0.03s  |
|   o-> secondd_tr_symmetrize_dmat               2326        2326      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6920                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat              6920        6920      1.07s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped       6920        6920      0.02s  |
|   o-> secondd_check_equiv_ions                 6920        6920      0.04s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      25248       25248      0.76s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              6819                         |
|  /o-- phonon_prepare_and_diagonalise           2273                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                 9092        9092      0.95s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat            100                         |
|  /o-- secondd_group_symmetrize_dmat           25248                         |
|  /o-- secondd_tr_symmetrize_dmat               2326                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion        27674       27674      0.84s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases             27674       27674      0.35s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> phonon_prepare_and_diagonalise             2273        2273      0.72s  |
|    /                                                                        |
|   o-> q_is_a_g                                 4546        4546      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx            2273        2273      0.36s  |
|   o-> phonon_constrain_dmat                    2273        2273      0.01s  |
|   o-> phonon_mass_weight_dmat                  2273        2273      0.01s  |
|   o-> phonon_diagonalise_d_cmplx               2273        2273      0.20s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion      27674                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases               27674       27674      0.35s  |
|    /                                                                        |
|   o-> q_is_a_g                                18438       18438      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2      0.34s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      0.32s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      0.17s  |
|   o-> cell_map_kpoint_subset                      1           1      0.00s  |
|   o-> secondd_symmetrize_born_charges             1           1      0.00s  |
|   o-> ewald_calc_E2_dipole_dipole                17          17      0.06s  |
|   o-> cell_find_kpoint_transform_kpoints        100         100      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat            100         100      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx             100         100      0.02s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6920                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped           6920        6920      0.23s  |
|    /                                                                        |
|   o-> cell_check_group                         6920        6920      0.16s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_real_to_fine                      2274                         |
| |/                                                                          |
| O-> secondd_symmetrize_born_charges            2275        2275      0.22s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 2275        2275      0.10s  |
|   o-> secondd_apply_symmetry_to_born          13650       13650      0.06s  |
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
|   o-- cell_reduce_symmetry_ops_wrapped         6920                         |
|  /                                                                          |
| O-> cell_check_group                           6920        6920      0.16s  |
|    /                                                                        |
|   o-> algor_invert_real                       18328       18328      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges          2275                         |
|  /o-- secondd_apply_symmetry_to_dmat            100                         |
|  /o-- secondd_group_symmetrize_dmat            6920                         |
|  /o-- secondd_tr_symmetrize_dmat               2326                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  11621       11621      0.15s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions             16632       16632      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            2326                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                 2326        2326      0.12s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 2326        2326      0.01s  |
|   o-> secondd_apply_symmetry_to_dmat_ion       2326        2326      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_ionic_constraints               2           2      0.10s  |
|    /                                                                        |
|   o-> algor_uniform_random                     7200        7200      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              2273                         |
|  /                                                                          |
| O-> secondd_find_acoustics                     2273        2273      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- cell_find_reduced_cell                   1210                         |
|  /o-- cell_sort_kpoints_with_recip             2418                         |
|  /o-- ewald_calc_E2_dipole_dipole              2291                         |
|  /o-- cell_find_kpoint_transform_kpoints        100                         |
|  /o-- cell_check_group                        18328                         |
| |/                                                                          |
| O-> algor_invert_real                         24354       24354      0.08s  |
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
|   o-> cell_sort_kpoints_with_recip             1202        1202      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      0.07s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.01s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   4           4      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> basis_initialise                            2           2      0.05s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> comms_gcopy_real                            9           9      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.01s  |
|   o-> comms_gcopy_character                       9           9      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            27                         |
|  /o-- secondd_compute_atom_phases             18438                         |
|  /o-- phonon_calculate                           17                         |
|  /o-- phonon_prepare_and_diagonalise           4546                         |
| |/                                                                          |
| O-> q_is_a_g                                  23028       23028      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal             1202                         |
|  /o-- cell_map_kpoint_subset                      7                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip               1209        1209      0.07s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                   1209        1209      0.01s  |
|   o-> algor_invert_real                        2418        2418      0.01s  |
|   o-> algor_sort                               1209        1209      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           13840                         |
|  /                                                                          |
| O-> cell_copy_symmetry                        13840       13840      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges         13650                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_born            13650       13650      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions                16632                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions               16632       16632      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.05s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.05s  |
|    /                                                                        |
|   o-> basis_utils_sort_columns                    1           1      0.00s  |
|   o-> comms_gather_gv_integer                    12          12      0.00s  |
|   o-> comms_map_transpose                         2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                      2273        2273      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6920                         |
|  /                                                                          |
| O-> hermitian4                                 6920        6920      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      2274                         |
|  /                                                                          |
| O-> check_image_list                           2274        2274      0.03s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped          900         900      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              4546                         |
|  /o-- phonon_prepare_and_diagonalise           2273                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                    6819        6819      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          7200                         |
|  /                                                                          |
| O-> algor_uniform_random                       7200        7200      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               9                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              2                         |
|  /o-- secondd_symmetrize_dmat_cmplx            6920                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                            6944        6943      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6920                         |
|  /                                                                          |
| O-> secondd_find_inversion                     6920        6920      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat            6920                         |
|  /                                                                          |
| O-> cell_factor_group_symmetry_wrapped         6920        6920      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6920                         |
|  /                                                                          |
| O-> two_q_is_a_g                               6920        6920      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          5           5      0.02s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        3                         |
|  /o-- comms_reduce_bnd_real                       3                         |
|  /o-- comms_reduce_kp_real                        3                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       9           9      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         4546                         |
|  /                                                                          |
| O-> comms_send_real                            4546        4546      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip             1209                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                     1210        1210      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                        1210        1210      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      2                         |
|  /                                                                          |
| O-> comms_map_transpose                           2           2      0.01s  |
|    /                                                                        |
|   o-> comms_map_transpose_n                       2           2      0.01s  |
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
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> cell_restore_wrapped                          2           2      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_character                       2           2      0.00s  |
|   o-> cell_restore_cell                           2           2      0.00s  |
|   o-> cell_restore_global_wrapped                 2           2      0.00s  |
|   o-> cell_analyse_symmetry_wrapped               2           2      0.00s  |
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
|   o-- phonon_prepare_and_diagonalise           2273                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                      2273        2273      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- phonon_real_to_fine                      2274                         |
| |/                                                                          |
| O-> cell_num_supercells                        2283        2283      0.01s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.01s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_parallel                       1           1      0.01s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_gv_logical                      34          34      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_parallel                         1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gather_gv_integer                     3           3      0.00s  |
|   o-> comms_scatter_gv_complex                    1           1      0.00s  |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip             1209                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                 1211        1211      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_scatter_gv_complex                      1           1      0.00s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_initialise                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
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
|   o-- comms_reduce_gv_complex                    34                         |
|  /o-- comms_reduce_bnd_complex                   34                         |
|  /o-- comms_reduce_kp_complex                    34                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                  102         102      0.00s  |
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
|   o-- model_initialise                            2                         |
|  /o-- model_continuation                          4                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                    10          10      0.00s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_generate_symmetry_wrapped                1           1      0.00s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_find_related_atoms                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
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
|   o-- phonon_recip_to_real                      100                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          100         100      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         100         100      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
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
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_kp_complex                      34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             2           2      0.00s  |
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
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip                7           7      0.00s  |
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
|   o-- ewald_calc_E2_dipole_dipole                 1                         |
|  /                                                                          |
| O-> ewald_init_lookup                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                5           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_bnd_complex                     34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
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
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_calculate_dynamical_dfpt               1           1      0.00s  |
|    /                                                                        |
|   o-> q_is_a_g                                   27          27      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /o-- density_read_parallel                       3                         |
| |/                                                                          |
| O-> comms_gather_gv_integer                      15          15      0.00s  |
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
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
| |/                                                                          |
| O-> density_allocate                              3           3      0.00s  |
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
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
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
|   o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_real                         3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
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
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_reduce_kpoints_internal                2                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
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
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
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
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> find_strategy                                 2           1      0.00s  |
|    /                                                                        |
|   o-> best_mixed_strategy                         2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          3                         |
| |/                                                                          |
| O-> cell_distribute_kpoints_wrapped               4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_find_related_atoms                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_cell_constraints              2                         |
|  /                                                                          |
| O-> algor_uniform_random_array                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_calculate_volume                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_recip_lattice                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_detect_primitive                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- find_strategy                               2                         |
|  /                                                                          |
| O-> best_mixed_strategy                           2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 1                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_rationalise_coordinates                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> reassign_nodes                                2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_require_gs_wvfn                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> assign_nodes                                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
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
|   o-> model_continuation                          1           1      0.07s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.00s  |
|   o-> phonon_calculate                            1           1     73.51s  |
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
     163 different subroutines and functions were traced
Hash collisions:          1
