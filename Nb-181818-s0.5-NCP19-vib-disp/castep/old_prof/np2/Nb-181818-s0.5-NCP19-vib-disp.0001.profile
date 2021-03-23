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
|   o-> q_is_a_g                                25036       25036      0.08s  |
|   o-> bib_add                                     4           4      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> cell_rationalise_coordinates                1           1      0.00s  |
|   o-> secondd_compare_kpoints                     1           1      0.00s  |
|   o-> phonon_write_header                         2           2      0.00s  |
|   o-> phonon_calculate_dynamical_dfpt             1           1      0.12s  |
|   o-> phonon_recip_to_real                        1           1      7.63s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> phonon_print_force_const_matrix             1           1      0.03s  |
|   o-> cell_supercell                              1           1      6.70s  |
|   o-> phonon_real_to_fine                     12501       12501     20.71s  |
|   o-> phonon_enforce_dmat_sumrule             12500       12500     26.80s  |
|   o-> phonon_prepare_and_diagonalise          12500       12500      6.53s  |
|   o-> phonon_accumulate_adp                   12500       12500      0.11s  |
|   o-> phonon_diag_and_output                  25000       25000     78.09s  |
|   o-> comms_recv_complex                      12500       12500      0.06s  |
|   o-> comms_recv_real                         25000       25000      0.09s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.00s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            35                         |
|  /o-- phonon_calculate                        25000                         |
| |/                                                                          |
| O-> phonon_diag_and_output                    25035       25035     78.21s  |
|    /                                                                        |
|   o-> q_is_a_g                                50070       50070      0.15s  |
|   o-> phonon_prepare_and_diagonalise          25035       25035     21.02s  |
|   o-> secondd_calc_irreps                     25035       25035      3.81s  |
|   o-> phonon_write                            50035       50035     11.58s  |
|   o-> phonon_print_irreps                     25035       25035     40.59s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          37535                         |
|  /o-- phonon_recip_to_real                      729                         |
|  /o-- phonon_real_to_fine                     12501                         |
|  /o-- phonon_enforce_dmat_sumrule             12500                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx             63265       63265     48.26s  |
|    /                                                                        |
|   o-> two_q_is_a_g                            63265       63265      0.19s  |
|   o-> hermitian4                              63265       63265      0.20s  |
|   o-> cell_copy_symmetry                     126530      126530      0.81s  |
|   o-> cell_reduce_symmetry_ops_wrapped        63265       63265     12.77s  |
|   o-> secondd_group_symmetrize_dmat           63265       63265     14.95s  |
|   o-> cell_deallocate                         63265       63265      0.23s  |
|   o-> secondd_find_inversion                  63265       63265      0.20s  |
|   o-> secondd_tr_symmetrize_dmat              63265       63265     16.87s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25035                         |
|  /                                                                          |
| O-> phonon_print_irreps                       25035       25035     40.59s  |
|    /                                                                        |
|   o-> cell_check_group                        25035       25035     22.68s  |
|   o-> cell_factor_group_symmetry_wrapped      25035       25035      0.78s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped  1201680     1201680     11.39s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reduce_symmetry_ops_wrapped        88300                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- phonon_print_irreps                     25035                         |
| |/                                                                          |
| O-> cell_check_group                         138371      138370     35.01s  |
|    /                                                                        |
|   o-> algor_invert_real                     1904115     1904067      5.75s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25035                         |
|  /o-- phonon_calculate                        12500                         |
| |/                                                                          |
| O-> phonon_prepare_and_diagonalise            37535       37535     27.55s  |
|    /                                                                        |
|   o-> q_is_a_g                                75070       75070      0.23s  |
|   o-> secondd_symmetrize_dmat_cmplx           37535       37535     16.97s  |
|   o-> phonon_constrain_dmat                   37535       37535      0.12s  |
|   o-> phonon_mass_weight_dmat                 37535       37535      0.12s  |
|   o-> phonon_print_dynamical_matrix           25035       25035      7.42s  |
|   o-> phonon_diagonalise_d_cmplx              37535       37535      0.26s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule               12500       12500     26.80s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                 25000       25000      0.08s  |
|   o-> phonon_diagonalise_d_cmplx              37500       37500      0.25s  |
|   o-> secondd_find_acoustics                  12500       12500      0.24s  |
|   o-> secondd_symmetrize_dmat_cmplx           12500       12500     25.22s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12501                         |
|  /                                                                          |
| O-> phonon_real_to_fine                       12501       12501     20.71s  |
|    /                                                                        |
|   o-> cell_num_supercells                     12501       12501      0.04s  |
|   o-> check_image_list                        12501       12501      0.04s  |
|   o-> secondd_symmetrize_dmat_cmplx           12501       12501      5.70s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           63265                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                63265       63265     16.87s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                63265       63265     15.19s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      63265       63265      1.07s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           63265                         |
|  /o-- secondd_tr_symmetrize_dmat              63265                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
|  /o-- secondd_symmetrize_born_charges             1                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                 152295      152295     15.81s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions           2488783     2488783      7.50s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           63265                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat             63265       63265     14.95s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      63265       63265      0.55s  |
|   o-> secondd_check_equiv_ions                63265       63265      0.38s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     715242      715242     11.10s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2     13.40s  |
|    /                                                                        |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_recip_lattice                          2           2      0.00s  |
|   o-> cell_calculate_volume                       2           2      0.00s  |
|   o-> cell_generate_supercell_origins             2           2      0.00s  |
|   o-> cell_set_supercell_symmetry                 2           2      7.63s  |
|   o-> cell_copy_kpoints                           2           2      0.00s  |
|   o-> cell_kpoints_spacing_wrapped                2           2      4.44s  |
|   o-> cell_generate_ionic_constraints             2           2      1.33s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           63265                         |
|  /o-- secondd_calc_irreps                     25035                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped          88300       88300     13.37s  |
|    /                                                                        |
|   o-> cell_check_group                        88300       88300     12.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat          715242                         |
|  /o-- secondd_tr_symmetrize_dmat              63265                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion       779236      779236     12.18s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases            779236      779236      7.19s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                     50348                         |
|  /o-- phonon_print_irreps                   1201680                         |
| |/                                                                          |
| O-> cell_symmetry_symbol_wrapped_wrapped    1252028     1252028     11.87s  |
|    /                                                                        |
|   o-> algor_invert_real                     1252028     1252028      3.79s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  50035                         |
|  /                                                                          |
| O-> phonon_write                              50035       50035     11.58s  |
|    /                                                                        |
|   o-> q_is_a_g                                50035       50035      0.15s  |
|   o-> phonon_write_freqs                      50035       50035      2.03s  |
|   o-> secondd_find_acoustics                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              2                         |
|  /o-- cell_find_reduced_cell                  70134                         |
|  /o-- cell_sort_kpoints_with_recip           140266                         |
|  /o-- cell_check_group                      1904115                         |
|  /o-- cell_symmetry_symbol_wrapped_wrapped  1252028                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- cell_find_kpoint_transform_kpoints        729                         |
| |/                                                                          |
| O-> algor_invert_real                       3367280     3366937     10.18s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      7.63s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      6.70s  |
|   o-> cell_map_kpoint_subset                      1           1      0.00s  |
|   o-> cell_find_kpoint_transform_kpoints        729         729      0.01s  |
|   o-> secondd_apply_symmetry_to_dmat            729         729      0.02s  |
|   o-> secondd_symmetrize_dmat_cmplx             729         729      0.37s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_set_supercell_symmetry                   2           2      7.63s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_reduce_symmetry_supercell              2           2      0.27s  |
|   o-> cell_find_related_atoms_supercell           2           2      4.98s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions              2488783                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions             2488783     2488783      7.50s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          25035                         |
|  /                                                                          |
| O-> phonon_print_dynamical_matrix             25035       25035      7.42s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion     779236                         |
|  /o-- secondd_calc_irreps                     25205                         |
| |/                                                                          |
| O-> secondd_compute_atom_phases              804441      804441      7.27s  |
|    /                                                                        |
|   o-> q_is_a_g                               679268      679268      2.06s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      4.98s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      4.44s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      4.44s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_mp_wrapped                     2                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
| |/                                                                          |
| O-> cell_generate_MP_set_wrapped                  4           2      4.44s  |
|    /                                                                        |
|   o-> bib_add                                     4           2      0.00s  |
|   o-> cell_reduce_kpoints_internal                4           2      4.44s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_MP_set_wrapped                4                         |
|  /                                                                          |
| O-> cell_reduce_kpoints_internal                  4           2      4.44s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       4           2      0.00s  |
|   o-> cell_sort_kpoints_with_recip            70084       69986      4.18s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal            70084                         |
|  /o-- cell_map_kpoint_subset                     49                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip              70133       70035      4.18s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                  70133       70035      0.66s  |
|   o-> algor_invert_real                      140266      140070      0.43s  |
|   o-> algor_sort                              70133       70035      0.23s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25035                         |
|  /                                                                          |
| O-> secondd_calc_irreps                       25035       25035      3.81s  |
|    /                                                                        |
|   o-> cell_copy_symmetry                      50070       50070      0.32s  |
|   o-> cell_reduce_symmetry_ops_wrapped        25035       25035      0.60s  |
|   o-> cell_check_group                        25035       25035      0.24s  |
|   o-> cell_factor_group_symmetry_wrapped      25035       25035      0.08s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped    50348       50348      0.48s  |
|   o-> secondd_check_equiv_ions                25035       25035      0.24s  |
|   o-> secondd_compute_atom_phases             25205       25205      0.08s  |
|   o-> cell_conjugacy_classes_wrapped          25035       25035      0.27s  |
|   o-> cell_deallocate                         25035       25035      0.09s  |
|   o-> secondd_determinant                        48          48      0.00s  |
|   o-> secondd_analyse_symmetries                  1           1      0.00s  |
|   o-> secondd_irrep_symbol                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25036                         |
|  /o-- phonon_calculate_dynamical_dfpt            53                         |
|  /o-- phonon_diag_and_output                  50070                         |
|  /o-- phonon_prepare_and_diagonalise          75070                         |
|  /o-- secondd_compute_atom_phases            679268                         |
|  /o-- phonon_write                            50035                         |
| |/                                                                          |
| O-> q_is_a_g                                 879532      879532      2.66s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_write                            50035                         |
|  /                                                                          |
| O-> phonon_write_freqs                        50035       50035      2.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_count_symmetry_translations_wrap       1                         |
|  /o-- secondd_group_symmetrize_dmat           63265                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- cell_conjugacy_classes_wrapped          25035                         |
|  /o-- phonon_print_irreps                     25035                         |
| |/                                                                          |
| O-> cell_factor_group_symmetry_wrapped       138371      138370      1.48s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_generate_ionic_constraints               3           2      1.33s  |
|    /                                                                        |
|   o-> algor_uniform_random                     4377        4374      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          126530                         |
|  /o-- secondd_calc_irreps                     50070                         |
| |/                                                                          |
| O-> cell_copy_symmetry                       176600      176600      1.12s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70133                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                    70134       70036      0.66s  |
|    /                                                                        |
|   o-> algor_invert_real                       70134       70036      0.22s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          37535                         |
|  /o-- phonon_enforce_dmat_sumrule             37500                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                75035       75035      0.51s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               9                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- secondd_symmetrize_dmat_cmplx           63265                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- cell_supercell                              2                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                           88324       88323      0.32s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                     25035                         |
|  /                                                                          |
| O-> cell_conjugacy_classes_wrapped            25035       25035      0.27s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      25035       25035      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.27s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_write                                1                         |
|  /o-- phonon_enforce_dmat_sumrule             12500                         |
| |/                                                                          |
| O-> secondd_find_acoustics                    12501       12501      0.24s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_continuation                            1           1      0.24s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.05s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   4           4      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> basis_initialise                            2           2      0.07s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> parameters_nspins                           3           3      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.12s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       7           7      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70133                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                70135       70037      0.23s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           63265                         |
|  /                                                                          |
| O-> hermitian4                                63265       63265      0.20s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           63265                         |
|  /                                                                          |
| O-> secondd_find_inversion                    63265       63265      0.20s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          37535                         |
|  /o-- phonon_enforce_dmat_sumrule             25000                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                   62535       62535      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           63265                         |
|  /                                                                          |
| O-> two_q_is_a_g                              63265       63265      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_calculate_dynamical_dfpt               1           1      0.12s  |
|    /                                                                        |
|   o-> q_is_a_g                                   53          53      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
|   o-> phonon_diag_and_output                     35          35      0.12s  |
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
|   o-- phonon_prepare_and_diagonalise          37535                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                     37535       37535      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                     12500       12500      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> comms_recv_real                           25000       25000      0.09s  |
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
|   o-- phonon_calculate                        12500                         |
|  /                                                                          |
| O-> comms_recv_complex                        12500       12500      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues              18050                         |
|  /                                                                          |
| O-> comms_copy_bnd_logical                    18050       18050      0.06s  |
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
|   o-- phonon_real_to_fine                     12501                         |
|  /                                                                          |
| O-> check_image_list                          12501       12501      0.04s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped          729         729      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_print_force_const_matrix               1           1      0.03s  |
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
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_restore_wrapped                        2                         |
| |/                                                                          |
| O-> cell_analyse_symmetry_wrapped                 3           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_phonon_fine_data                  1                         |
|  /o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                6           4      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_generate_symmetry_wrapped                2           1      0.02s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       2           1      0.00s  |
|   o-> algor_invert_real                           2           1      0.00s  |
|   o-> cell_find_related_atoms                     2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          4377                         |
|  /                                                                          |
| O-> algor_uniform_random                       4377        4374      0.01s  |
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
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> parameters_reread_integer                   4           4      0.00s  |
|   o-> parameters_reread_character                 5           5      0.00s  |
|   o-> parameters_reread_physical                  4           4      0.00s  |
|   o-> parameters_reread_real                      1           1      0.00s  |
|   o-> parameters_reread_logical                   4           4      0.00s  |
|   o-> parameters_validate                         1           1      0.00s  |
|   o-> comms_gcopy_integer                         2           2      0.00s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> thermo_calculate                              1           1      0.00s  |
|    /                                                                        |
|   o-> secondd_symmetrize_born_charges             1           1      0.00s  |
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
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
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
|   o-- cell_kpoints_mp_wrapped                     2                         |
|  /o-- cell_generate_MP_set_wrapped                4                         |
|  /o-- phonon_calculate                            4                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                      12           8      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                          729                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                570                         |
|  /                                                                          |
| O-> comms_copy_kp_real                          570         570      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.00s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_serial                         1           1      0.00s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
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
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            3                         |
|  /                                                                          |
| O-> model_delete_stored_file                      3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_serial                           1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
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
| O-> comms_gcopy_integer                         377         222      0.00s  |
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
|   o-- thermo_calculate                            1                         |
|  /                                                                          |
| O-> secondd_symmetrize_born_charges               1           1      0.00s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                    1           1      0.00s  |
|   o-> secondd_apply_symmetry_to_born             48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                190                         |
|  /                                                                          |
| O-> comms_copy_bnd_real                         190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
| |/                                                                          |
| O-> density_allocate                              3           3      0.00s  |
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
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                       4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           5                         |
|  /                                                                          |
| O-> parameters_reread_character                   5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges            48                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_born               48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           4                         |
|  /                                                                          |
| O-> parameters_reread_physical                    4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                        48                         |
|  /                                                                          |
| O-> secondd_determinant                          48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               2           2      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          14      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          14      0.00s  |
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
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
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
|   o-- parameters_reread                           4                         |
|  /                                                                          |
| O-> parameters_reread_logical                     4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_serial                         1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
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
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       1                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal                4                         |
|  /o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         6           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /o-- model_continuation                          3                         |
| |/                                                                          |
| O-> cell_distribute_kpoints_wrapped               4           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
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
|   o-- basis_initialise                            6                         |
|  /                                                                          |
| O-> basis_utils_prime_factors                     6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           1                         |
|  /                                                                          |
| O-> parameters_reread_real                        1           1      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                      4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> comms_reduce_bnd_real                         1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                         1                         |
|  /                                                                          |
| O-> secondd_analyse_symmetries                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              2                         |
|  /                                                                          |
| O-> cell_find_related_atoms                       2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> parameters_nspins                             3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_recip_lattice                            3           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                         1                         |
|  /                                                                          |
| O-> secondd_irrep_symbol                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           2                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_calculate_volume                         4           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
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
|   o-- cell_generate_symmetry_wrapped              2                         |
|  /o-- cell_read_wrapped                           1                         |
| |/                                                                          |
| O-> cell_detect_primitive                         3           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 1                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> assign_nodes                                  2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> reassign_nodes                                2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
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
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_generate_cell_constraints                1           0not profiled |
|    /                                                                        |
|   o-> algor_uniform_random_array                  1           0not profiled |
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
|   o-> model_continuation                          1           1      0.24s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.02s  |
|   o-> phonon_calculate                            1           1    147.43s  |
|   o-> thermo_calculate                            1           1      0.00s  |
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
|   o-- cell_generate_cell_constraints              1                         |
|  /                                                                          |
| O-> algor_uniform_random_array                    1           0not profiled |
|    /                                                                        |
|   o-> algor_set_random_seed                       1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           0not profiled |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           0not profiled |
|   o-> comms_gcopy_integer                        64           0not profiled |
|   o-> cell_check_keywords                         1           0not profiled |
|   o-> cell_read_line_real                         3           0not profiled |
|   o-> cell_read_line_char                         1           0not profiled |
|   o-> cell_allocate                               1           0not profiled |
|   o-> cell_calculate_volume                       2           0not profiled |
|   o-> cell_recip_lattice                          1           0not profiled |
|   o-> cell_generate_symmetry_wrapped              1           0not profiled |
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
|   o-> cell_detect_primitive                       1           0not profiled |
|   o-> cell_check_group                            1           0not profiled |
|   o-> cell_count_symmetry_translations_wrap       1           0not profiled |
|   o-> cell_check_group_equiv                      1           0not profiled |
|   o-> cell_symmetry_test                          2           0not profiled |
|   o-> cell_generate_ionic_constraints             1           0not profiled |
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
|   o-> parameters_read_xc_block                    1           0not profiled |
|   o-> parameters_validate                         1           0not profiled |
|   o-> parameters_bcast                            1           0not profiled |
|   o-> algor_set_random_seed                       1           0not profiled |
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
|   o-- find_strategy                               1                         |
|  /                                                                          |
| O-> best_mixed_strategy                           1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> io_delete_file                                1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_check_cell_constraints                 1                         |
|  /                                                                          |
| O-> cell_cart_lattice_to_abc                      1           0not profiled |
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
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_line_char                           1           0not profiled |
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
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_check_cell_constraints                   1           0not profiled |
|    /                                                                        |
|   o-> cell_cart_lattice_to_abc                    1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           3                         |
|  /                                                                          |
| O-> cell_read_line_real                           3           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_read_phonon_data                       1                         |
| |/                                                                          |
| O-> cell_kpoints_mp_wrapped                       2           0not profiled |
|    /                                                                        |
|   o-> bib_add                                     2           0not profiled |
|   o-> cell_generate_MP_set_wrapped                2           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_supercell_data                      1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_optics_data                         1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_setup_keywords                           1           0not profiled |
+-----------------------------------------------------------------------------+
     190 different subroutines and functions were traced
Hash collisions:          1