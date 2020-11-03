+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    367.02s  |
|    /                                                                        |
|   o-> phonon_initialise                           1           1      0.00s  |
|   o-> secondd_symmetry_init                       1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
|   o-> comms_reduce_bnd_logical                    1           1      0.00s  |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> cell_rationalise_coordinates                1           1      0.00s  |
|   o-> secondd_compare_kpoints                     1           1      0.00s  |
|   o-> phonon_write_header                         2           2      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> q_is_a_g                                25010       25010      0.08s  |
|   o-> cell_supercell                              1           1      0.01s  |
|   o-> phonon_real_to_fine                         1           1      0.01s  |
|   o-> comms_recv_complex                      25000       25000      0.55s  |
|   o-> comms_recv_real                         50000       50000      0.35s  |
|   o-> phonon_diag_and_output                  25000       25000    365.48s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.00s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> phonon_diag_and_output                    25000       25000    365.48s  |
|    /                                                                        |
|   o-> q_is_a_g                                50000       50000      0.16s  |
|   o-> phonon_prepare_and_diagonalise          25000       25000     38.03s  |
|   o-> secondd_calc_irreps                     25000       25000     30.49s  |
|   o-> phonon_write                            50000       50000    254.70s  |
|   o-> phonon_print_irreps                     25000       25000     40.64s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  50000                         |
|  /                                                                          |
| O-> phonon_write                              50000       50000    254.70s  |
|    /                                                                        |
|   o-> q_is_a_g                                50000       50000      0.16s  |
|   o-> phonon_write_freqs                      50000       50000     19.90s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25000                         |
|  /                                                                          |
| O-> phonon_print_irreps                       25000       25000     40.64s  |
|    /                                                                        |
|   o-> cell_check_group                        25000       25000     22.77s  |
|   o-> cell_factor_group_symmetry_wrapped      25000       25000      0.79s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped  1200000     1200000     11.27s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25000                         |
|  /                                                                          |
| O-> phonon_prepare_and_diagonalise            25000       25000     38.03s  |
|    /                                                                        |
|   o-> q_is_a_g                                50000       50000      0.15s  |
|   o-> secondd_symmetrize_dmat_cmplx           25000       25000     19.50s  |
|   o-> phonon_constrain_dmat                   25000       25000      0.09s  |
|   o-> phonon_mass_weight_dmat                 25000       25000      0.30s  |
|   o-> phonon_diagonalise_d_cmplx              25000       25000     16.39s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25000                         |
|  /                                                                          |
| O-> secondd_calc_irreps                       25000       25000     30.49s  |
|    /                                                                        |
|   o-> cell_copy_symmetry                      50000       50000      0.46s  |
|   o-> cell_reduce_symmetry_ops_wrapped        25000       25000      0.69s  |
|   o-> cell_check_group                        25000       25000      0.25s  |
|   o-> cell_factor_group_symmetry_wrapped      25000       25000      0.08s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped    50080       50080      0.49s  |
|   o-> secondd_check_equiv_ions                25000       25000      0.29s  |
|   o-> secondd_compute_atom_phases             25040       25040      0.08s  |
|   o-> cell_conjugacy_classes_wrapped          25000       25000      0.28s  |
|   o-> cell_deallocate                         25000       25000      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reduce_symmetry_ops_wrapped        50001                         |
|  /o-- secondd_calc_irreps                     25000                         |
|  /o-- phonon_print_irreps                     25000                         |
| |/                                                                          |
| O-> cell_check_group                         100002      100001     23.55s  |
|    /                                                                        |
|   o-> algor_invert_real                     1275216     1275168      3.88s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_write                            50000                         |
|  /                                                                          |
| O-> phonon_write_freqs                        50000       50000     19.90s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                         1                         |
|  /o-- phonon_prepare_and_diagonalise          25000                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx             25001       25001     19.51s  |
|    /                                                                        |
|   o-> two_q_is_a_g                            25001       25001      0.08s  |
|   o-> hermitian4                              25001       25001      0.26s  |
|   o-> cell_copy_symmetry                      50002       50002      0.42s  |
|   o-> cell_reduce_symmetry_ops_wrapped        25001       25001      0.68s  |
|   o-> secondd_group_symmetrize_dmat           25001       25001      5.73s  |
|   o-> cell_deallocate                         25001       25001      0.10s  |
|   o-> secondd_find_inversion                  25001       25001      0.09s  |
|   o-> secondd_tr_symmetrize_dmat              25001       25001     11.28s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          25000                         |
|  /                                                                          |
| O-> phonon_diagonalise_d_cmplx                25000       25000     16.39s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                     50080                         |
|  /o-- phonon_print_irreps                   1200000                         |
| |/                                                                          |
| O-> cell_symmetry_symbol_wrapped_wrapped    1250080     1250080     11.77s  |
|    /                                                                        |
|   o-> algor_invert_real                     1250080     1250080      3.80s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25001                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                25001       25001     11.28s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                25001       25001      8.18s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      25001       25001      2.59s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           25001                         |
|  /o-- secondd_tr_symmetrize_dmat              25001                         |
|  /o-- secondd_calc_irreps                     25000                         |
|  /o-- secondd_symmetrize_born_charges             1                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  75003       75003      8.57s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions           1225257     1225257      4.05s  |
+-----------------------------------------------------------------------------+
|   o-- cell_find_reduced_cell                    148                         |
|  /o-- cell_sort_kpoints_with_recip              294                         |
|  /o-- cell_check_group                      1275216                         |
|  /o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- cell_symmetry_symbol_wrapped_wrapped  1250080                         |
| |/                                                                          |
| O-> algor_invert_real                       2525742     2525253      7.68s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           50089                         |
|  /o-- secondd_tr_symmetrize_dmat              25001                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion        75090       75090      6.39s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases             75090       75090      0.95s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25001                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat             25001       25001      5.73s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      25001       25001      0.09s  |
|   o-> secondd_check_equiv_ions                25001       25001      0.10s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      50089       50089      3.80s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions              1225257                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions             1225257     1225257      4.05s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25001                         |
|  /o-- secondd_calc_irreps                     25000                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped          50001       50001      1.37s  |
|    /                                                                        |
|   o-> cell_check_group                        50001       50001      0.53s  |
+-----------------------------------------------------------------------------+
|   o-- cell_count_symmetry_translations_wrap       1                         |
|  /o-- secondd_group_symmetrize_dmat           25001                         |
|  /o-- secondd_calc_irreps                     25000                         |
|  /o-- cell_conjugacy_classes_wrapped          25000                         |
|  /o-- phonon_print_irreps                     25000                         |
| |/                                                                          |
| O-> cell_factor_group_symmetry_wrapped       100002      100001      1.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion      75090                         |
|  /o-- secondd_calc_irreps                     25040                         |
| |/                                                                          |
| O-> secondd_compute_atom_phases              100130      100130      1.03s  |
|    /                                                                        |
|   o-> q_is_a_g                                25250       25250      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           50002                         |
|  /o-- secondd_calc_irreps                     50000                         |
| |/                                                                          |
| O-> cell_copy_symmetry                       100002      100002      0.88s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25010                         |
|  /o-- secondd_compute_atom_phases             25250                         |
|  /o-- phonon_diag_and_output                  50000                         |
|  /o-- phonon_prepare_and_diagonalise          50000                         |
|  /o-- phonon_write                            50000                         |
| |/                                                                          |
| O-> q_is_a_g                                 200260      200260      0.64s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> comms_recv_complex                        25000       25000      0.55s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      0.44s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.12s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   4           4      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> basis_initialise                            2           2      0.27s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> parameters_nspins                           3           3      0.00s  |
|   o-> comms_gcopy_integer                         5           5      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.04s  |
|   o-> comms_gcopy_character                       6           6      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        50000                         |
|  /                                                                          |
| O-> comms_recv_real                           50000       50000      0.35s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          25000                         |
|  /                                                                          |
| O-> phonon_mass_weight_dmat                   25000       25000      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                     25000                         |
|  /                                                                          |
| O-> cell_conjugacy_classes_wrapped            25000       25000      0.28s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      25000       25000      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.27s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_distribute_grids                      1           1      0.20s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.04s  |
|   o-> basis_count_plane_waves                     1           1      0.02s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25001                         |
|  /                                                                          |
| O-> hermitian4                                25001       25001      0.26s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               8                         |
|  /o-- cell_read_supercell_data                    1                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              1                         |
|  /o-- secondd_symmetrize_dmat_cmplx           25001                         |
|  /o-- secondd_calc_irreps                     25000                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                           50023       50021      0.21s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.20s  |
|    /                                                                        |
|   o-> basis_utils_sort_columns                    1           1      0.00s  |
|   o-> comms_gather_gv_integer                    12          12      0.00s  |
|   o-> comms_gather_kp_integer                    12          12      0.00s  |
|   o-> comms_map_transpose                         2           2      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      2                         |
|  /                                                                          |
| O-> comms_map_transpose                           2           2      0.19s  |
|    /                                                                        |
|   o-> comms_map_transpose_n                       2           2      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose                         2                         |
|  /                                                                          |
| O-> comms_map_transpose_n                         2           2      0.19s  |
|    /                                                                        |
|   o-> comms_local_map                             2           2      0.18s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose_n                       2                         |
|  /                                                                          |
| O-> comms_local_map                               2           2      0.18s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> cell_restore_wrapped                          2           2      0.12s  |
|    /                                                                        |
|   o-> comms_gcopy_character                       2           2      0.00s  |
|   o-> cell_restore_cell                           2           2      0.00s  |
|   o-> cell_restore_global_wrapped                 2           2      0.00s  |
|   o-> cell_analyse_symmetry_wrapped               2           2      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_restore_wrapped                        2                         |
| |/                                                                          |
| O-> cell_analyse_symmetry_wrapped                 3           2      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_generate_symmetry_wrapped                1           1      0.10s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_find_related_atoms                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25001                         |
|  /                                                                          |
| O-> secondd_find_inversion                    25001       25001      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> thermo_calculate                              1           1      0.09s  |
|    /                                                                        |
|   o-> secondd_symmetrize_born_charges             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          25000                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                     25000       25000      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25001                         |
|  /                                                                          |
| O-> two_q_is_a_g                              25001       25001      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.04s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.01s  |
|   o-> density_read_parallel                       1           1      0.03s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_parallel                         1           1      0.03s  |
|    /                                                                        |
|   o-> comms_gather_gv_integer                     3           3      0.00s  |
|   o-> comms_scatter_gv_complex                    1           1      0.00s  |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.02s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.02s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_real_to_fine                           1           1      0.01s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> check_image_list                            1           1      0.00s  |
|   o-> secondd_symmetrize_dmat_cmplx               1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.01s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
| |/                                                                          |
| O-> density_allocate                              3           3      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> cell_supercell                                1           1      0.01s  |
|    /                                                                        |
|   o-> cell_deallocate                             1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_allocate                               1           1      0.00s  |
|   o-> cell_recip_lattice                          1           1      0.00s  |
|   o-> cell_calculate_volume                       1           1      0.00s  |
|   o-> cell_generate_supercell_origins             1           1      0.00s  |
|   o-> cell_set_supercell_symmetry                 1           1      0.00s  |
|   o-> cell_copy_kpoints                           1           1      0.00s  |
|   o-> cell_set_current_kpoints_wrapped            1           1      0.00s  |
|   o-> cell_generate_cell_constraints              1           1      0.00s  |
|   o-> cell_generate_ionic_constraints             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> parameters_reread_integer                   4           4      0.00s  |
|   o-> parameters_reread_character                 8           8      0.00s  |
|   o-> parameters_reread_logical                   2           2      0.00s  |
|   o-> parameters_validate                         1           1      0.00s  |
|   o-> comms_gcopy_integer                         2           2      0.00s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                         1                         |
|  /                                                                          |
| O-> check_image_list                              1           1      0.00s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped           88          88      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_restore_global_wrapped                   2           2      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_character                     198         198      0.00s  |
|   o-> comms_gcopy_integer                        76          76      0.00s  |
|   o-> comms_gcopy_real                          110         110      0.00s  |
|   o-> cell_detect_MP                              4           4      0.00s  |
|   o-> comms_gcopy_logical                        14          14      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              1                         |
| |/                                                                          |
| O-> cell_generate_ionic_constraints               2           1      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random                      630         504      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_scatter_gv_complex                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          80                         |
|  /o-- cell_generate_qpoints_local                 3                         |
|  /o-- parameters_bcast                          212                         |
|  /o-- cell_restore_cell                          28                         |
|  /o-- cell_restore_global_wrapped               110                         |
|  /o-- model_continuation                          7                         |
| |/                                                                          |
| O-> comms_gcopy_real                            440         251      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_restore                          1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_bcast                              3           2      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                       140          71      0.00s  |
|   o-> comms_gcopy_character                     214         115      0.00s  |
|   o-> comms_gcopy_integer                       161          82      0.00s  |
|   o-> parameters_reallocate_xc                   21          14      0.00s  |
|   o-> comms_gcopy_real                          212         106      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_set_supercell_symmetry                   1           1      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_reduce_symmetry_supercell              1           1      0.00s  |
|   o-> cell_find_related_atoms_supercell           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_supercell_data                    1                         |
|  /o-- model_initialise                            2                         |
|  /o-- model_continuation                          4                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                    11          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 1                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
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
|   o-- cell_generate_ionic_constraints           630                         |
|  /                                                                          |
| O-> algor_uniform_random                        630         504      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_kp_real                         30          30      0.00s  |
|   o-> comms_copy_bnd_logical                     50          50      0.00s  |
|   o-> comms_copy_bnd_real                        10          10      0.00s  |
|   o-> comms_copy_gv_real                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- cell_read_wrapped                          29                         |
|  /o-- parameters_bcast                          214                         |
|  /o-- cell_restore_wrapped                        2                         |
|  /o-- cell_restore_cell                          12                         |
|  /o-- cell_restore_global_wrapped               198                         |
|  /o-- model_continuation                          6                         |
|  /o-- phonon_initialise                           1                         |
| |/                                                                          |
| O-> comms_gcopy_character                       463         334      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_initialise                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_finalise                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_delete_stored_file                    3           3      0.00s  |
|   o-> raman_finalise                              1           1      0.00s  |
|   o-> secondd_deallocate_wvfns                    1           1      0.00s  |
|   o-> secondd_detect_symmetry_changed             1           1      0.00s  |
|   o-> secondd_detect_kpoints_changed              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            3                         |
|  /                                                                          |
| O-> model_delete_stored_file                      3           3      0.00s  |
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
|   o-> comms_gcopy_character                      12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_mp_wrapped                     3                         |
|  /o-- cell_generate_MP_set_wrapped                3                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> bib_add                                       8           2      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          64                         |
|  /o-- cell_generate_qpoints_local                 2                         |
|  /o-- parameters_read                             3                         |
|  /o-- parameters_bcast                          161                         |
|  /o-- parameters_reallocate_xc                   21                         |
|  /o-- cell_restore_cell                          40                         |
|  /o-- cell_restore_global_wrapped                76                         |
|  /o-- model_continuation                          5                         |
|  /o-- parameters_reread                           2                         |
| |/                                                                          |
| O-> comms_gcopy_integer                         374         219      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /o-- density_read_parallel                       3                         |
| |/                                                                          |
| O-> comms_gather_gv_integer                      15          15      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- thermo_calculate                            1                         |
|  /                                                                          |
| O-> secondd_symmetrize_born_charges               1           1      0.00s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                    1           1      0.00s  |
|   o-> secondd_apply_symmetry_to_born             48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_phonon_fine_data                  1                         |
|  /o-- cell_set_kpoints_array_wrapped              1                         |
|  /o-- cell_read_supercell_data                    1                         |
|  /o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                8           4      0.00s  |
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
|   o-- model_read_occ_eigenvalues                 30                         |
|  /                                                                          |
| O-> comms_copy_kp_real                           30          30      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges            48                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_born               48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_kp_logical                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                           88                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped             88          88      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 50                         |
|  /                                                                          |
| O-> comms_copy_bnd_logical                       50          50      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           8                         |
|  /                                                                          |
| O-> parameters_reread_character                   8           8      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- model_initialise                            2                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- model_continuation                          2                         |
|  /o-- cell_supercell                              1                         |
| |/                                                                          |
| O-> cell_allocate                                 8           7      0.00s  |
|    /                                                                        |
|   o-> cell_deallocate                             8           7      0.00s  |
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
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          14      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          14      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_supercell_data                    1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_supercell                2           1      0.00s  |
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
|  /o-- cell_generate_symmetry_wrapped              1                         |
| |/                                                                          |
| O-> cell_find_related_atoms                       2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       1                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_validate                           2           1      0.00s  |
|    /                                                                        |
|   o-> parameters_xc_allowed                      14           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           4                         |
|  /                                                                          |
| O-> parameters_reread_integer                     4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           2                         |
|  /                                                                          |
| O-> parameters_reread_logical                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 10                         |
|  /                                                                          |
| O-> comms_copy_bnd_real                          10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
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
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /                                                                          |
| O-> comms_gather_kp_integer                      12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              1                         |
| |/                                                                          |
| O-> cell_generate_cell_constraints                2           1      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random_array                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
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
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> raman_finalise                                1           1      0.00s  |
|    /                                                                        |
|   o-> raman_empty_cache                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_validate                        14                         |
|  /                                                                          |
| O-> parameters_xc_allowed                        14           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                            1                         |
|  /                                                                          |
| O-> cell_detect_same_cell                         1           1      0.00s  |
|    /                                                                        |
|   o-> algor_sort                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            6                         |
|  /                                                                          |
| O-> basis_utils_prime_factors                     6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               1           1      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_bnd_real                         1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- phonon_real_to_fine                         1                         |
| |/                                                                          |
| O-> cell_num_supercells                           6           6      0.00s  |
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
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_set_current_kpoints_wrapped              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> parameters_nspins                             3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          3                         |
| |/                                                                          |
| O-> cell_distribute_kpoints_wrapped               4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip              147                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                      148           1      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         148           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_bnd_logical                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_generate_symmetry_wrapped              1                         |
| |/                                                                          |
| O-> cell_detect_primitive                         2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip              147                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                  149           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           2                         |
|  /o-- cell_supercell                              1                         |
| |/                                                                          |
| O-> cell_calculate_volume                         3           1      0.00s  |
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
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_read_supercell_data                    1                         |
|  /o-- cell_supercell                              1                         |
| |/                                                                          |
| O-> cell_recip_lattice                            3           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> assign_nodes                                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_rationalise_coordinates                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 1                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_cell_constraints              2                         |
|  /                                                                          |
| O-> algor_uniform_random_array                    2           1      0.00s  |
|    /                                                                        |
|   o-> algor_set_random_seed                       1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           2                         |
|  /                                                                          |
| O-> cell_symmetry_test                            2           0not profiled |
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
|   o-> model_continuation                          1           1      0.44s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.10s  |
|   o-> phonon_calculate                            1           1    367.02s  |
|   o-> thermo_calculate                            1           1      0.09s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_elnes_data                          1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_read_xc_block                      1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_set_kpoints_cell                       1                         |
|  /                                                                          |
| O-> cell_set_kpoints_array_wrapped                1           0not profiled |
|    /                                                                        |
|   o-> cell_detect_MP                              1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           0not profiled |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           0not profiled |
|   o-> comms_gcopy_integer                        64           0not profiled |
|   o-> cell_check_keywords                         1           0not profiled |
|   o-> cell_read_line_real                        66           0not profiled |
|   o-> cell_read_line_char                        22           0not profiled |
|   o-> cell_allocate                               1           0not profiled |
|   o-> cell_calculate_volume                       2           0not profiled |
|   o-> cell_recip_lattice                          1           0not profiled |
|   o-> cell_analyse_symmetry_wrapped               1           0not profiled |
|   o-> cell_kpoints_mp_wrapped                     1           0not profiled |
|   o-> cell_read_optics_data                       1           0not profiled |
|   o-> cell_read_bs_data                           1           0not profiled |
|   o-> cell_read_spectral_data                     1           0not profiled |
|   o-> cell_read_phonon_data                       1           0not profiled |
|   o-> cell_read_phonon_fine_data                  1           0not profiled |
|   o-> cell_read_magres_data                       1           0not profiled |
|   o-> cell_read_elnes_data                        1           0not profiled |
|   o-> cell_read_supercell_data                    1           0not profiled |
|   o-> cell_generate_cell_constraints              1           0not profiled |
|   o-> cell_check_cell_constraints                 1           0not profiled |
|   o-> cell_find_related_atoms                     1           0not profiled |
|   o-> cell_detect_primitive                       1           0not profiled |
|   o-> cell_check_group                            1           0not profiled |
|   o-> cell_count_symmetry_translations_wrap       1           0not profiled |
|   o-> cell_check_group_equiv                      1           0not profiled |
|   o-> cell_symmetry_test                          2           0not profiled |
|   o-> cell_check_symmetry_ops_spin                1           0not profiled |
|   o-> cell_generate_ionic_constraints             1           0not profiled |
|   o-> comms_gcopy_logical                        11           0not profiled |
|   o-> comms_gcopy_real                           80           0not profiled |
|   o-> comms_gcopy_character                      29           0not profiled |
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
|   o-> parameters_read_xc_block                    1           0not profiled |
|   o-> parameters_validate                         1           0not profiled |
|   o-> parameters_bcast                            1           0not profiled |
|   o-> algor_set_random_seed                       1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_check_symmetry_ops_spin                  1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_phonon_data                         1           0not profiled |
|    /                                                                        |
|   o-> cell_kpoints_mp_wrapped                     1           0not profiled |
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
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_phonon_fine_data                    1           0not profiled |
|    /                                                                        |
|   o-> cell_detect_MP                              1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_bs_data                             1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_supercell_data                    1                         |
|  /                                                                          |
| O-> cell_set_kpoints_cell                         1           0not profiled |
|    /                                                                        |
|   o-> cell_set_kpoints_array_wrapped              1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> io_delete_file                                1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_MP_set_wrapped                3                         |
|  /                                                                          |
| O-> cell_reduce_kpoints_internal                  3           0not profiled |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       3           0not profiled |
|   o-> cell_sort_kpoints_with_recip              147           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_check_cell_constraints                 1                         |
|  /                                                                          |
| O-> cell_cart_lattice_to_abc                      1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal                3                         |
|  /o-- cell_generate_qpoints_local                 1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         4           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- algor_uniform_random_array                  1                         |
|  /o-- parameters_read                             1                         |
| |/                                                                          |
| O-> algor_set_random_seed                         2           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_count_symmetry_translations_wrappe       1           0not profiled |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped          1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          22                         |
|  /                                                                          |
| O-> cell_read_line_char                          22           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_spectral_data                       1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_check_keywords                           1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_check_group_equiv                        1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_magres_data                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_mp_wrapped                     3                         |
|  /                                                                          |
| O-> cell_generate_MP_set_wrapped                  3           0not profiled |
|    /                                                                        |
|   o-> bib_add                                     3           0not profiled |
|   o-> cell_reduce_kpoints_internal                3           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal              147                         |
|  /                                                                          |
| O-> cell_sort_kpoints_with_recip                147           0not profiled |
|    /                                                                        |
|   o-> cell_find_reduced_cell                    147           0not profiled |
|   o-> algor_invert_real                         294           0not profiled |
|   o-> algor_sort                                147           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_check_cell_constraints                   1           0not profiled |
|    /                                                                        |
|   o-> cell_cart_lattice_to_abc                    1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          66                         |
|  /                                                                          |
| O-> cell_read_line_real                          66           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_read_phonon_data                       1                         |
|  /o-- cell_read_supercell_data                    1                         |
| |/                                                                          |
| O-> cell_kpoints_mp_wrapped                       3           0not profiled |
|    /                                                                        |
|   o-> bib_add                                     3           0not profiled |
|   o-> cell_generate_MP_set_wrapped                3           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_supercell_data                      1           0not profiled |
|    /                                                                        |
|   o-> cell_copy                                   1           0not profiled |
|   o-> cell_recip_lattice                          1           0not profiled |
|   o-> cell_reduce_symmetry_supercell              1           0not profiled |
|   o-> cell_kpoints_mp_wrapped                     1           0not profiled |
|   o-> cell_set_kpoints_cell                       1           0not profiled |
|   o-> cell_detect_MP                              1           0not profiled |
|   o-> cell_deallocate                             1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_optics_data                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_setup_keywords                           1           0not profiled |
+-----------------------------------------------------------------------------+
     184 different subroutines and functions were traced
Hash collisions:          0
