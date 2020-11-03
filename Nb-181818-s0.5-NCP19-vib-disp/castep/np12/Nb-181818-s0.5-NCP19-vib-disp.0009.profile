+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1     85.27s  |
|    /                                                                        |
|   o-> phonon_initialise                           1           1      0.00s  |
|   o-> secondd_symmetry_init                       1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
|   o-> bib_add                                     4           4      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> cell_rationalise_coordinates                1           1      0.00s  |
|   o-> secondd_compare_kpoints                     1           1      0.00s  |
|   o-> phonon_write_header                         2           2      0.00s  |
|   o-> phonon_calculate_dynamical_dfpt             1           1      0.05s  |
|   o-> phonon_recip_to_real                        1           1      7.89s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> q_is_a_g                                   35          35      0.00s  |
|   o-> cell_supercell                              1           1      6.90s  |
|   o-> phonon_real_to_fine                      2274        2274      4.24s  |
|   o-> phonon_enforce_dmat_sumrule              2273        2273      5.21s  |
|   o-> phonon_prepare_and_diagonalise           2273        2273      1.32s  |
|   o-> phonon_accumulate_adp                    2273        2273      0.02s  |
|   o-> comms_send_complex                       2273        2273     20.17s  |
|   o-> comms_send_real                          4546        4546     38.91s  |
|   o-> comms_reduce_gv_real                        1           1      0.05s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.44s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         4546                         |
|  /                                                                          |
| O-> comms_send_real                            4546        4546     38.91s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> comms_send_complex                         2273        2273     20.17s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2     13.82s  |
|    /                                                                        |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_recip_lattice                          2           2      0.00s  |
|   o-> cell_calculate_volume                       2           2      0.00s  |
|   o-> cell_generate_supercell_origins             2           2      0.00s  |
|   o-> cell_set_supercell_symmetry                 2           2      7.67s  |
|   o-> cell_copy_kpoints                           2           2      0.00s  |
|   o-> cell_kpoints_spacing_wrapped                2           2      4.80s  |
|   o-> cell_generate_ionic_constraints             2           2      1.34s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      7.89s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      6.92s  |
|   o-> cell_map_kpoint_subset                      1           1      0.00s  |
|   o-> cell_find_kpoint_transform_kpoints        729         729      0.01s  |
|   o-> secondd_apply_symmetry_to_dmat            729         729      0.02s  |
|   o-> secondd_symmetrize_dmat_cmplx             729         729      0.40s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_set_supercell_symmetry                   2           2      7.67s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_reduce_symmetry_supercell              2           2      0.27s  |
|   o-> cell_find_related_atoms_supercell           2           2      5.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           2308                         |
|  /o-- phonon_recip_to_real                      729                         |
|  /o-- phonon_real_to_fine                      2274                         |
|  /o-- phonon_enforce_dmat_sumrule              2273                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx              7584        7584      7.65s  |
|    /                                                                        |
|   o-> two_q_is_a_g                             7584        7584      0.03s  |
|   o-> hermitian4                               7584        7584      0.03s  |
|   o-> cell_copy_symmetry                      15168       15168      0.10s  |
|   o-> cell_reduce_symmetry_ops_wrapped         7584        7584      2.32s  |
|   o-> secondd_group_symmetrize_dmat            7584        7584      2.86s  |
|   o-> cell_deallocate                          7584        7584      0.03s  |
|   o-> secondd_find_inversion                   7584        7584      0.03s  |
|   o-> secondd_tr_symmetrize_dmat               7584        7584      1.98s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule                2273        2273      5.21s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                  4546        4546      0.02s  |
|   o-> phonon_diagonalise_d_cmplx               6819        6819      0.04s  |
|   o-> secondd_find_acoustics                   2273        2273      0.04s  |
|   o-> secondd_symmetrize_dmat_cmplx            2273        2273      4.93s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      5.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      4.80s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      4.80s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_spacing_wrapped                2                         |
|  /                                                                          |
| O-> cell_generate_MP_set_wrapped                  2           2      4.80s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_reduce_kpoints_internal                2           2      4.80s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_MP_set_wrapped                2                         |
|  /                                                                          |
| O-> cell_reduce_kpoints_internal                  2           2      4.80s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       2           2      0.00s  |
|   o-> cell_sort_kpoints_with_recip            69986       69986      4.51s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal            69986                         |
|  /o-- cell_map_kpoint_subset                     49                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip              70035       70035      4.51s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                  70035       70035      0.76s  |
|   o-> algor_invert_real                      140070      140070      0.49s  |
|   o-> algor_sort                              70035       70035      0.26s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2274                         |
|  /                                                                          |
| O-> phonon_real_to_fine                        2274        2274      4.24s  |
|    /                                                                        |
|   o-> cell_num_supercells                      2274        2274      0.01s  |
|   o-> check_image_list                         2274        2274      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx            2274        2274      1.14s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            7584                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat              7584        7584      2.86s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped       7584        7584      0.09s  |
|   o-> secondd_check_equiv_ions                 7584        7584      0.07s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     123128      123128      2.18s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat          123128                         |
|  /o-- secondd_tr_symmetrize_dmat               7584                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion       131441      131441      2.33s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases            131441      131441      1.40s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            7584                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped           7619        7619      2.33s  |
|    /                                                                        |
|   o-> cell_check_group                         7619        7619      2.21s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_symmetry_ops_wrapped         7619                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_check_group                           7654        7654      2.21s  |
|    /                                                                        |
|   o-> algor_invert_real                      115864      115864      0.39s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            7584                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                 7584        7584      1.98s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 7584        7584      1.76s  |
|   o-> secondd_apply_symmetry_to_dmat_ion       7584        7584      0.14s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat            7584                         |
|  /o-- secondd_tr_symmetrize_dmat               7584                         |
|  /o-- secondd_calc_irreps                        35                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  15932       15932      1.84s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions            261270      261270      0.88s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion     131441                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases              131441      131441      1.40s  |
|    /                                                                        |
|   o-> q_is_a_g                               121969      121969      0.41s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                     35                         |
|  /o-- phonon_calculate                         2273                         |
| |/                                                                          |
| O-> phonon_prepare_and_diagonalise             2308        2308      1.36s  |
|    /                                                                        |
|   o-> q_is_a_g                                 4616        4616      0.02s  |
|   o-> secondd_symmetrize_dmat_cmplx            2308        2308      1.18s  |
|   o-> phonon_constrain_dmat                    2308        2308      0.01s  |
|   o-> phonon_mass_weight_dmat                  2308        2308      0.01s  |
|   o-> phonon_diagonalise_d_cmplx               2308        2308      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_ionic_constraints               2           2      1.34s  |
|    /                                                                        |
|   o-> algor_uniform_random                     4374        4374      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_check_group                       115864                         |
|  /o-- cell_symmetry_symbol_wrapped_wrapped      160                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- cell_find_reduced_cell                  70036                         |
|  /o-- cell_sort_kpoints_with_recip           140070                         |
|  /o-- cell_find_kpoint_transform_kpoints        729                         |
| |/                                                                          |
| O-> algor_invert_real                        326866      326866      1.13s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions               261270                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions              261270      261270      0.88s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70035                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                    70036       70036      0.76s  |
|    /                                                                        |
|   o-> algor_invert_real                       70036       70036      0.25s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       1                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       3           3      0.49s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.44s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.44s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            53                         |
|  /o-- phonon_diag_and_output                     70                         |
|  /o-- phonon_prepare_and_diagonalise           4616                         |
|  /o-- secondd_compute_atom_phases            121969                         |
|  /o-- phonon_calculate                           35                         |
| |/                                                                          |
| O-> q_is_a_g                                 126743      126743      0.43s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.27s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      0.27s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.05s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   4           4      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> basis_initialise                            2           2      0.08s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.13s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       7           7      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70035                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                70037       70037      0.26s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.13s  |
|    /                                                                        |
|   o-> comms_copy_gv_real                          2           2      0.13s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.13s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           15168                         |
|  /o-- secondd_calc_irreps                        70                         |
| |/                                                                          |
| O-> cell_copy_symmetry                        15238       15238      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat            7584                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_factor_group_symmetry_wrapped         7619        7619      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.08s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_distribute_grids                      1           1      0.06s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.00s  |
|   o-> basis_count_plane_waves                     1           1      0.01s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           2308                         |
|  /o-- phonon_enforce_dmat_sumrule              6819                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                 9127        9127      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.06s  |
|    /                                                                        |
|   o-> basis_utils_sort_columns                    1           1      0.00s  |
|   o-> comms_gather_gv_integer                    12          12      0.00s  |
|   o-> comms_map_transpose                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_calculate_dynamical_dfpt               1           1      0.05s  |
|    /                                                                        |
|   o-> q_is_a_g                                   53          53      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
|   o-> phonon_diag_and_output                     35          35      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            35                         |
|  /                                                                          |
| O-> phonon_diag_and_output                       35          35      0.05s  |
|    /                                                                        |
|   o-> q_is_a_g                                   70          70      0.00s  |
|   o-> phonon_prepare_and_diagonalise             35          35      0.04s  |
|   o-> secondd_calc_irreps                        35          35      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> cell_restore_wrapped                          2           2      0.05s  |
|    /                                                                        |
|   o-> comms_gcopy_character                       2           2      0.00s  |
|   o-> cell_restore_cell                           2           2      0.00s  |
|   o-> cell_restore_global_wrapped                 2           2      0.02s  |
|   o-> cell_analyse_symmetry_wrapped               2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          3           3      0.05s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              2273                         |
|  /                                                                          |
| O-> secondd_find_acoustics                     2273        2273      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               9                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- secondd_symmetrize_dmat_cmplx            7584                         |
|  /o-- secondd_calc_irreps                        35                         |
|  /o-- cell_supercell                              2                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                            7643        7642      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            7584                         |
|  /                                                                          |
| O-> secondd_find_inversion                     7584        7584      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            7584                         |
|  /                                                                          |
| O-> hermitian4                                 7584        7584      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            7584                         |
|  /                                                                          |
| O-> two_q_is_a_g                               7584        7584      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_restore_global_wrapped                   2           2      0.02s  |
|    /                                                                        |
|   o-> comms_gcopy_character                     208         208      0.00s  |
|   o-> comms_gcopy_integer                        78          78      0.00s  |
|   o-> comms_gcopy_real                          114         114      0.00s  |
|   o-> cell_detect_MP                              4           4      0.02s  |
|   o-> comms_gcopy_logical                        14          14      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      729                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_dmat              729         729      0.02s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                  729         729      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat_ion        729         729      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           2308                         |
|  /o-- phonon_enforce_dmat_sumrule              4546                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                    6854        6854      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                      2273        2273      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                5           4      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_generate_symmetry_wrapped                1           1      0.02s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_find_related_atoms                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          4374                         |
|  /                                                                          |
| O-> algor_uniform_random                       4374        4374      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      2274                         |
|  /                                                                          |
| O-> check_image_list                           2274        2274      0.01s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped          729         729      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      729                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          729         729      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                         729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                     35                         |
|  /                                                                          |
| O-> secondd_calc_irreps                          35          35      0.01s  |
|    /                                                                        |
|   o-> cell_copy_symmetry                         70          70      0.00s  |
|   o-> cell_reduce_symmetry_ops_wrapped           35          35      0.00s  |
|   o-> cell_check_group                           35          35      0.00s  |
|   o-> cell_factor_group_symmetry_wrapped         35          35      0.00s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped      160         160      0.00s  |
|   o-> secondd_check_equiv_ions                   35          35      0.00s  |
|   o-> cell_deallocate                            35          35      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          64                         |
|  /o-- cell_generate_qpoints_local                 2                         |
|  /o-- parameters_read                             3                         |
|  /o-- parameters_bcast                          161                         |
|  /o-- parameters_reallocate_xc                   21                         |
|  /o-- cell_restore_cell                          40                         |
|  /o-- cell_restore_global_wrapped                78                         |
|  /o-- model_continuation                          6                         |
|  /o-- parameters_reread                           2                         |
| |/                                                                          |
| O-> comms_gcopy_integer                         377         222      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           2308                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                      2308        2308      0.01s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_initialise                              1           1      0.01s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_initialise                            2                         |
|  /o-- model_continuation                          4                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                    10          10      0.00s  |
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
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip               49          49      0.00s  |
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
|   o-> comms_gcopy_logical                       140          71      0.00s  |
|   o-> comms_gcopy_character                     216         117      0.00s  |
|   o-> comms_gcopy_integer                       161          82      0.00s  |
|   o-> parameters_reallocate_xc                   21          14      0.00s  |
|   o-> comms_gcopy_real                          212         106      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          80                         |
|  /o-- cell_generate_qpoints_local                 3                         |
|  /o-- parameters_bcast                          212                         |
|  /o-- cell_restore_cell                          28                         |
|  /o-- cell_restore_global_wrapped               114                         |
|  /o-- model_continuation                          7                         |
| |/                                                                          |
| O-> comms_gcopy_real                            444         255      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      2                         |
|  /                                                                          |
| O-> comms_map_transpose                           2           2      0.00s  |
|    /                                                                        |
|   o-> comms_map_transpose_n                       2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose                         2                         |
|  /                                                                          |
| O-> comms_map_transpose_n                         2           2      0.00s  |
|    /                                                                        |
|   o-> comms_local_map                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- cell_read_wrapped                          11                         |
|  /o-- cell_generate_qpoints_local                 1                         |
|  /o-- parameters_bcast                          140                         |
|  /o-- model_continuation                          4                         |
|  /o-- cell_restore_cell                           6                         |
|  /o-- cell_restore_global_wrapped                14                         |
|  /o-- parameters_reread                           1                         |
|  /o-- phonon_initialise                           1                         |
|  /o-- secondd_detect_symmetry_changed             1                         |
|  /o-- secondd_detect_kpoints_changed              1                         |
| |/                                                                          |
| O-> comms_gcopy_logical                         181          99      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            4                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
|  /o-- cell_generate_MP_set_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                       8           8      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose_n                       2                         |
|  /                                                                          |
| O-> comms_local_map                               2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- cell_read_wrapped                           4                         |
|  /o-- parameters_bcast                          216                         |
|  /o-- cell_restore_wrapped                        2                         |
|  /o-- cell_restore_cell                           4                         |
|  /o-- cell_restore_global_wrapped               208                         |
|  /o-- model_continuation                          7                         |
|  /o-- phonon_initialise                           1                         |
| |/                                                                          |
| O-> comms_gcopy_character                       443         339      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                          729                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                       160                         |
|  /                                                                          |
| O-> cell_symmetry_symbol_wrapped_wrapped        160         160      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         160         160      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_finalise                              1           1      0.00s  |
|    /                                                                        |
|   o-> raman_finalise                              1           1      0.00s  |
|   o-> secondd_deallocate_wvfns                    1           1      0.00s  |
|   o-> secondd_detect_symmetry_changed             1           1      0.00s  |
|   o-> secondd_detect_kpoints_changed              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             2           2      0.00s  |
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
|   o-> comms_gcopy_character                       4           4      0.00s  |
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
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
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
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          14      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          14      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               2           2      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
| |/                                                                          |
| O-> density_allocate                              3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> thermo_calculate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /                                                                          |
| O-> comms_gather_gv_integer                      12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                       4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
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
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          3                         |
| |/                                                                          |
| O-> cell_distribute_kpoints_wrapped               4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_reduce_kpoints_internal                2                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
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
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                      4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                            1                         |
|  /                                                                          |
| O-> cell_detect_same_cell                         1           1      0.00s  |
|    /                                                                        |
|   o-> algor_sort                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_bnd_real                         1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
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
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 1                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_recip_lattice                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_detect_primitive                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_calculate_volume                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- find_strategy                               2                         |
|  /                                                                          |
| O-> best_mixed_strategy                           2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
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
|   o-> model_initialise                            1           1      0.01s  |
|   o-> ion_initialise                              1           1      0.00s  |
|   o-> model_continuation                          1           1      0.27s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.02s  |
|   o-> phonon_calculate                            1           1     85.27s  |
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
|   o-> comms_gcopy_character                       4           0not profiled |
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
     153 different subroutines and functions were traced
Hash collisions:          1
