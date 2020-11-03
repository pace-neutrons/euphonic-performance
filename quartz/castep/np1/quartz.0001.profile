+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    869.73s  |
|    /                                                                        |
|   o-> phonon_initialise                           1           1      0.00s  |
|   o-> secondd_symmetry_init                       1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
|   o-> q_is_a_g                                25018       25018      0.08s  |
|   o-> bib_add                                     3           3      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> cell_rationalise_coordinates                1           1      0.00s  |
|   o-> secondd_compare_kpoints                     1           1      0.00s  |
|   o-> phonon_write_header                         2           2      0.00s  |
|   o-> phonon_calculate_dynamical_dfpt             1           1      0.00s  |
|   o-> phonon_recip_to_real                        1           1      0.80s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      0.16s  |
|   o-> phonon_real_to_fine                     25001       25001    737.46s  |
|   o-> phonon_enforce_dmat_sumrule             25000       25000     23.29s  |
|   o-> phonon_prepare_and_diagonalise          25000       25000      7.79s  |
|   o-> phonon_accumulate_adp                   25000       25000      0.38s  |
|   o-> phonon_diag_and_output                  25000       25000     99.14s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.00s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_symmetrize_born_charges             1           1      0.00s  |
|   o-> phonon_enforce_born_sumrule                 1           1      0.00s  |
|   o-> phonon_print_born_charges                   1           1      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25001                         |
|  /                                                                          |
| O-> phonon_real_to_fine                       25001       25001    737.46s  |
|    /                                                                        |
|   o-> cell_num_supercells                     25001       25001      0.08s  |
|   o-> check_image_list                        25001       25001      0.10s  |
|   o-> secondd_symmetrize_dmat_cmplx           25001       25001      3.84s  |
|   o-> secondd_symmetrize_born_charges         25001       25001      2.39s  |
|   o-> ewald_calc_E2_dipole_dipole             25001       25001    716.77s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                       17                         |
|  /o-- phonon_real_to_fine                     25001                         |
| |/                                                                          |
| O-> ewald_calc_E2_dipole_dipole               25018       25018    717.33s  |
|    /                                                                        |
|   o-> comms_reduce_kp_logical                    34          34      0.00s  |
|   o-> comms_reduce_bnd_logical                   34          34      0.00s  |
|   o-> comms_reduce_gv_logical                    34          34      0.00s  |
|   o-> ewald_calculate_num_cells                   1           1      0.00s  |
|   o-> ewald_init_lookup                           1           1      0.00s  |
|   o-> algor_invert_real                       25018       25018      0.08s  |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
|   o-> comms_reduce_gv_complex                    34          34      0.00s  |
|   o-> comms_reduce_bnd_complex                   34          34      0.00s  |
|   o-> comms_reduce_kp_complex                    34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> phonon_diag_and_output                    25000       25000     99.14s  |
|    /                                                                        |
|   o-> q_is_a_g                                50000       50000      0.15s  |
|   o-> phonon_prepare_and_diagonalise          25000       25000      7.49s  |
|   o-> secondd_calc_irreps                     25000       25000      5.27s  |
|   o-> phonon_write                            50000       50000     80.13s  |
|   o-> phonon_print_irreps                     25000       25000      4.95s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  50000                         |
|  /                                                                          |
| O-> phonon_write                              50000       50000     80.13s  |
|    /                                                                        |
|   o-> q_is_a_g                                50000       50000      0.15s  |
|   o-> phonon_write_freqs                      50000       50000      9.30s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule               25000       25000     23.29s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                 50000       50000      0.23s  |
|   o-> phonon_diagonalise_d_cmplx              75000       75000      7.97s  |
|   o-> secondd_find_acoustics                  25000       25000      1.00s  |
|   o-> secondd_symmetrize_dmat_cmplx           25000       25000     11.81s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /o-- phonon_real_to_fine                     25001                         |
|  /o-- phonon_enforce_dmat_sumrule             25000                         |
|  /o-- phonon_prepare_and_diagonalise          50000                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx            100101      100101     23.18s  |
|    /                                                                        |
|   o-> two_q_is_a_g                           100101      100101      0.31s  |
|   o-> hermitian4                             100101      100101      0.49s  |
|   o-> cell_copy_symmetry                     200202      200202      0.94s  |
|   o-> cell_reduce_symmetry_ops_wrapped       100101      100101      2.88s  |
|   o-> secondd_group_symmetrize_dmat          100101      100101     13.31s  |
|   o-> cell_deallocate                        100101      100101      0.37s  |
|   o-> secondd_find_inversion                 100101      100101      0.37s  |
|   o-> secondd_tr_symmetrize_dmat              25053       25053      1.24s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /o-- phonon_diag_and_output                  25000                         |
| |/                                                                          |
| O-> phonon_prepare_and_diagonalise            50000       50000     15.29s  |
|    /                                                                        |
|   o-> q_is_a_g                               100000      100000      0.30s  |
|   o-> secondd_symmetrize_dmat_cmplx           50000       50000      7.51s  |
|   o-> phonon_constrain_dmat                   50000       50000      0.16s  |
|   o-> phonon_mass_weight_dmat                 50000       50000      0.23s  |
|   o-> phonon_diagonalise_d_cmplx              50000       50000      4.47s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100101                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat            100101      100101     13.31s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped     100101      100101      0.33s  |
|   o-> secondd_check_equiv_ions               100101      100101      0.53s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     325245      325245      9.20s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             75000                         |
|  /o-- phonon_prepare_and_diagonalise          50000                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx               125000      125000     12.44s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat            100                         |
|  /o-- secondd_group_symmetrize_dmat          325245                         |
|  /o-- secondd_tr_symmetrize_dmat              25053                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion       350398      350398     10.07s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases            350398      350398      3.94s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_write                            50000                         |
|  /                                                                          |
| O-> phonon_write_freqs                        50000       50000      9.30s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25000                         |
|  /                                                                          |
| O-> secondd_calc_irreps                       25000       25000      5.27s  |
|    /                                                                        |
|   o-> cell_copy_symmetry                      50000       50000      0.22s  |
|   o-> cell_reduce_symmetry_ops_wrapped        25000       25000      0.46s  |
|   o-> cell_check_group                        25000       25000      0.24s  |
|   o-> cell_factor_group_symmetry_wrapped      25000       25000      0.08s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped    50000       50000      0.48s  |
|   o-> secondd_check_equiv_ions                25000       25000      0.08s  |
|   o-> secondd_compute_atom_phases             25000       25000      0.08s  |
|   o-> cell_conjugacy_classes_wrapped          25000       25000      0.26s  |
|   o-> cell_deallocate                         25000       25000      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25000                         |
|  /                                                                          |
| O-> phonon_print_irreps                       25000       25000      4.95s  |
|    /                                                                        |
|   o-> cell_check_group                        25000       25000      1.17s  |
|   o-> cell_factor_group_symmetry_wrapped      25000       25000      0.10s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped   150000      150000      1.41s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion     350398                         |
|  /o-- secondd_calc_irreps                     25000                         |
| |/                                                                          |
| O-> secondd_compute_atom_phases              375398      375398      4.02s  |
|    /                                                                        |
|   o-> q_is_a_g                               200254      200254      0.61s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reduce_symmetry_ops_wrapped       125101                         |
|  /o-- secondd_calc_irreps                     25000                         |
|  /o-- phonon_print_irreps                     25000                         |
| |/                                                                          |
| O-> cell_check_group                         175102      175101      3.59s  |
|    /                                                                        |
|   o-> algor_invert_real                      425150      425144      1.30s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100101                         |
|  /o-- secondd_calc_irreps                     25000                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped         125101      125101      3.34s  |
|    /                                                                        |
|   o-> cell_check_group                       125101      125101      2.18s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_real_to_fine                     25001                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- thermo_calculate                            1                         |
| |/                                                                          |
| O-> secondd_symmetrize_born_charges           25004       25004      2.39s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                25004       25004      1.06s  |
|   o-> secondd_apply_symmetry_to_born         150024      150024      0.69s  |
+-----------------------------------------------------------------------------+
|   o-- cell_find_reduced_cell                   1224                         |
|  /o-- cell_sort_kpoints_with_recip             2446                         |
|  /o-- cell_check_group                       425150                         |
|  /o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- ewald_calc_E2_dipole_dipole             25018                         |
|  /o-- cell_find_kpoint_transform_kpoints        100                         |
|  /o-- cell_symmetry_symbol_wrapped_wrapped   200000                         |
| |/                                                                          |
| O-> algor_invert_real                        653945      653897      1.99s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                     50000                         |
|  /o-- phonon_print_irreps                    150000                         |
| |/                                                                          |
| O-> cell_symmetry_symbol_wrapped_wrapped     200000      200000      1.89s  |
|    /                                                                        |
|   o-> algor_invert_real                      200000      200000      0.61s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges         25004                         |
|  /o-- secondd_apply_symmetry_to_dmat            100                         |
|  /o-- secondd_group_symmetrize_dmat          100101                         |
|  /o-- secondd_tr_symmetrize_dmat              25053                         |
|  /o-- secondd_calc_irreps                     25000                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                 175258      175258      1.75s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions            175727      175727      0.54s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25018                         |
|  /o-- phonon_calculate_dynamical_dfpt            27                         |
|  /o-- secondd_compute_atom_phases            200254                         |
|  /o-- phonon_prepare_and_diagonalise         100000                         |
|  /o-- phonon_diag_and_output                  50000                         |
|  /o-- phonon_write                            50000                         |
| |/                                                                          |
| O-> q_is_a_g                                 425299      425299      1.29s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25053                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                25053       25053      1.24s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                25053       25053      0.09s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      25053       25053      0.87s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          200202                         |
|  /o-- secondd_calc_irreps                     50000                         |
| |/                                                                          |
| O-> cell_copy_symmetry                       250202      250202      1.15s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             25000                         |
|  /                                                                          |
| O-> secondd_find_acoustics                    25000       25000      1.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      0.80s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      0.16s  |
|   o-> cell_map_kpoint_subset                      1           1      0.00s  |
|   o-> secondd_symmetrize_born_charges             1           1      0.00s  |
|   o-> ewald_calc_E2_dipole_dipole                17          17      0.56s  |
|   o-> cell_find_kpoint_transform_kpoints        100         100      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat            100         100      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx             100         100      0.02s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_born_charges        150024                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_born           150024      150024      0.69s  |
+-----------------------------------------------------------------------------+
|   o-- cell_count_symmetry_translations_wrap       1                         |
|  /o-- secondd_group_symmetrize_dmat          100101                         |
|  /o-- secondd_calc_irreps                     25000                         |
|  /o-- cell_conjugacy_classes_wrapped          25000                         |
|  /o-- phonon_print_irreps                     25000                         |
| |/                                                                          |
| O-> cell_factor_group_symmetry_wrapped       175102      175101      0.58s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions               175727                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions              175727      175727      0.54s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100101                         |
|  /                                                                          |
| O-> hermitian4                               100101      100101      0.49s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             50000                         |
|  /o-- phonon_prepare_and_diagonalise          50000                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                  100000      100000      0.46s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               9                         |
|  /o-- model_reset                                 7                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              2                         |
|  /o-- secondd_symmetrize_dmat_cmplx          100101                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- secondd_calc_irreps                     25000                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonons                                     1                         |
| |/                                                                          |
| O-> cell_deallocate                          125125      125124      0.45s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                     25000       25000      0.38s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100101                         |
|  /                                                                          |
| O-> secondd_find_inversion                   100101      100101      0.37s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2      0.32s  |
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
|   o-> cell_kpoints_spacing_wrapped                2           2      0.06s  |
|   o-> cell_generate_cell_constraints              2           2      0.00s  |
|   o-> cell_generate_ionic_constraints             2           2      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100101                         |
|  /                                                                          |
| O-> two_q_is_a_g                             100101      100101      0.31s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                     25000                         |
|  /                                                                          |
| O-> cell_conjugacy_classes_wrapped            25000       25000      0.26s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      25000       25000      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          50000                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                     50000       50000      0.16s  |
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
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                     25001                         |
|  /                                                                          |
| O-> check_image_list                          25001       25001      0.10s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped          900         900      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_generate_ionic_constraints               3           2      0.09s  |
|    /                                                                        |
|   o-> algor_uniform_random                     7236        7200      0.02s  |
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
|   o-> parameters_nspins                           3           3      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       9           9      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- phonon_real_to_fine                     25001                         |
| |/                                                                          |
| O-> cell_num_supercells                       25010       25010      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      0.06s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_mp_wrapped                     2                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
| |/                                                                          |
| O-> cell_generate_MP_set_wrapped                  4           2      0.06s  |
|    /                                                                        |
|   o-> bib_add                                     4           2      0.00s  |
|   o-> cell_reduce_kpoints_internal                4           2      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_MP_set_wrapped                4                         |
|  /                                                                          |
| O-> cell_reduce_kpoints_internal                  4           2      0.06s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       4           2      0.00s  |
|   o-> cell_sort_kpoints_with_recip             1216        1202      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal             1216                         |
|  /o-- cell_map_kpoint_subset                      7                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip               1223        1209      0.06s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                   1223        1209      0.01s  |
|   o-> algor_invert_real                        2446        2418      0.01s  |
|   o-> algor_sort                               1223        1209      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.06s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_set_serial_grids                      1           1      0.03s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.01s  |
|   o-> basis_count_plane_waves                     1           1      0.01s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.01s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.01s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> thermo_calculate                              1           1      0.03s  |
|    /                                                                        |
|   o-> secondd_symmetrize_born_charges             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_set_serial_grids                        1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          7236                         |
|  /                                                                          |
| O-> algor_uniform_random                       7236        7200      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip             1223                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                     1224        1210      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                        1224        1210      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_dmat              100         100      0.01s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                  100         100      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat_ion        100         100      0.00s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> parameters_reread_integer                   3           3      0.00s  |
|   o-> parameters_reread_character                 7           7      0.00s  |
|   o-> parameters_reread_logical                   4           4      0.00s  |
|   o-> parameters_validate                         1           1      0.00s  |
|   o-> comms_gcopy_integer                         2           2      0.00s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> model_initialise                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.00s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_serial                         1           1      0.00s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
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
|   o-- cell_sort_kpoints_with_recip             1223                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                 1225        1211      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
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
|   o-- check_image_list                          900                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            900         900      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_serial                           1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
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
|   o-> comms_gcopy_logical                       141          72      0.00s  |
|   o-> comms_gcopy_character                     213         114      0.00s  |
|   o-> comms_gcopy_integer                       161          82      0.00s  |
|   o-> parameters_reallocate_xc                   20          13      0.00s  |
|   o-> comms_gcopy_real                          212         106      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_restore_wrapped                        2                         |
| |/                                                                          |
| O-> cell_analyse_symmetry_wrapped                 3           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_initialise                            2                         |
|  /o-- model_continuation                          4                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                    10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_generate_symmetry_wrapped                1           1      0.00s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_find_related_atoms                     1           1      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_kp_real                         42          42      0.00s  |
|   o-> comms_copy_bnd_logical                    196         196      0.00s  |
|   o-> comms_copy_bnd_real                        28          28      0.00s  |
|   o-> comms_copy_gv_real                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_mp_wrapped                     2                         |
|  /o-- cell_generate_MP_set_wrapped                4                         |
|  /o-- phonon_calculate                            3                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                      11           7      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            3                         |
|  /                                                                          |
| O-> model_delete_stored_file                      3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      100                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          100         100      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         100         100      0.00s  |
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
|   o-- ewald_calc_E2_dipole_dipole                 1                         |
|  /                                                                          |
| O-> ewald_init_lookup                             1           1      0.00s  |
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
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
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
| O-> comms_gcopy_integer                         376         221      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                196                         |
|  /                                                                          |
| O-> comms_copy_bnd_logical                      196         196      0.00s  |
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
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip                7           7      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_calculate_dynamical_dfpt               1           1      0.00s  |
|    /                                                                        |
|   o-> q_is_a_g                                   27          27      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_phonon_fine_data                  1                         |
|  /o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                6           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_complex                    34                         |
|  /o-- comms_reduce_bnd_complex                   34                         |
|  /o-- comms_reduce_kp_complex                    34                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                  102         102      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_gv_complex                      34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_kp_complex                      34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_bnd_complex                     34          34      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 34          34      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
| |/                                                                          |
| O-> density_allocate                              3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
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
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           7                         |
|  /                                                                          |
| O-> parameters_reread_character                   7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_generate_cell_constraints                3           2      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random_array                  3           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_print_born_charges                     1           1      0.00s  |
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
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                      38          38      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 42                         |
|  /                                                                          |
| O-> comms_copy_kp_real                           42          42      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- ewald_calc_E2_dipole_dipole                34                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                     38          38      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           20                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     20          13      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        20          13      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           4                         |
|  /                                                                          |
| O-> parameters_reread_logical                     4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_validate                           2           1      0.00s  |
|    /                                                                        |
|   o-> parameters_xc_allowed                      12           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                34                         |
|  /                                                                          |
| O-> comms_reduce_gv_logical                      34          34      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 28                         |
|  /                                                                          |
| O-> comms_copy_bnd_real                          28          28      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           3                         |
|  /                                                                          |
| O-> parameters_reread_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        3                         |
|  /o-- comms_reduce_bnd_real                       3                         |
|  /o-- comms_reduce_kp_real                        3                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       9           9      0.00s  |
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
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               2           2      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ewald_calc_E2_dipole_dipole                 2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_real                         3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_gv_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal                4                         |
|  /o-- cell_generate_qpoints_local                 1                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         6           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
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
|   o-- parameters_validate                        12                         |
|  /                                                                          |
| O-> parameters_xc_allowed                        12           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_radial_transform                     1           1      0.00s  |
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
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> density_deallocate                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_generate_symmetry_wrapped              1                         |
| |/                                                                          |
| O-> cell_find_related_atoms                       2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 1                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
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
|   o-- density_read_serial                         1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_cell_constraints              3                         |
|  /                                                                          |
| O-> algor_uniform_random_array                    3           2      0.00s  |
|    /                                                                        |
|   o-> algor_set_random_seed                       1           0not profiled |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_enforce_born_sumrule                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           2                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_calculate_volume                         4           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_generate_symmetry_wrapped              1                         |
| |/                                                                          |
| O-> cell_detect_primitive                         2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_require_gs_wvfn                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> find_strategy                                 2           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     2                         |
|  /                                                                          |
| O-> reassign_nodes                                2           1      0.00s  |
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
|   o-> model_continuation                          1           1      0.08s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.00s  |
|   o-> phonon_calculate                            1           1    869.73s  |
|   o-> thermo_calculate                            1           1      0.03s  |
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
|   o-- phonons                                     1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           0not profiled |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           0not profiled |
|   o-> comms_gcopy_integer                        64           0not profiled |
|   o-> cell_check_keywords                         1           0not profiled |
|   o-> cell_read_line_real                        27           0not profiled |
|   o-> cell_read_line_char                         9           0not profiled |
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
|   o-- cell_read_wrapped                           9                         |
|  /                                                                          |
| O-> cell_read_line_char                           9           0not profiled |
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
|   o-- cell_read_wrapped                          27                         |
|  /                                                                          |
| O-> cell_read_line_real                          27           0not profiled |
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
     191 different subroutines and functions were traced
Hash collisions:          1
