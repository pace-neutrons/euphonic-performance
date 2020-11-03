+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    522.48s  |
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
|   o-> q_is_a_g                                   10          10      0.00s  |
|   o-> cell_supercell                              1           1      0.01s  |
|   o-> phonon_real_to_fine                     12501       12501     11.62s  |
|   o-> phonon_enforce_dmat_sumrule             12500       12500    112.73s  |
|   o-> phonon_prepare_and_diagonalise          12500       12500     18.76s  |
|   o-> phonon_accumulate_adp                   12500       12500      0.50s  |
|   o-> comms_send_complex                      12500       12500    378.31s  |
|   o-> comms_send_real                         25000       25000      0.11s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.01s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> comms_send_complex                        12500       12500    378.31s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule               12500       12500    112.73s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                 25000       25000      0.29s  |
|   o-> phonon_diagonalise_d_cmplx              37500       37500     24.09s  |
|   o-> secondd_find_acoustics                  12500       12500      0.95s  |
|   o-> secondd_symmetrize_dmat_cmplx           12500       12500     85.79s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                     12501                         |
|  /o-- phonon_enforce_dmat_sumrule             12500                         |
|  /o-- phonon_prepare_and_diagonalise          12500                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx             37501       37501    105.06s  |
|    /                                                                        |
|   o-> two_q_is_a_g                            37501       37501      0.12s  |
|   o-> hermitian4                              37501       37501      0.38s  |
|   o-> cell_copy_symmetry                      75002       75002      0.66s  |
|   o-> cell_reduce_symmetry_ops_wrapped        37501       37501     12.43s  |
|   o-> secondd_group_symmetrize_dmat           37501       37501     77.33s  |
|   o-> cell_deallocate                         37501       37501      0.15s  |
|   o-> secondd_find_inversion                  37501       37501      0.13s  |
|   o-> secondd_tr_symmetrize_dmat              37501       37501     12.47s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           37501                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat             37501       37501     77.33s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      37501       37501      0.47s  |
|   o-> secondd_check_equiv_ions                37501       37501      0.34s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     662587      662587     65.42s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat          662587                         |
|  /o-- secondd_tr_symmetrize_dmat              37501                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion       700088      700088     69.23s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases            700088      700088     18.95s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             37500                         |
|  /o-- phonon_prepare_and_diagonalise          12500                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                50000       50000     32.14s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion     700088                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases              700088      700088     18.95s  |
|    /                                                                        |
|   o-> q_is_a_g                               650164      650164      1.97s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> phonon_prepare_and_diagonalise            12500       12500     18.76s  |
|    /                                                                        |
|   o-> q_is_a_g                                25000       25000      0.08s  |
|   o-> secondd_symmetrize_dmat_cmplx           12500       12500      9.66s  |
|   o-> phonon_constrain_dmat                   12500       12500      0.04s  |
|   o-> phonon_mass_weight_dmat                 12500       12500      0.15s  |
|   o-> phonon_diagonalise_d_cmplx              12500       12500      8.04s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           37501                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                37501       37501     12.47s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                37501       37501      7.92s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      37501       37501      3.82s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           37501                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped          37501       37501     12.43s  |
|    /                                                                        |
|   o-> cell_check_group                        37501       37501     11.77s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_symmetry_ops_wrapped        37501                         |
|  /                                                                          |
| O-> cell_check_group                          37501       37501     11.77s  |
|    /                                                                        |
|   o-> algor_invert_real                      625086      625086      1.88s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12501                         |
|  /                                                                          |
| O-> phonon_real_to_fine                       12501       12501     11.62s  |
|    /                                                                        |
|   o-> cell_num_supercells                     12501       12501      0.04s  |
|   o-> check_image_list                        12501       12501      0.05s  |
|   o-> secondd_symmetrize_dmat_cmplx           12501       12501      9.61s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           37501                         |
|  /o-- secondd_tr_symmetrize_dmat              37501                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  75002       75002      8.26s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions           1225086     1225086      3.90s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions              1225086                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions             1225086     1225086      3.90s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                           10                         |
|  /o-- secondd_compute_atom_phases            650164                         |
|  /o-- phonon_prepare_and_diagonalise          25000                         |
| |/                                                                          |
| O-> q_is_a_g                                 675174      675174      2.05s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- cell_find_reduced_cell                      1                         |
|  /o-- cell_check_group                       625086                         |
| |/                                                                          |
| O-> algor_invert_real                        625091      625091      1.88s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             12500                         |
|  /                                                                          |
| O-> secondd_find_acoustics                    12500       12500      0.95s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           75002                         |
|  /                                                                          |
| O-> cell_copy_symmetry                        75002       75002      0.66s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                     12500       12500      0.50s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           37501                         |
|  /                                                                          |
| O-> cell_factor_group_symmetry_wrapped        37501       37501      0.47s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             25000                         |
|  /o-- phonon_prepare_and_diagonalise          12500                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                   37500       37500      0.44s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           37501                         |
|  /                                                                          |
| O-> hermitian4                                37501       37501      0.38s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      0.25s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.12s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   4           4      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> basis_initialise                            2           2      0.07s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> comms_gcopy_integer                         5           5      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.04s  |
|   o-> comms_gcopy_character                       6           6      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               8                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              1                         |
|  /o-- secondd_symmetrize_dmat_cmplx           37501                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                           37522       37521      0.15s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           37501                         |
|  /                                                                          |
| O-> secondd_find_inversion                    37501       37501      0.13s  |
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
|   o-- secondd_symmetrize_dmat_cmplx           37501                         |
|  /                                                                          |
| O-> two_q_is_a_g                              37501       37501      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> comms_send_real                           25000       25000      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_generate_symmetry_wrapped                1           1      0.10s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_find_related_atoms                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.07s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_set_serial_grids                      1           1      0.01s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.04s  |
|   o-> basis_count_plane_waves                     1           1      0.00s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                     12501                         |
|  /                                                                          |
| O-> check_image_list                          12501       12501      0.05s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped           88          88      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.04s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.01s  |
|   o-> density_read_serial                         1           1      0.03s  |
|   o-> density_complex_to_real                     1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          12500                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                     12500       12500      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- phonon_real_to_fine                     12501                         |
| |/                                                                          |
| O-> cell_num_supercells                       12506       12506      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_serial                           1           1      0.03s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_serial                         1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.02s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       1                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       3           3      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_set_serial_grids                        1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
| |/                                                                          |
| O-> density_allocate                              3           3      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.01s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
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
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.01s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
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
| O-> comms_gcopy_logical                         181          99      0.01s  |
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
| O-> comms_gcopy_integer                         374         219      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
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
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_generate_ionic_constraints               1           1      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random                      504         504      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 1                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_initialise                            2                         |
|  /o-- model_continuation                          4                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                    10          10      0.00s  |
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
|   o-- cell_generate_ionic_constraints           504                         |
|  /                                                                          |
| O-> algor_uniform_random                        504         504      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_finalise                              1           1      0.00s  |
|    /                                                                        |
|   o-> raman_finalise                              1           1      0.00s  |
|   o-> secondd_deallocate_wvfns                    1           1      0.00s  |
|   o-> secondd_detect_symmetry_changed             1           1      0.00s  |
|   o-> secondd_detect_kpoints_changed              1           1      0.00s  |
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
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> bib_add                                       2           2      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_initialise                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
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
|  /o-- model_continuation                          1                         |
| |/                                                                          |
| O-> comms_parallel_strategy                       2           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               2           1      0.00s  |
|   o-> assign_nodes                                2           1      0.00s  |
|   o-> reassign_nodes                              2           1      0.00s  |
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
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                5           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 1                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                           88                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped             88          88      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 30                         |
|  /                                                                          |
| O-> comms_copy_kp_real                           30          30      0.00s  |
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
|   o-- model_read_occ_eigenvalues                 50                         |
|  /                                                                          |
| O-> comms_copy_bnd_logical                       50          50      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          14      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          14      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_find_related_atoms                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> thermo_calculate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          3                         |
| |/                                                                          |
| O-> cell_distribute_kpoints_wrapped               4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_generate_cell_constraints                1           1      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random_array                  1           1      0.00s  |
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
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 10                         |
|  /                                                                          |
| O-> comms_copy_bnd_real                          10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                            1                         |
|  /                                                                          |
| O-> cell_detect_same_cell                         1           1      0.00s  |
|    /                                                                        |
|   o-> algor_sort                                  2           2      0.00s  |
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
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               1           1      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_kp_logical                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> secondd_symmetry_init                         2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_bnd_real                         1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                            1                         |
|  /                                                                          |
| O-> cell_find_reduced_cell                        1           1      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                           1           1      0.00s  |
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
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_detect_primitive                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_detect_same_cell                       2                         |
|  /                                                                          |
| O-> algor_sort                                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_bnd_logical                      1           1      0.00s  |
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
|   o-- cell_generate_cell_constraints              1                         |
|  /                                                                          |
| O-> algor_uniform_random_array                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_recip_lattice                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> find_strategy                                 2           1      0.00s  |
|    /                                                                        |
|   o-> best_mixed_strategy                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> assign_nodes                                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_calculate_volume                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> reassign_nodes                                2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_require_gs_wvfn                        1           1      0.00s  |
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
|   o-> model_continuation                          1           1      0.25s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.10s  |
|   o-> phonon_calculate                            1           1    522.48s  |
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
|   o-- find_strategy                               1                         |
|  /                                                                          |
| O-> best_mixed_strategy                           1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> io_delete_file                                1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /                                                                          |
| O-> cell_kpoint_tolerance                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> algor_set_random_seed                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_setup_keywords                           1           0not profiled |
+-----------------------------------------------------------------------------+
     141 different subroutines and functions were traced
Hash collisions:          0
