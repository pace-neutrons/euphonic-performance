+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> castep                                        1           1    219.83s  |
|    /                                                                        |
|   o-> memory_system_initialise                    1           1      0.00s  |
|   o-> comms_gcopy_real                            1           1      0.00s  |
|   o-> cell_read_wrapped                           1           1      9.79s  |
|   o-> ion_read                                    1           1      0.00s  |
|   o-> parameters_read                             1           1      0.01s  |
|   o-> bib_add                                     4           4      0.00s  |
|   o-> tddft_set_tddft_on                          1           1      0.00s  |
|   o-> multigrid_dlmg_initialise                   1           1      0.00s  |
|   o-> implicit_solvent_autosolv_check             1           1      0.00s  |
|   o-> model_continuation                          1           1     15.21s  |
|   o-> ion_ion_initialise                          1           1      0.00s  |
|   o-> openbc_locps_initialise                     1           1      0.00s  |
|   o-> nlxc_initialise                             1           1      0.33s  |
|   o-> parameters_output                           1           1      0.01s  |
|   o-> cell_output_wrapped                         1           1      0.01s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> phonon_calculate                            1           1    194.42s  |
|   o-> check_forces_stresses                       1           1      0.00s  |
|   o-> model_write                                 1           1      0.03s  |
|   o-> bib_output                                  1           1      0.00s  |
|   o-> ion_ion_exit                                1           1      0.00s  |
|   o-> multigrid_dlmg_exit                         1           1      0.00s  |
|   o-> model_deallocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    194.42s  |
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
|   o-> phonon_calculate_dynamical_dfpt             1           1      0.11s  |
|   o-> phonon_recip_to_real                        1           1      7.84s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> phonon_print_force_const_matrix             1           1      0.03s  |
|   o-> cell_supercell                              1           1      6.68s  |
|   o-> phonon_real_to_fine                     25001       25001     41.56s  |
|   o-> phonon_enforce_dmat_sumrule             25000       25000     54.43s  |
|   o-> phonon_prepare_and_diagonalise          25000       25000     13.10s  |
|   o-> phonon_accumulate_adp                   25000       25000      0.27s  |
|   o-> phonon_diag_and_output                  25000       25000     69.77s  |
|   o-> comms_reduce_gv_real                        1           1      0.00s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.00s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          50035                         |
|  /o-- phonon_recip_to_real                      729                         |
|  /o-- phonon_real_to_fine                     25001                         |
|  /o-- phonon_enforce_dmat_sumrule             25000                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx            100765      100765     85.41s  |
|    /                                                                        |
|   o-> two_q_is_a_g                           100765      100765      0.31s  |
|   o-> hermitian4                             100765      100765      0.32s  |
|   o-> cell_copy_symmetry                     201530      201530      1.29s  |
|   o-> cell_reduce_symmetry_ops_wrapped       100765      100765     24.99s  |
|   o-> secondd_group_symmetrize_dmat          100765      100765     29.20s  |
|   o-> cell_deallocate                        100765      100765      0.38s  |
|   o-> secondd_find_inversion                 100765      100765      0.31s  |
|   o-> secondd_tr_symmetrize_dmat             100765      100765     25.34s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            35                         |
|  /o-- phonon_calculate                        25000                         |
| |/                                                                          |
| O-> phonon_diag_and_output                    25035       25035     69.88s  |
|    /                                                                        |
|   o-> q_is_a_g                                50070       50070      0.15s  |
|   o-> phonon_prepare_and_diagonalise          25035       25035     15.44s  |
|   o-> secondd_calc_irreps                     25035       25035      4.00s  |
|   o-> phonon_write                            50035       50035      8.53s  |
|   o-> phonon_print_irreps                     25035       25035     40.68s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule               25000       25000     54.43s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                 50000       50000      0.15s  |
|   o-> phonon_diagonalise_d_cmplx              75000       75000      0.54s  |
|   o-> secondd_find_acoustics                  25000       25000      0.53s  |
|   o-> secondd_symmetrize_dmat_cmplx           25000       25000     50.97s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_output_wrapped                         1                         |
|  /o-- cell_reduce_symmetry_ops_wrapped       125800                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- phonon_print_irreps                     25035                         |
| |/                                                                          |
| O-> cell_check_group                         175872      175872     46.81s  |
|    /                                                                        |
|   o-> algor_invert_real                     2529209     2529209      7.69s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25001                         |
|  /                                                                          |
| O-> phonon_real_to_fine                       25001       25001     41.56s  |
|    /                                                                        |
|   o-> cell_num_supercells                     25001       25001      0.08s  |
|   o-> check_image_list                        25001       25001      0.08s  |
|   o-> secondd_symmetrize_dmat_cmplx           25001       25001     11.39s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25035                         |
|  /                                                                          |
| O-> phonon_print_irreps                       25035       25035     40.68s  |
|    /                                                                        |
|   o-> cell_check_group                        25035       25035     22.79s  |
|   o-> cell_factor_group_symmetry_wrapped      25035       25035      0.78s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped  1201680     1201680     11.28s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100765                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat            100765      100765     29.20s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped     100765      100765      1.01s  |
|   o-> secondd_check_equiv_ions               100765      100765      0.66s  |
|   o-> secondd_apply_symmetry_to_dmat_ion    1377788     1377788     22.14s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25035                         |
|  /o-- phonon_calculate                        25000                         |
| |/                                                                          |
| O-> phonon_prepare_and_diagonalise            50035       50035     28.55s  |
|    /                                                                        |
|   o-> q_is_a_g                               100070      100070      0.30s  |
|   o-> secondd_symmetrize_dmat_cmplx           50035       50035     22.68s  |
|   o-> phonon_constrain_dmat                   50035       50035      0.16s  |
|   o-> phonon_mass_weight_dmat                 50035       50035      0.15s  |
|   o-> phonon_print_dynamical_matrix           25035       25035      1.69s  |
|   o-> phonon_diagonalise_d_cmplx              50035       50035      0.31s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100765                         |
|  /o-- secondd_calc_irreps                     25035                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped         125800      125800     25.59s  |
|    /                                                                        |
|   o-> cell_check_group                       125800      125800     23.77s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100765                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat               100765      100765     25.34s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions               100765      100765     22.66s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     100765      100765      1.73s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat         1377788                         |
|  /o-- secondd_tr_symmetrize_dmat             100765                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion      1479282     1479282     23.88s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases           1479282     1479282     14.43s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat          100765                         |
|  /o-- secondd_tr_symmetrize_dmat             100765                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                 227294      227294     23.56s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions           3713781     3713781     11.20s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_continuation                            1           1     15.21s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.04s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   5           5      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> ion_initialise                              1           1      5.94s  |
|   o-> basis_initialise                            2           2      0.07s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> cell_reread                                 1           1      8.67s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> parameters_nspins                           3           3      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> wave_initialise_wv                          1           1      0.23s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.23s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       7           7      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> model_check_dependencies                    1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion    1479282                         |
|  /o-- secondd_calc_irreps                     25205                         |
| |/                                                                          |
| O-> secondd_compute_atom_phases             1504487     1504487     14.51s  |
|    /                                                                        |
|   o-> q_is_a_g                              1329406     1329406      4.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_phonon_fine_data                    2           2     13.81s  |
|    /                                                                        |
|   o-> cell_detect_MP                              2           2     13.30s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_phonon_fine_data                  2                         |
|  /o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                8           8     13.75s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2     13.38s  |
|    /                                                                        |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_recip_lattice                          2           2      0.00s  |
|   o-> cell_calculate_volume                       2           2      0.00s  |
|   o-> cell_generate_supercell_origins             2           2      0.00s  |
|   o-> cell_set_supercell_symmetry                 2           2      7.65s  |
|   o-> cell_copy_kpoints                           2           2      0.00s  |
|   o-> cell_kpoints_spacing_wrapped                2           2      4.39s  |
|   o-> cell_generate_ionic_constraints             2           2      1.34s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_find_reduced_cell                  70185                         |
|  /o-- cell_sort_kpoints_with_recip           140368                         |
|  /o-- cell_check_group                      2529209                         |
|  /o-- ion_atom_pn_pseudise                        1                         |
|  /o-- cell_symmetry_symbol_wrapped_wrapped  1252076                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- cell_find_kpoint_transform_kpoints        729                         |
| |/                                                                          |
| O-> algor_invert_real                       3992575     3992575     12.12s  |
+-----------------------------------------------------------------------------+
|   o-- cell_output_wrapped                        48                         |
|  /o-- secondd_calc_irreps                     50348                         |
|  /o-- phonon_print_irreps                   1201680                         |
| |/                                                                          |
| O-> cell_symmetry_symbol_wrapped_wrapped    1252076     1252076     11.76s  |
|    /                                                                        |
|   o-> algor_invert_real                     1252076     1252076      3.80s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions              3713781                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions             3713781     3713781     11.20s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           1      9.79s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        64          64      0.00s  |
|   o-> cell_check_keywords                         1           1      0.00s  |
|   o-> cell_read_line_real                         3           3      0.00s  |
|   o-> cell_read_line_char                         1           1      0.00s  |
|   o-> cell_allocate                               1           1      0.00s  |
|   o-> cell_calculate_volume                       2           2      0.00s  |
|   o-> cell_recip_lattice                          1           1      0.00s  |
|   o-> cell_generate_symmetry_wrapped              1           1      0.02s  |
|   o-> cell_analyse_symmetry_wrapped               1           1      0.01s  |
|   o-> cell_kpoints_mp_wrapped                     1           1      0.18s  |
|   o-> cell_read_optics_data                       1           1      0.00s  |
|   o-> cell_read_bs_data                           1           1      0.00s  |
|   o-> cell_read_spectral_data                     1           1      0.00s  |
|   o-> cell_read_phonon_data                       1           1      0.05s  |
|   o-> cell_read_phonon_fine_data                  1           1      6.93s  |
|   o-> cell_read_magres_data                       1           1      0.00s  |
|   o-> cell_read_elnes_data                        1           1      0.00s  |
|   o-> cell_read_supercell_data                    1           1      0.00s  |
|   o-> cell_generate_cell_constraints              1           1      0.00s  |
|   o-> cell_check_cell_constraints                 1           1      0.00s  |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> cell_check_group                            1           1      0.00s  |
|   o-> cell_count_symmetry_translations_wrap       1           1      0.00s  |
|   o-> cell_check_group_equiv                      1           1      0.00s  |
|   o-> cell_symmetry_test                          2           2      0.00s  |
|   o-> cell_generate_ionic_constraints             1           1      0.00s  |
|   o-> comms_gcopy_logical                        11          11      0.00s  |
|   o-> comms_gcopy_real                           80          80      0.00s  |
|   o-> comms_gcopy_character                       4           4      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.44s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> cell_reread                                   1           1      8.67s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        60          60      0.00s  |
|   o-> cell_check_keywords                         1           1      0.00s  |
|   o-> cell_read_optics_data                       1           1      0.00s  |
|   o-> cell_read_bs_data                           1           1      0.00s  |
|   o-> cell_read_spectral_data                     1           1      0.00s  |
|   o-> cell_read_phonon_data                       1           1      0.05s  |
|   o-> cell_read_phonon_fine_data                  1           1      6.88s  |
|   o-> cell_read_magres_data                       1           1      0.00s  |
|   o-> cell_read_elnes_data                        1           1      0.00s  |
|   o-> cell_read_supercell_data                    1           1      0.00s  |
|   o-> cell_generate_cell_constraints              1           1      0.00s  |
|   o-> cell_check_cell_constraints                 1           1      0.00s  |
|   o-> comms_gcopy_real                           78          78      0.00s  |
|   o-> comms_gcopy_character                       4           4      0.00s  |
|   o-> comms_gcopy_logical                        10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  50035                         |
|  /                                                                          |
| O-> phonon_write                              50035       50035      8.53s  |
|    /                                                                        |
|   o-> q_is_a_g                                50035       50035      0.15s  |
|   o-> phonon_write_freqs                      50035       50035      2.50s  |
|   o-> secondd_find_acoustics                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      7.84s  |
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
| O-> cell_set_supercell_symmetry                   2           2      7.65s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_reduce_symmetry_supercell              2           2      0.27s  |
|   o-> cell_find_related_atoms_supercell           2           2      4.98s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> ion_initialise                                1           1      5.94s  |
|    /                                                                        |
|   o-> ion_allocate                                1           1      0.00s  |
|   o-> ion_atom_allocate_pspot                     2           2      0.04s  |
|   o-> ion_atom_generate_psp                       1           1      4.87s  |
|   o-> ion_set_data                                1           1      0.03s  |
|   o-> ion_atom_deallocate_pspot                   3           3      0.00s  |
|   o-> ion_set_psp                                 1           1      0.01s  |
|   o-> ion_atom_pseudo_scf                         1           1      0.98s  |
|   o-> ion_clebsch_gordan                          1           1      0.00s  |
|   o-> ion_atom_radial_transform                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      4.98s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_generate_psp                         1           1      4.87s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      1           1      0.00s  |
|   o-> ion_atom_init_ae_atom                       1           1      0.00s  |
|   o-> ion_atom_ae_scf                             1           1      0.37s  |
|   o-> ion_atom_define_psp                         1           1      0.24s  |
|   o-> ion_atom_construct_psp                      1           1      3.97s  |
|   o-> ion_atom_descreen_psp                       1           1      0.09s  |
|   o-> ion_atom_output_psp                         1           1      0.21s  |
|   o-> ion_atom_basis_ae_dealloc                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25036                         |
|  /o-- phonon_calculate_dynamical_dfpt            53                         |
|  /o-- phonon_diag_and_output                  50070                         |
|  /o-- phonon_prepare_and_diagonalise         100070                         |
|  /o-- secondd_compute_atom_phases           1329406                         |
|  /o-- phonon_write                            50035                         |
| |/                                                                          |
| O-> q_is_a_g                                1554670     1554670      4.72s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_MP_set_wrapped                5                         |
|  /o-- cell_unfold_kpoints_arg_trace               1                         |
| |/                                                                          |
| O-> cell_reduce_kpoints_internal                  6           6      4.64s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       6           6      0.00s  |
|   o-> cell_sort_kpoints_with_recip            70135       70135      4.36s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_mp_wrapped                     3                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
| |/                                                                          |
| O-> cell_generate_MP_set_wrapped                  5           5      4.62s  |
|    /                                                                        |
|   o-> bib_add                                     5           5      0.00s  |
|   o-> cell_reduce_kpoints_internal                5           5      4.61s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      4.39s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      4.39s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal            70135                         |
|  /o-- cell_map_kpoint_subset                     49                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip              70184       70184      4.36s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                  70184       70184      0.65s  |
|   o-> algor_invert_real                      140368      140368      0.42s  |
|   o-> algor_sort                              70184       70184      0.26s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                  25035                         |
|  /                                                                          |
| O-> secondd_calc_irreps                       25035       25035      4.00s  |
|    /                                                                        |
|   o-> cell_copy_symmetry                      50070       50070      0.32s  |
|   o-> cell_reduce_symmetry_ops_wrapped        25035       25035      0.60s  |
|   o-> cell_check_group                        25035       25035      0.24s  |
|   o-> cell_factor_group_symmetry_wrapped      25035       25035      0.08s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped    50348       50348      0.48s  |
|   o-> secondd_check_equiv_ions                25035       25035      0.24s  |
|   o-> secondd_compute_atom_phases             25205       25205      0.08s  |
|   o-> cell_conjugacy_classes_wrapped          25035       25035      0.26s  |
|   o-> cell_deallocate                         25035       25035      0.09s  |
|   o-> secondd_determinant                        48          48      0.00s  |
|   o-> secondd_analyse_symmetries                  1           1      0.00s  |
|   o-> secondd_irrep_symbol                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_construct_psp                        1           1      3.97s  |
|    /                                                                        |
|   o-> ion_atom_partial_wave                       7           7      0.00s  |
|   o-> ion_atom_pseudise                           7           7      0.04s  |
|   o-> ion_atom_write_pwave                        1           1      0.00s  |
|   o-> ion_atom_radin                          24361       24361      0.36s  |
|   o-> ion_atom_write_beta                         1           1      0.00s  |
|   o-> ion_atom_radial_transform                  36          36      0.98s  |
|   o-> ion_atom_fermi_contact                      8           8      0.00s  |
|   o-> ion_atom_apply_Tl                          24          24      0.00s  |
|   o-> ion_atom_real_derivative_kind1             48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_write                            50035                         |
|  /                                                                          |
| O-> phonon_write_freqs                        50035       50035      2.50s  |
+-----------------------------------------------------------------------------+
|   o-- cell_count_symmetry_translations_wrap       1                         |
|  /o-- cell_output_wrapped                         1                         |
|  /o-- secondd_group_symmetrize_dmat          100765                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- cell_conjugacy_classes_wrapped          25035                         |
|  /o-- phonon_print_irreps                     25035                         |
| |/                                                                          |
| O-> cell_factor_group_symmetry_wrapped       175872      175872      1.95s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          25035                         |
|  /                                                                          |
| O-> phonon_print_dynamical_matrix             25035       25035      1.69s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          201530                         |
|  /o-- secondd_calc_irreps                     50070                         |
| |/                                                                          |
| O-> cell_copy_symmetry                       251600      251600      1.61s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_generate_ionic_constraints               3           3      1.34s  |
|    /                                                                        |
|   o-> algor_uniform_random                     4377        4377      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         1                         |
|  /o-- ion_atom_construct_psp                     36                         |
|  /o-- ion_initialise                              1                         |
| |/                                                                          |
| O-> ion_atom_radial_transform                    38          38      1.17s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_pseudo_scf                           1           1      0.98s  |
|    /                                                                        |
|   o-> ion_atom_init_pseudo_basis                  1           1      0.01s  |
|   o-> ion_atom_init_pseudo_atom                   1           1      0.04s  |
|   o-> ion_atom_init_pseudo_H                      1           1      0.00s  |
|   o-> ion_atom_ps_diag                           59          59      0.87s  |
|   o-> ion_atom_set_pseudo_H                      59          59      0.02s  |
|   o-> ion_atom_regin                           2001        2001      0.01s  |
|   o-> ion_atom_basis_pseudo_dealloc               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                        59                         |
|  /                                                                          |
| O-> ion_atom_ps_diag                             59          59      0.87s  |
|    /                                                                        |
|   o-> ion_atom_regin                         128915      128915      0.40s  |
|   o-> ion_atom_rectoreal                        236         236      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          50035                         |
|  /o-- phonon_enforce_dmat_sumrule             75000                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx               125035      125035      0.85s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- nlxc_initialise                             1                         |
| |/                                                                          |
| O-> cell_generate_qpoints_local                   2           2      0.78s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       2           2      0.00s  |
|   o-> cell_detect_MP                              2           2      0.43s  |
|   o-> comms_gcopy_real                            6           6      0.00s  |
|   o-> comms_gcopy_integer                         4           4      0.00s  |
|   o-> comms_gcopy_logical                         2           2      0.00s  |
|   o-> cell_unfold_kpoints_arg_trace               1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70184                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                    70185       70185      0.65s  |
|    /                                                                        |
|   o-> algor_invert_real                       70185       70185      0.21s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_write                                1                         |
|  /o-- phonon_enforce_dmat_sumrule             25000                         |
| |/                                                                          |
| O-> secondd_find_acoustics                    25001       25001      0.53s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               7                         |
|  /o-- model_reset                                 8                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- secondd_symmetrize_dmat_cmplx          100765                         |
|  /o-- secondd_calc_irreps                     25035                         |
|  /o-- cell_supercell                              2                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_deallocate                          125822      125822      0.47s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           2263                         |
|  /o-- ion_atom_ae_hartree                       288                         |
|  /o-- ion_atom_ae_xc                             96                         |
|  /o-- ion_atom_define_psp                         3                         |
|  /o-- ion_atom_core_pseudise                    802                         |
|  /o-- ion_atom_kh_partial_wave                    7                         |
|  /o-- ion_atom_qc_pseudise_fn                     6                         |
|  /o-- ion_atom_construct_psp                  24361                         |
|  /o-- ion_atom_ps_solve                         280                         |
|  /o-- ion_atom_descreen_psp                    2058                         |
| |/                                                                          |
| O-> ion_atom_radin                            30164       30164      0.44s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                     56                         |
|  /o-- ion_atom_qc_pseudise_fn                   540                         |
|  /o-- ion_atom_init_pseudo_basis                150                         |
|  /o-- ion_atom_init_pseudo_H                     37                         |
|  /o-- ion_atom_pseudo_hartree                    60                         |
|  /o-- ion_atom_pseudo_xc                         60                         |
|  /o-- ion_atom_ps_diag                       128915                         |
|  /o-- ion_atom_calc_pseudo_rho                   59                         |
|  /o-- ion_atom_set_pseudo_H                    2183                         |
|  /o-- ion_atom_pseudo_scf                      2001                         |
| |/                                                                          |
| O-> ion_atom_regin                           134061      134061      0.41s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_ae_scf                               1           1      0.37s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_H                          1           1      0.00s  |
|   o-> ion_atom_ae_solve                          94          94      0.35s  |
|   o-> ion_atom_set_ae_H                          95          95      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                            94                         |
|  /                                                                          |
| O-> ion_atom_ae_solve                            94          94      0.35s  |
|    /                                                                        |
|   o-> ion_atom_koelling_harmon_solve             94          94      0.35s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_solve                          94                         |
|  /                                                                          |
| O-> ion_atom_koelling_harmon_solve               94          94      0.35s  |
|    /                                                                        |
|   o-> ion_atom_cfd_solve                       4670        4670      0.24s  |
|   o-> ion_atom_number_of_nodes                 2335        2335      0.01s  |
|   o-> ion_atom_radin                           2263        2263      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> nlxc_initialise                               1           1      0.33s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.33s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100765                         |
|  /                                                                          |
| O-> hermitian4                               100765      100765      0.32s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100765                         |
|  /                                                                          |
| O-> secondd_find_inversion                   100765      100765      0.31s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx          100765                         |
|  /                                                                          |
| O-> two_q_is_a_g                             100765      100765      0.31s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          50035                         |
|  /o-- phonon_enforce_dmat_sumrule             50000                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                  100035      100035      0.31s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.27s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        25000                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                     25000       25000      0.27s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                     25035                         |
|  /                                                                          |
| O-> cell_conjugacy_classes_wrapped            25035       25035      0.26s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      25035       25035      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70184                         |
|  /o-- ion_atom_output_psp                         1                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                70187       70187      0.26s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           4670                         |
|  /o-- ion_atom_kh_partial_wave                    7                         |
| |/                                                                          |
| O-> ion_atom_cfd_solve                         4677        4677      0.24s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_define_psp                           1           1      0.24s  |
|    /                                                                        |
|   o-> ion_atom_round_to_grid                     23          23      0.00s  |
|   o-> ion_atom_radin                              3           3      0.00s  |
|   o-> ion_atom_core_pseudise                      1           1      0.04s  |
|   o-> ion_atom_radial_transform                   1           1      0.19s  |
|   o-> ion_atom_derivative                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_initialise_wv                            1           1      0.23s  |
|     +- section "initialisation", branch on value of method:-                |
|       R                                           1           1      0.23s  |
|         \                                                                   |
|          o-> wave_spin_type_wv                    1           1      0.00s  |
|          o-> wave_prepare_init_wvfn               1           1      0.00s  |
|          o-> algor_set_random_seed                1           1      0.00s  |
|          o-> algor_uniform_random_array        2090        2090      0.01s  |
|          o-> wave_Sorthonormalise_wv              1           1      0.20s  |
|    /                                                                        |
|   o-> ion_set_projectors                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.23s  |
|    /                                                                        |
|   o-> comms_copy_kp_real                        570         570      0.00s  |
|   o-> comms_copy_bnd_logical                  36100       36100      0.11s  |
|   o-> comms_copy_bnd_real                       380         380      0.00s  |
|   o-> comms_copy_gv_real                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_read_phonon_data                       2                         |
| |/                                                                          |
| O-> cell_kpoints_mp_wrapped                       3           3      0.22s  |
|    /                                                                        |
|   o-> bib_add                                     3           3      0.00s  |
|   o-> cell_generate_MP_set_wrapped                3           3      0.22s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_output_psp                           1           1      0.21s  |
|    /                                                                        |
|   o-> algor_sort                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv                       1           1      0.20s  |
|    /                                                                        |
|   o-> wave_Sorthonormalise_wv_ks                190         190      0.20s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv                   190                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv_ks                  190         190      0.20s  |
|    /                                                                        |
|   o-> wave_calc_Soverlap_wv_ks                  190         190      0.19s  |
|   o-> wave_orthonormalise_over_wv_ks            190         190      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                190                         |
|  /                                                                          |
| O-> wave_calc_Soverlap_wv_ks                    190         190      0.19s  |
|    /                                                                        |
|   o-> coeffs_dot_all_self                       190         190      0.01s  |
|   o-> wave_beta_phi_wv_ks                       190         190      0.16s  |
|   o-> wave_q_dot_all_self_c                     190         190      0.00s  |
|   o-> comms_reduce_gv_complex                   190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                  190                         |
|  /                                                                          |
| O-> wave_beta_phi_wv_ks                         190         190      0.16s  |
|    /                                                                        |
|   o-> ion_set_projectors                        190         190      0.00s  |
|   o-> wave_calc_ps_q_nonzero                    190         190      0.00s  |
|   o-> ion_all_beta_multi_phi_recip              190         190      0.16s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                       190                         |
|  /                                                                          |
| O-> ion_all_beta_multi_phi_recip                190         190      0.16s  |
|    /                                                                        |
|   o-> ion_beta_recip_set                        190         190      0.13s  |
|   o-> algor_matmul_cmplx_cmplx                  190         190      0.02s  |
|   o-> comms_reduce_gv_complex                   190         190      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise          50035                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                     50035       50035      0.16s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip              190                         |
|  /                                                                          |
| O-> ion_beta_recip_set                          190         190      0.13s  |
|    /                                                                        |
|   o-> ion_set_projectors                        190         190      0.00s  |
|   o-> ion_cc_structure_factor                   190         190      0.00s  |
|   o-> ion_beta_recip_interpolation             3420        3420      0.06s  |
|   o-> basis_multiply_recip_reduced             3420        3420      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues              36100                         |
|  /                                                                          |
| O-> comms_copy_bnd_logical                    36100       36100      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_calculate_dynamical_dfpt               1           1      0.11s  |
|    /                                                                        |
|   o-> q_is_a_g                                   53          53      0.00s  |
|   o-> comms_reduce_kp_logical                     2           2      0.00s  |
|   o-> comms_reduce_bnd_logical                    2           2      0.00s  |
|   o-> phonon_diag_and_output                     35          35      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_phonon_data                         2           2      0.09s  |
|    /                                                                        |
|   o-> cell_kpoints_mp_wrapped                     2           2      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_descreen_psp                         1           1      0.09s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_atom                       1           1      0.00s  |
|   o-> ion_atom_set_ae_occ                         1           1      0.00s  |
|   o-> ion_atom_ps_solve                           1           1      0.01s  |
|   o-> ion_atom_radin                           2058        2058      0.03s  |
|   o-> ion_atom_ae_hartree                         1           1      0.00s  |
|   o-> ion_atom_ae_xc                              1           1      0.00s  |
|   o-> ion_atom_derivative                         1           1      0.00s  |
|   o-> ion_atom_ae_dealloc                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                     25001                         |
|  /                                                                          |
| O-> check_image_list                          25001       25001      0.08s  |
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
|  /o-- phonon_real_to_fine                     25001                         |
| |/                                                                          |
| O-> cell_num_supercells                       25010       25010      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.07s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_set_serial_grids                      1           1      0.00s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.00s  |
|   o-> basis_count_plane_waves                     1           1      0.02s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.02s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.01s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       3420                         |
|  /                                                                          |
| O-> ion_beta_recip_interpolation               3420        3420      0.06s  |
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
|   o-- ion_atom_pseudo_scf                         1                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_atom                     1           1      0.04s  |
|    /                                                                        |
|   o-> ion_atom_resolve_pseudo_cfg                 1           1      0.00s  |
|   o-> ion_atom_set_pseudo_occ                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         1                         |
|  /                                                                          |
| O-> ion_atom_core_pseudise                        1           1      0.04s  |
|    /                                                                        |
|   o-> ion_atom_set_qn                             1           1      0.00s  |
|   o-> ion_atom_poly_deriv                         1           1      0.00s  |
|   o-> ion_atom_radin                            802         802      0.01s  |
|   o-> ion_atom_regin                             56          56      0.00s  |
|   o-> ion_atom_solve_linear                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              2                         |
|  /                                                                          |
| O-> ion_atom_allocate_pspot                       2           2      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      7                         |
|  /                                                                          |
| O-> ion_atom_pseudise                             7           7      0.04s  |
|    /                                                                        |
|   o-> ion_atom_pn_pseudise                        1           1      0.00s  |
|   o-> ion_atom_qc_pseudise                        6           6      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudise                           6                         |
|  /                                                                          |
| O-> ion_atom_qc_pseudise                          6           6      0.04s  |
|    /                                                                        |
|   o-> ion_atom_qc_pseudise_fn                     6           6      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_qc_pseudise                        6                         |
|  /                                                                          |
| O-> ion_atom_qc_pseudise_fn                       6           6      0.04s  |
|    /                                                                        |
|   o-> ion_atom_set_qn                             6           6      0.00s  |
|   o-> ion_atom_poly_deriv                         6           6      0.00s  |
|   o-> ion_atom_radin                              6           6      0.00s  |
|   o-> ion_atom_expjl                           2406        2406      0.01s  |
|   o-> ion_atom_regin                            540         540      0.00s  |
|   o-> ion_atom_solve_linear                     264         264      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_write                                   1           1      0.03s  |
|    /                                                                        |
|   o-> model_write_all                             1           1      0.03s  |
|   o-> io_delete_file                              1           1      0.00s  |
|   o-> comms_barrier_farm                          1           1      0.00s  |
|   o-> comms_barrier                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> model_write_all                               1           1      0.03s  |
|    /                                                                        |
|   o-> parameters_dump                             1           1      0.00s  |
|   o-> cell_dump                                   2           2      0.00s  |
|   o-> model_write_occ_eigenvalues                 1           1      0.00s  |
|   o-> density_write                               1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_restore_wrapped                        2                         |
| |/                                                                          |
| O-> cell_analyse_symmetry_wrapped                 3           3      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_set_data                                  1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_print_force_const_matrix               1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /                                                                          |
| O-> cell_unfold_kpoints_arg_trace                 1           1      0.03s  |
|    /                                                                        |
|   o-> cell_reduce_kpoints_internal                1           1      0.03s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.02s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                            95                         |
|  /                                                                          |
| O-> ion_atom_set_ae_H                            95          95      0.02s  |
|    /                                                                        |
|   o-> ion_atom_ae_hartree                        95          95      0.01s  |
|   o-> ion_atom_ae_xc                             95          95      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                        59                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_H                        59          59      0.02s  |
|    /                                                                        |
|   o-> ion_atom_calc_pseudo_rho                   59          59      0.00s  |
|   o-> ion_atom_pseudo_hartree                    59          59      0.00s  |
|   o-> ion_atom_pseudo_xc                         59          59      0.00s  |
|   o-> ion_atom_regin                           2183        2183      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip              190                         |
|  /                                                                          |
| O-> algor_matmul_cmplx_cmplx                    190         190      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_generate_symmetry_wrapped                1           1      0.02s  |
|    /                                                                        |
|   o-> cell_detect_primitive                       1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
|   o-> cell_find_related_atoms                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_set_psp                                   1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       3420                         |
|  /                                                                          |
| O-> basis_multiply_recip_reduced               3420        3420      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_check_dependencies                      1           1      0.01s  |
|    /                                                                        |
|   o-> model_symmetry_unchanged                    1           1      0.01s  |
|   o-> model_ionic_constr_unchanged                1           1      0.00s  |
|   o-> model_cell_constr_unchanged                 1           1      0.00s  |
|   o-> model_pressure_unchanged                    1           1      0.00s  |
|   o-> model_efield_unchanged                      1           1      0.00s  |
|   o-> model_hubbard_u_unchanged                   1           1      0.00s  |
|   o-> model_kpoints_unchanged_2                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_symmetry_unchanged                      1           1      0.01s  |
|    /                                                                        |
|   o-> model_compare_matrices                   2304        2304      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                190                         |
|  /                                                                          |
| O-> wave_orthonormalise_over_wv_ks              190         190      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_complex                  190         190      0.00s  |
|   o-> algor_invert_complex                      190         190      0.00s  |
|   o-> comms_copy_gv_complex                     190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                  190                         |
|  /                                                                          |
| O-> coeffs_dot_all_self                         190         190      0.01s  |
|    /                                                                        |
|   o-> local_dot_all_self                        190         190      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           2335                         |
|  /                                                                          |
| O-> ion_atom_number_of_nodes                   2335        2335      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          4377                         |
|  /                                                                          |
| O-> algor_uniform_random                       4377        4377      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      729                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          729         729      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                         729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- coeffs_dot_all_self                       190                         |
|  /                                                                          |
| O-> local_dot_all_self                          190         190      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      1                         |
|  /o-- ion_atom_qc_pseudise_fn                   264                         |
| |/                                                                          |
| O-> ion_atom_solve_linear                       265         265      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_descreen_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_ps_solve                             1           1      0.01s  |
|    /                                                                        |
|   o-> ion_atom_sod_solve                        160         160      0.00s  |
|   o-> ion_atom_radin                            280         280      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> parameters_read                               1           1      0.01s  |
|    /                                                                        |
|   o-> parameters_keywords_setup                   1           1      0.00s  |
|   o-> comms_gcopy_integer                         3           3      0.00s  |
|   o-> parameters_read_xc_block                    1           1      0.00s  |
|   o-> parameters_validate                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
|   o-> algor_set_random_seed                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_ae_H                          95                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_ae_xc                               96          96      0.01s  |
|    /                                                                        |
|   o-> ion_atom_real_derivative                   96          96      0.00s  |
|   o-> ion_atom_radin                             96          96      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
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
|   o-- cell_generate_cell_constraints              2                         |
|  /o-- wave_initialise_wv                       2090                         |
| |/                                                                          |
| O-> algor_uniform_random_array                 2092        2092      0.01s  |
|    /                                                                        |
|   o-> algor_set_random_seed                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_qc_pseudise_fn                  2406                         |
|  /                                                                          |
| O-> ion_atom_expjl                             2406        2406      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         1                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_basis                    1           1      0.01s  |
|    /                                                                        |
|   o-> ion_atom_find_root                        534         534      0.00s  |
|   o-> ion_atom_regin                            150         150      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip              190                         |
|  /o-- wave_calc_Soverlap_wv_ks                  190                         |
| |/                                                                          |
| O-> comms_reduce_gv_complex                     380         380      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                380         380      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_symmetry_unchanged                 2304                         |
|  /                                                                          |
| O-> model_compare_matrices                     2304        2304      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_ae_H                          95                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_ae_hartree                          96          96      0.01s  |
|    /                                                                        |
|   o-> ion_atom_radin                            288         288      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> parameters_output                             1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> density_write                                 1           1      0.01s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_write_serial                        1           1      0.00s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_output_wrapped                           1           1      0.01s  |
|    /                                                                        |
|   o-> cell_cart_lattice_to_abc                    1           1      0.00s  |
|   o-> cell_check_group                            1           1      0.00s  |
|   o-> cell_factor_group_symmetry_wrapped          1           1      0.00s  |
|   o-> cell_symmetry_symbol_wrapped_wrapped       48          48      0.00s  |
|   o-> cell_format_atom_label                      3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_complex                   380                         |
|  /o-- comms_reduce_bnd_complex                  190                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                  570         570      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_solve                         160                         |
|  /                                                                          |
| O-> ion_atom_sod_solve                          160         160      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             2                         |
|  /                                                                          |
| O-> cell_dump                                     2           2      0.00s  |
|    /                                                                        |
|   o-> cell_dump_cell                              2           2      0.00s  |
|   o-> cell_dump_global                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_write                               1                         |
|  /                                                                          |
| O-> density_write_serial                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_restore                          1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_bcast                              3           3      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                       140         140      0.00s  |
|   o-> comms_gcopy_character                     216         216      0.00s  |
|   o-> comms_gcopy_integer                       161         161      0.00s  |
|   o-> parameters_reallocate_xc                   21          21      0.00s  |
|   o-> comms_gcopy_real                          212         212      0.00s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_set_serial_grids                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_mp_wrapped                     3                         |
|  /o-- cell_generate_MP_set_wrapped                5                         |
|  /o-- castep                                      4                         |
|  /o-- phonon_calculate                            4                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                      18          18      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip               49          49      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_global                              2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_prepare_init_wvfn                        1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                   380         380      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /o-- wave_beta_phi_wv_ks                       190                         |
|  /o-- ion_beta_recip_set                        190                         |
| |/                                                                          |
| O-> ion_set_projectors                          381         381      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_logical                   381         381      0.00s  |
|   o-> comms_reduce_gv_integer                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          5                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                     9           9      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> model_write_occ_eigenvalues                   1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
|   o-> comms_gather_kp_integer                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> parameters_dump                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      1                         |
|  /o-- ion_atom_qc_pseudise_fn                     6                         |
| |/                                                                          |
| O-> ion_atom_set_qn                               7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                        190                         |
|  /                                                                          |
| O-> ion_cc_structure_factor                     190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_basis                534                         |
|  /                                                                          |
| O-> ion_atom_find_root                          534         534      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                          729                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_pseudo_H                      59                         |
|  /                                                                          |
| O-> ion_atom_calc_pseudo_rho                     59          59      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             59          59      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                  190                         |
|  /                                                                          |
| O-> wave_q_dot_all_self_c                       190         190      0.00s  |
|    /                                                                        |
|   o-> local_q_dot_all_self_c                    190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks            190                         |
|  /                                                                          |
| O-> comms_reduce_bnd_complex                    190         190      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                570                         |
|  /                                                                          |
| O-> comms_copy_kp_real                          570         570      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /o-- cell_read_wrapped                          80                         |
|  /o-- cell_generate_qpoints_local                 6                         |
|  /o-- parameters_bcast                          212                         |
|  /o-- cell_restore_cell                          28                         |
|  /o-- cell_restore_global_wrapped               114                         |
|  /o-- cell_reread                                78                         |
|  /o-- model_continuation                          7                         |
| |/                                                                          |
| O-> comms_gcopy_real                            526         526      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_diag                          236                         |
|  /                                                                          |
| O-> ion_atom_rectoreal                          236         236      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_init_ae_atom                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          64                         |
|  /o-- cell_generate_qpoints_local                 4                         |
|  /o-- parameters_read                             3                         |
|  /o-- parameters_bcast                          161                         |
|  /o-- parameters_reallocate_xc                   21                         |
|  /o-- cell_restore_cell                          40                         |
|  /o-- cell_restore_global_wrapped                78                         |
|  /o-- cell_reread                                60                         |
|  /o-- model_continuation                          6                         |
|  /o-- parameters_reread                           2                         |
| |/                                                                          |
| O-> comms_gcopy_integer                         439         439      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /o-- ion_set_projectors                          1                         |
|  /o-- wave_prepare_init_wvfn                    380                         |
| |/                                                                          |
| O-> comms_reduce_gv_integer                     384         384      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           4                         |
|  /o-- parameters_bcast                          216                         |
|  /o-- cell_restore_wrapped                        2                         |
|  /o-- cell_restore_cell                           4                         |
|  /o-- cell_restore_global_wrapped               208                         |
|  /o-- cell_reread                                 4                         |
|  /o-- model_continuation                          7                         |
|  /o-- phonon_initialise                           1                         |
| |/                                                                          |
| O-> comms_gcopy_character                       446         446      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_set_projectors                        381                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_gv_logical                     382         382      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_xc                             96                         |
|  /o-- ion_atom_real_derivative_kind1             48                         |
| |/                                                                          |
| O-> ion_atom_real_derivative                    144         144      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks            190                         |
|  /                                                                          |
| O-> algor_invert_complex                        190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                380                         |
|  /                                                                          |
| O-> comms_copy_bnd_real                         380         380      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.00s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_serial                         1           1      0.00s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      7                         |
|  /                                                                          |
| O-> ion_atom_partial_wave                         7           7      0.00s  |
|    /                                                                        |
|   o-> ion_atom_kh_partial_wave                    7           7      0.00s  |
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
|   o-- ion_atom_construct_psp                     48                         |
|  /                                                                          |
| O-> ion_atom_real_derivative_kind1               48          48      0.00s  |
|    /                                                                        |
|   o-> ion_atom_real_derivative                   48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_partial_wave                       7                         |
|  /                                                                          |
| O-> ion_atom_kh_partial_wave                      7           7      0.00s  |
|    /                                                                        |
|   o-> ion_atom_cfd_solve                          7           7      0.00s  |
|   o-> ion_atom_radin                              7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      1                         |
|  /o-- ion_atom_set_pseudo_H                      59                         |
| |/                                                                          |
| O-> ion_atom_pseudo_xc                           60          60      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             60          60      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_deallocate                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_cell                                2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
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
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_serial                           1           1      0.00s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     24                         |
|  /                                                                          |
| O-> ion_atom_apply_Tl                            24          24      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_q_dot_all_self_c                     190                         |
|  /                                                                          |
| O-> local_q_dot_all_self_c                      190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      1                         |
|  /o-- ion_atom_set_pseudo_H                      59                         |
| |/                                                                          |
| O-> ion_atom_pseudo_hartree                      60          60      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             60          60      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                       190                         |
|  /                                                                          |
| O-> wave_calc_ps_q_nonzero                      190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks            190                         |
|  /                                                                          |
| O-> comms_copy_gv_complex                       190         190      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          11                         |
|  /o-- cell_generate_qpoints_local                 2                         |
|  /o-- parameters_bcast                          140                         |
|  /o-- model_continuation                          4                         |
|  /o-- cell_restore_cell                           6                         |
|  /o-- cell_restore_global_wrapped                14                         |
|  /o-- cell_reread                                10                         |
|  /o-- parameters_reread                           1                         |
|  /o-- phonon_initialise                           1                         |
|  /o-- secondd_detect_symmetry_changed             1                         |
|  /o-- secondd_detect_kpoints_changed              1                         |
| |/                                                                          |
| O-> comms_gcopy_logical                         191         191      0.00s  |
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
|   o-- density_read                                1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_real_to_complex                       2           2      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            2           2      0.00s  |
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
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> check_forces_stresses                         1           1      0.00s  |
|    /                                                                        |
|   o-> firstd_output_forces                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     2                         |
|  /o-- density_complex_to_real                     1                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_allocate                              6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_parallel_strategy                       1           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               1           1      0.00s  |
|   o-> assign_nodes                                1           1      0.00s  |
|   o-> reassign_nodes                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         1                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_H                        1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             37          37      0.00s  |
|   o-> ion_atom_pseudo_hartree                     1           1      0.00s  |
|   o-> ion_atom_pseudo_xc                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_validate                           2           2      0.00s  |
|    /                                                                        |
|   o-> parameters_xc_allowed                      14          14      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_keywords_setup                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_forces_stresses                       1                         |
|  /                                                                          |
| O-> firstd_output_forces                          1           1      0.00s  |
|    /                                                                        |
|   o-> cell_format_atom_label                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> basis_deallocate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            3                         |
|  /                                                                          |
| O-> model_delete_stored_file                      3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_read                                      1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_inquire_psp                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_inquire_psp                        1                         |
|  /o-- ion_atom_generate_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_init_ae_basis                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_read                                    1                         |
|  /                                                                          |
| O-> ion_atom_inquire_psp                          1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          21      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      1                         |
|  /o-- ion_atom_pn_pseudise                        2                         |
|  /o-- ion_atom_qc_pseudise_fn                     6                         |
| |/                                                                          |
| O-> ion_atom_poly_deriv                           9           9      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           5                         |
|  /                                                                          |
| O-> parameters_reread_character                   5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           4                         |
|  /                                                                          |
| O-> parameters_reread_physical                    4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudise                           1                         |
|  /                                                                          |
| O-> ion_atom_pn_pseudise                          1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_poly_deriv                         2           2      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
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
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_setup_keywords                           2           2      0.00s  |
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
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_generate_cell_constraints                2           2      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random_array                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                             1                         |
|  /                                                                          |
| O-> ion_atom_init_ae_H                            1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_set_ae_occ                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> io_delete_file                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal                6                         |
|  /o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         9           9      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_ae_H                          1                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_set_ae_occ                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      8                         |
|  /                                                                          |
| O-> ion_atom_fermi_contact                        8           8      0.00s  |
|    /                                                                        |
|   o-> ion_atom_interpolate                        8           8      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                        23                         |
|  /                                                                          |
| O-> ion_atom_round_to_grid                       23          23      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           4                         |
|  /                                                                          |
| O-> parameters_reread_logical                     4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_reread                           4                         |
|  /                                                                          |
| O-> parameters_reread_integer                     4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           3                         |
|  /                                                                          |
| O-> cell_read_line_real                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_magres_data                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> ion_finalise                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- algor_uniform_random_array                  1                         |
|  /o-- parameters_read                             1                         |
|  /o-- wave_initialise_wv                          1                         |
| |/                                                                          |
| O-> algor_set_random_seed                         3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_check_cell_constraints                   2           2      0.00s  |
|    /                                                                        |
|   o-> cell_cart_lattice_to_abc                    2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       3                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_prepare_init_wvfn                      1                         |
|  /o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                       6           6      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_copy                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_output                                  1                         |
|  /                                                                          |
| O-> comms_reduce_farm_logical                     1           1      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /o-- model_write_occ_eigenvalues                 2                         |
| |/                                                                          |
| O-> comms_reduce_bnd_real                         3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           2                         |
|  /                                                                          |
| O-> cell_symmetry_test                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_count_symmetry_translations_wrappe       1           1      0.00s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_validate                        14                         |
|  /                                                                          |
| O-> parameters_xc_allowed                        14          14      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_initialise                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                      5           5      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_check_group_equiv                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_read_xc_block                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_bs_data                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> cell_distribute_kpoints_wrapped               3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_fermi_contact                      8                         |
|  /                                                                          |
| O-> ion_atom_interpolate                          8           8      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_farm_logical                   1                         |
|  /o-- comms_reduce_bnd_logical                    1                         |
|  /o-- comms_reduce_gv_logical                     1                         |
|  /o-- comms_reduce_kp_logical                     1                         |
| |/                                                                          |
| O-> comms_lcopy                                   4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_check_cell_constraints                 2                         |
|  /o-- cell_output_wrapped                         1                         |
| |/                                                                          |
| O-> cell_cart_lattice_to_abc                      3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_spectral_data                       2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_efield_unchanged                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_elnes_data                          2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   1                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_occ                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         1                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_derivative                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> openbc_locps_initialise                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /                                                                          |
| O-> cell_read_line_char                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> raman_finalise                                1           1      0.00s  |
|    /                                                                        |
|   o-> raman_empty_cache                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_symmetry_init                         1           1      0.00s  |
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
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_pressure_unchanged                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            6                         |
|  /                                                                          |
| O-> basis_utils_prime_factors                     6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_occ_eigenvalues                 1                         |
|  /                                                                          |
| O-> comms_gather_kp_integer                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_output_wrapped                         3                         |
|  /o-- firstd_output_forces                        1                         |
| |/                                                                          |
| O-> cell_format_atom_label                        4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /                                                                          |
| O-> cell_find_related_atoms                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_basis_ae_dealloc                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_optics_data                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_exit                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         1                         |
|  /                                                                          |
| O-> ion_atom_basis_pseudo_dealloc                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_read_supercell_data                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_symmetry_wrapped              1                         |
|  /o-- cell_read_wrapped                           1                         |
| |/                                                                          |
| O-> cell_detect_primitive                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier_farm                            1           1      0.00s  |
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
|   o-- cell_read_wrapped                           2                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_calculate_volume                         4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                         1                         |
|  /                                                                          |
| O-> secondd_analyse_symmetries                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_check_keywords                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_descreen_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_ae_dealloc                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_initialise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_hubbard_u_unchanged                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_supercell                              2                         |
| |/                                                                          |
| O-> cell_recip_lattice                            3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> parameters_nspins                             3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_exit                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_ionic_constr_unchanged                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> tddft_set_tddft_on                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> phonon_require_gs_wvfn                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_spin_type_wv                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> memory_system_initialise                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> implicit_solvent_autosolv_check               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_kpoints_unchanged_2                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                         1                         |
|  /                                                                          |
| O-> secondd_irrep_symbol                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      1                         |
|  /                                                                          |
| O-> ion_atom_write_pwave                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> assign_nodes                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   1                         |
|  /                                                                          |
| O-> ion_atom_resolve_pseudo_cfg                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> cell_rationalise_coordinates                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_serial                         1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> reassign_nodes                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> find_strategy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_cell_constr_unchanged                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      1                         |
|  /                                                                          |
| O-> ion_atom_write_beta                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
Class of operation                  Time spent
COMMS                                   0.13s
COMMS_GV                                0.01s
COMMS_KP                                0.00s
COMMS_BND                               0.11s
COMMS_FARM                              0.00s
     315 different subroutines and functions were traced
Hash collisions:          7
  
