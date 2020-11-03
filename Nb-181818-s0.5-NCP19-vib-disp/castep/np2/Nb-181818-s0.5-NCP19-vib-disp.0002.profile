+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    147.43s  |
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
|   o-> phonon_recip_to_real                        1           1      7.65s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> q_is_a_g                                   35          35      0.00s  |
|   o-> cell_supercell                              1           1      6.72s  |
|   o-> phonon_real_to_fine                     12501       12501     20.73s  |
|   o-> phonon_enforce_dmat_sumrule             12500       12500     26.86s  |
|   o-> phonon_prepare_and_diagonalise          12500       12500      6.55s  |
|   o-> phonon_accumulate_adp                   12500       12500      0.11s  |
|   o-> comms_send_complex                      12500       12500     46.42s  |
|   o-> comms_send_real                         25000       25000     31.96s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.07s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> comms_send_complex                        12500       12500     46.42s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          12535                         |
|  /o-- phonon_recip_to_real                      729                         |
|  /o-- phonon_real_to_fine                     12501                         |
|  /o-- phonon_enforce_dmat_sumrule             12500                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx             38265       38265     37.20s  |
|    /                                                                        |
|   o-> two_q_is_a_g                            38265       38265      0.12s  |
|   o-> hermitian4                              38265       38265      0.12s  |
|   o-> cell_copy_symmetry                      76530       76530      0.49s  |
|   o-> cell_reduce_symmetry_ops_wrapped        38265       38265     12.22s  |
|   o-> secondd_group_symmetrize_dmat           38265       38265     13.96s  |
|   o-> cell_deallocate                         38265       38265      0.14s  |
|   o-> secondd_find_inversion                  38265       38265      0.12s  |
|   o-> secondd_tr_symmetrize_dmat              38265       38265      8.78s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> comms_send_real                           25000       25000     31.96s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule               12500       12500     26.86s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                 25000       25000      0.08s  |
|   o-> phonon_diagonalise_d_cmplx              37500       37500      0.22s  |
|   o-> secondd_find_acoustics                  12500       12500      0.24s  |
|   o-> secondd_symmetrize_dmat_cmplx           12500       12500     25.33s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12501                         |
|  /                                                                          |
| O-> phonon_real_to_fine                       12501       12501     20.73s  |
|    /                                                                        |
|   o-> cell_num_supercells                     12501       12501      0.04s  |
|   o-> check_image_list                        12501       12501      0.04s  |
|   o-> secondd_symmetrize_dmat_cmplx           12501       12501      5.77s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           38265                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat             38265       38265     13.96s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      38265       38265      0.47s  |
|   o-> secondd_check_equiv_ions                38265       38265      0.30s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     665199      665199     10.67s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2     13.44s  |
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
|   o-> cell_kpoints_spacing_wrapped                2           2      4.43s  |
|   o-> cell_generate_ionic_constraints             2           2      1.34s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           38265                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped          38300       38300     12.23s  |
|    /                                                                        |
|   o-> cell_check_group                        38300       38300     11.66s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_symmetry_ops_wrapped        38300                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_check_group                          38335       38335     11.66s  |
|    /                                                                        |
|   o-> algor_invert_real                      627254      627254      1.92s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat          665199                         |
|  /o-- secondd_tr_symmetrize_dmat              38265                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion       704193      704193     11.33s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases            704193      704193      6.80s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           38265                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                38265       38265      8.78s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                38265       38265      7.77s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      38265       38265      0.65s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           38265                         |
|  /o-- secondd_tr_symmetrize_dmat              38265                         |
|  /o-- secondd_calc_irreps                        35                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  77294       77294      8.07s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions           1263556     1263556      3.84s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_set_supercell_symmetry                   2           2      7.67s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_reduce_symmetry_supercell              2           2      0.30s  |
|   o-> cell_find_related_atoms_supercell           2           2      4.98s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      7.65s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      6.72s  |
|   o-> cell_map_kpoint_subset                      1           1      0.00s  |
|   o-> cell_find_kpoint_transform_kpoints        729         729      0.01s  |
|   o-> secondd_apply_symmetry_to_dmat            729         729      0.02s  |
|   o-> secondd_symmetrize_dmat_cmplx             729         729      0.37s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion     704193                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases              704193      704193      6.80s  |
|    /                                                                        |
|   o-> q_is_a_g                               653893      653893      1.99s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                     35                         |
|  /o-- phonon_calculate                        12500                         |
| |/                                                                          |
| O-> phonon_prepare_and_diagonalise            12535       12535      6.59s  |
|    /                                                                        |
|   o-> q_is_a_g                                25070       25070      0.08s  |
|   o-> secondd_symmetrize_dmat_cmplx           12535       12535      5.72s  |
|   o-> phonon_constrain_dmat                   12535       12535      0.04s  |
|   o-> phonon_mass_weight_dmat                 12535       12535      0.04s  |
|   o-> phonon_diagonalise_d_cmplx              12535       12535      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      4.98s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      4.43s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      4.43s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_spacing_wrapped                2                         |
|  /                                                                          |
| O-> cell_generate_MP_set_wrapped                  2           2      4.43s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_reduce_kpoints_internal                2           2      4.43s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_MP_set_wrapped                2                         |
|  /                                                                          |
| O-> cell_reduce_kpoints_internal                  2           2      4.43s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       2           2      0.00s  |
|   o-> cell_sort_kpoints_with_recip            69986       69986      4.17s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal            69986                         |
|  /o-- cell_map_kpoint_subset                     49                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip              70035       70035      4.18s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                  70035       70035      0.66s  |
|   o-> algor_invert_real                      140070      140070      0.42s  |
|   o-> algor_sort                              70035       70035      0.23s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions              1263556                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions             1263556     1263556      3.84s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_check_group                       627254                         |
|  /o-- cell_symmetry_symbol_wrapped_wrapped      160                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- cell_find_reduced_cell                  70036                         |
|  /o-- cell_sort_kpoints_with_recip           140070                         |
|  /o-- cell_find_kpoint_transform_kpoints        729                         |
| |/                                                                          |
| O-> algor_invert_real                        838256      838256      2.56s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            53                         |
|  /o-- phonon_diag_and_output                     70                         |
|  /o-- phonon_prepare_and_diagonalise          25070                         |
|  /o-- secondd_compute_atom_phases            653893                         |
|  /o-- phonon_calculate                           35                         |
| |/                                                                          |
| O-> q_is_a_g                                 679121      679121      2.07s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_ionic_constraints               2           2      1.34s  |
|    /                                                                        |
|   o-> algor_uniform_random                     4374        4374      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70035                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                    70036       70036      0.66s  |
|    /                                                                        |
|   o-> algor_invert_real                       70036       70036      0.22s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           76530                         |
|  /o-- secondd_calc_irreps                        70                         |
| |/                                                                          |
| O-> cell_copy_symmetry                        76600       76600      0.49s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           38265                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_factor_group_symmetry_wrapped        38300       38300      0.47s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          12535                         |
|  /o-- phonon_enforce_dmat_sumrule             37500                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                50035       50035      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             12500                         |
|  /                                                                          |
| O-> secondd_find_acoustics                    12500       12500      0.24s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      0.24s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.04s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   4           4      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> basis_initialise                            2           2      0.07s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.12s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       7           7      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70035                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                70037       70037      0.23s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               9                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- secondd_symmetrize_dmat_cmplx           38265                         |
|  /o-- secondd_calc_irreps                        35                         |
|  /o-- cell_supercell                              2                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                           38324       38323      0.14s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           38265                         |
|  /                                                                          |
| O-> hermitian4                                38265       38265      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           38265                         |
|  /                                                                          |
| O-> secondd_find_inversion                    38265       38265      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           38265                         |
|  /                                                                          |
| O-> two_q_is_a_g                              38265       38265      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.12s  |
|    /                                                                        |
|   o-> comms_copy_kp_real                        570         570      0.00s  |
|   o-> comms_copy_bnd_logical                  18050       18050      0.06s  |
|   o-> comms_copy_bnd_real                       190         190      0.00s  |
|   o-> comms_copy_gv_real                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          12535                         |
|  /o-- phonon_enforce_dmat_sumrule             25000                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                   37535       37535      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                     12500       12500      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.07s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       1                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       3           3      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.07s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_set_serial_grids                      1           1      0.03s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.00s  |
|   o-> basis_count_plane_waves                     1           1      0.01s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.01s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.01s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues              18050                         |
|  /                                                                          |
| O-> comms_copy_bnd_logical                    18050       18050      0.06s  |
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
| O-> cell_restore_wrapped                          2           2      0.04s  |
|    /                                                                        |
|   o-> comms_gcopy_character                       2           2      0.00s  |
|   o-> cell_restore_cell                           2           2      0.00s  |
|   o-> cell_restore_global_wrapped                 2           2      0.02s  |
|   o-> cell_analyse_symmetry_wrapped               2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                     12501                         |
|  /                                                                          |
| O-> check_image_list                          12501       12501      0.04s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped          729         729      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          12535                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                     12535       12535      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- phonon_real_to_fine                     12501                         |
| |/                                                                          |
| O-> cell_num_supercells                       12510       12510      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_set_serial_grids                        1           1      0.03s  |
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
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.02s  |
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
| O-> algor_uniform_random                       4374        4374      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      729                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          729         729      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                         729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
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
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.01s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                       4           4      0.00s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_initialise                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip               49          49      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_initialise                            2                         |
|  /o-- model_continuation                          4                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                    10          10      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            4                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
|  /o-- cell_generate_MP_set_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                       8           8      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                          729                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                570                         |
|  /                                                                          |
| O-> comms_copy_kp_real                          570         570      0.00s  |
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
|   o-- cell_read_wrapped                          80                         |
|  /o-- cell_generate_qpoints_local                 3                         |
|  /o-- parameters_bcast                          212                         |
|  /o-- cell_restore_cell                          28                         |
|  /o-- cell_restore_global_wrapped               114                         |
|  /o-- model_continuation                          7                         |
| |/                                                                          |
| O-> comms_gcopy_real                            444         255      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                       160                         |
|  /                                                                          |
| O-> cell_symmetry_symbol_wrapped_wrapped        160         160      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         160         160      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.00s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_serial                         1           1      0.00s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
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
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_serial                           1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_serial                         1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
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
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                190                         |
|  /                                                                          |
| O-> comms_copy_bnd_real                         190         190      0.00s  |
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
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          1                         |
| |/                                                                          |
| O-> comms_parallel_strategy                       2           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               2           1      0.00s  |
|   o-> assign_nodes                                2           1      0.00s  |
|   o-> reassign_nodes                              2           1      0.00s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> thermo_calculate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_reduce_kpoints_internal                2                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          3                         |
| |/                                                                          |
| O-> cell_distribute_kpoints_wrapped               4           3      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
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
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                      4           4      0.00s  |
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
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_detect_primitive                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_recip_lattice                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_calculate_volume                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_require_gs_wvfn                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> find_strategy                                 2           1      0.00s  |
|    /                                                                        |
|   o-> best_mixed_strategy                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> assign_nodes                                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_rationalise_coordinates                  2           1      0.00s  |
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
|   o-> model_continuation                          1           1      0.24s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.02s  |
|   o-> phonon_calculate                            1           1    147.43s  |
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
|   o-- find_strategy                               1                         |
|  /                                                                          |
| O-> best_mixed_strategy                           1           0not profiled |
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
     151 different subroutines and functions were traced
Hash collisions:          1
