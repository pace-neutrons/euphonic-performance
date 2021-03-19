+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> castep                                        1           1    115.48s  |
|    /                                                                        |
|   o-> memory_system_initialise                    1           1      0.00s  |
|   o-> comms_gcopy_real                            1           1      0.00s  |
|   o-> cell_read_wrapped                           1           1      9.77s  |
|   o-> ion_read                                    1           1      0.00s  |
|   o-> parameters_read                             1           1      0.01s  |
|   o-> bib_add                                     4           4      0.00s  |
|   o-> tddft_set_tddft_on                          1           1      0.00s  |
|   o-> multigrid_dlmg_initialise                   1           1      0.00s  |
|   o-> implicit_solvent_autosolv_check             1           1      0.00s  |
|   o-> model_continuation                          1           1     15.80s  |
|   o-> ion_ion_initialise                          1           1      0.00s  |
|   o-> openbc_locps_initialise                     1           1      0.00s  |
|   o-> nlxc_initialise                             1           1      0.34s  |
|   o-> parameters_output                           1           1      0.00s  |
|   o-> cell_output_wrapped                         1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> phonon_calculate                            1           1     89.51s  |
|   o-> check_forces_stresses                       1           1      0.00s  |
|   o-> model_write                                 1           1      0.04s  |
|   o-> bib_output                                  1           1      0.00s  |
|   o-> ion_ion_exit                                1           1      0.00s  |
|   o-> multigrid_dlmg_exit                         1           1      0.00s  |
|   o-> model_deallocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1     89.51s  |
|    /                                                                        |
|   o-> phonon_initialise                           1           1      0.01s  |
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
|   o-> phonon_recip_to_real                        1           1      8.28s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> q_is_a_g                                   35          35      0.00s  |
|   o-> cell_supercell                              1           1      7.09s  |
|   o-> phonon_real_to_fine                      1668        1668      3.66s  |
|   o-> phonon_enforce_dmat_sumrule              1667        1667      3.93s  |
|   o-> phonon_prepare_and_diagonalise           1667        1667      0.97s  |
|   o-> phonon_accumulate_adp                    1667        1667      0.02s  |
|   o-> comms_send_complex                       1667        1667     20.69s  |
|   o-> comms_send_real                          3334        3334     43.52s  |
|   o-> comms_reduce_gv_real                        1           1      1.24s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.00s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         3334                         |
|  /                                                                          |
| O-> comms_send_real                            3334        3334     43.52s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         1667                         |
|  /                                                                          |
| O-> comms_send_complex                         1667        1667     20.69s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_continuation                            1           1     15.80s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.05s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   5           5      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> ion_initialise                              1           1      6.15s  |
|   o-> basis_initialise                            2           2      0.32s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> cell_reread                                 1           1      8.95s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> comms_gcopy_integer                         6           6      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> wave_initialise_wv                          1           1      0.18s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.12s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.00s  |
|   o-> comms_gcopy_character                       7           7      0.00s  |
|   o-> comms_gcopy_complex                         1           1      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> model_check_dependencies                    1           1      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> cell_supercell                                2           2     14.19s  |
|    /                                                                        |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_recip_lattice                          2           2      0.00s  |
|   o-> cell_calculate_volume                       2           2      0.00s  |
|   o-> cell_generate_supercell_origins             2           2      0.00s  |
|   o-> cell_set_supercell_symmetry                 2           2      7.76s  |
|   o-> cell_copy_kpoints                           2           2      0.00s  |
|   o-> cell_kpoints_spacing_wrapped                2           2      5.08s  |
|   o-> cell_generate_ionic_constraints             2           2      1.35s  |
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
| O-> comms_gcopy_integer                         439         439     10.63s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           1      9.77s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        64          64      9.31s  |
|   o-> cell_allocate                               1           1      0.00s  |
|   o-> comms_gcopy_logical                        11          11      0.00s  |
|   o-> comms_gcopy_real                           80          80      0.00s  |
|   o-> comms_gcopy_character                       4           4      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.45s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> cell_reread                                   1           1      8.95s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        60          60      1.30s  |
|   o-> comms_gcopy_real                           78          78      7.65s  |
|   o-> comms_gcopy_character                       4           4      0.00s  |
|   o-> comms_gcopy_logical                        10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_recip_to_real                          1           1      8.28s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> cell_supercell                              1           1      7.10s  |
|   o-> cell_map_kpoint_subset                      1           1      0.00s  |
|   o-> cell_find_kpoint_transform_kpoints        729         729      0.01s  |
|   o-> secondd_apply_symmetry_to_dmat            729         729      0.02s  |
|   o-> secondd_symmetrize_dmat_cmplx             729         729      0.41s  |
|   o-> cell_deallocate                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_set_supercell_symmetry                   2           2      7.76s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
|   o-> cell_reduce_symmetry_supercell              2           2      0.31s  |
|   o-> cell_find_related_atoms_supercell           2           2      5.02s  |
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
| O-> comms_gcopy_real                            526         526      7.66s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> ion_initialise                                1           1      6.15s  |
|    /                                                                        |
|   o-> ion_allocate                                1           1      0.00s  |
|   o-> ion_atom_allocate_pspot                     2           2      0.05s  |
|   o-> ion_atom_generate_psp                       1           1      4.70s  |
|   o-> ion_set_data                                1           1      0.04s  |
|   o-> ion_atom_deallocate_pspot                   3           3      0.00s  |
|   o-> ion_set_psp                                 1           1      0.02s  |
|   o-> ion_atom_pseudo_scf                         1           1      1.33s  |
|   o-> ion_clebsch_gordan                          1           1      0.00s  |
|   o-> ion_atom_radial_transform                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           1702                         |
|  /o-- phonon_recip_to_real                      729                         |
|  /o-- phonon_real_to_fine                      1668                         |
|  /o-- phonon_enforce_dmat_sumrule              1667                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx              5766        5766      5.84s  |
|    /                                                                        |
|   o-> two_q_is_a_g                             5766        5766      0.02s  |
|   o-> hermitian4                               5766        5766      0.02s  |
|   o-> cell_copy_symmetry                      11532       11532      0.08s  |
|   o-> cell_reduce_symmetry_ops_wrapped         5766        5766      1.74s  |
|   o-> secondd_group_symmetrize_dmat            5766        5766      2.18s  |
|   o-> cell_deallocate                          5766        5766      0.02s  |
|   o-> secondd_find_inversion                   5766        5766      0.02s  |
|   o-> secondd_tr_symmetrize_dmat               5766        5766      1.55s  |
+-----------------------------------------------------------------------------+
|   o-- cell_unfold_kpoints_arg_trace               1                         |
|  /o-- cell_generate_MP_set_wrapped                2                         |
| |/                                                                          |
| O-> cell_reduce_kpoints_internal                  3           3      5.11s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       3           3      0.00s  |
|   o-> cell_sort_kpoints_with_recip            69988       69988      4.79s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_kpoints_spacing_wrapped                  2           2      5.08s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_generate_MP_set_wrapped                2           2      5.08s  |
+-----------------------------------------------------------------------------+
|   o-- cell_kpoints_spacing_wrapped                2                         |
|  /                                                                          |
| O-> cell_generate_MP_set_wrapped                  2           2      5.08s  |
|    /                                                                        |
|   o-> bib_add                                     2           2      0.00s  |
|   o-> cell_reduce_kpoints_internal                2           2      5.08s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             2           2      5.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal            69988                         |
|  /o-- cell_map_kpoint_subset                     49                         |
| |/                                                                          |
| O-> cell_sort_kpoints_with_recip              70037       70037      4.79s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                  70037       70037      0.82s  |
|   o-> algor_invert_real                      140074      140074      0.52s  |
|   o-> algor_sort                              70037       70037      0.29s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_generate_psp                         1           1      4.70s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      1           1      0.00s  |
|   o-> ion_atom_init_ae_atom                       1           1      0.00s  |
|   o-> ion_atom_ae_scf                             1           1      0.37s  |
|   o-> ion_atom_define_psp                         1           1      0.24s  |
|   o-> ion_atom_construct_psp                      1           1      4.01s  |
|   o-> ion_atom_descreen_psp                       1           1      0.09s  |
|   o-> ion_atom_output_psp                         1           1      0.00s  |
|   o-> ion_atom_basis_ae_dealloc                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_construct_psp                        1           1      4.01s  |
|    /                                                                        |
|   o-> ion_atom_partial_wave                       7           7      0.00s  |
|   o-> ion_atom_pseudise                           7           7      0.04s  |
|   o-> ion_atom_write_pwave                        1           1      0.00s  |
|   o-> ion_atom_radin                          24361       24361      0.36s  |
|   o-> ion_atom_write_beta                         1           1      0.00s  |
|   o-> ion_atom_radial_transform                  36          36      1.00s  |
|   o-> ion_atom_fermi_contact                      8           8      0.00s  |
|   o-> ion_atom_apply_Tl                          24          24      0.00s  |
|   o-> ion_atom_real_derivative_kind1             48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         1667                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule                1667        1667      3.93s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                  3334        3334      0.01s  |
|   o-> phonon_diagonalise_d_cmplx               5001        5001      0.03s  |
|   o-> secondd_find_acoustics                   1667        1667      0.04s  |
|   o-> secondd_symmetrize_dmat_cmplx            1667        1667      3.70s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         1668                         |
|  /                                                                          |
| O-> phonon_real_to_fine                        1668        1668      3.66s  |
|    /                                                                        |
|   o-> cell_num_supercells                      1668        1668      0.01s  |
|   o-> check_image_list                         1668        1668      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx            1668        1668      0.86s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            5766                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat              5766        5766      2.18s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped       5766        5766      0.07s  |
|   o-> secondd_check_equiv_ions                 5766        5766      0.06s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      91012       91012      1.67s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           91012                         |
|  /o-- secondd_tr_symmetrize_dmat               5766                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion        97507       97507      1.79s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases             97507       97507      1.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            5766                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped           5801        5801      1.74s  |
|    /                                                                        |
|   o-> cell_check_group                         5801        5801      1.65s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_symmetry_ops_wrapped         5801                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_check_group                           5836        5836      1.65s  |
|    /                                                                        |
|   o-> algor_invert_real                       85566       85566      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            5766                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                 5766        5766      1.55s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 5766        5766      1.38s  |
|   o-> secondd_apply_symmetry_to_dmat_ion       5766        5766      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat            5766                         |
|  /o-- secondd_tr_symmetrize_dmat               5766                         |
|  /o-- secondd_calc_irreps                        35                         |
|  /o-- secondd_apply_symmetry_to_dmat            729                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  12296       12296      1.44s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions            201884      201884      0.69s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_ionic_constraints               2           2      1.35s  |
|    /                                                                        |
|   o-> algor_uniform_random                     4374        4374      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_atom_pseudo_scf                           1           1      1.33s  |
|    /                                                                        |
|   o-> ion_atom_init_pseudo_basis                  1           1      0.01s  |
|   o-> ion_atom_init_pseudo_atom                   1           1      0.04s  |
|   o-> ion_atom_init_pseudo_H                      1           1      0.00s  |
|   o-> ion_atom_ps_diag                           59          59      1.22s  |
|   o-> ion_atom_set_pseudo_H                      59          59      0.03s  |
|   o-> ion_atom_regin                           2001        2001      0.01s  |
|   o-> ion_atom_basis_pseudo_dealloc               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          3           3      1.24s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      1.24s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       3                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       5           5      1.24s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                        59                         |
|  /                                                                          |
| O-> ion_atom_ps_diag                             59          59      1.22s  |
|    /                                                                        |
|   o-> ion_atom_regin                         128915      128915      0.56s  |
|   o-> ion_atom_rectoreal                        236         236      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         1                         |
|  /o-- ion_atom_construct_psp                     36                         |
|  /o-- ion_initialise                              1                         |
| |/                                                                          |
| O-> ion_atom_radial_transform                    38          38      1.20s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pn_pseudise                        1                         |
|  /o-- cell_find_reduced_cell                  70038                         |
|  /o-- cell_sort_kpoints_with_recip           140074                         |
|  /o-- cell_check_group                        85566                         |
|  /o-- cell_symmetry_symbol_wrapped_wrapped      160                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- cell_find_kpoint_transform_kpoints        729                         |
| |/                                                                          |
| O-> algor_invert_real                        296574      296574      1.10s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion      97507                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases               97507       97507      1.09s  |
|    /                                                                        |
|   o-> q_is_a_g                                90463       90463      0.31s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_diag_and_output                     35                         |
|  /o-- phonon_calculate                         1667                         |
| |/                                                                          |
| O-> phonon_prepare_and_diagonalise             1702        1702      1.00s  |
|    /                                                                        |
|   o-> q_is_a_g                                 3404        3404      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx            1702        1702      0.88s  |
|   o-> phonon_constrain_dmat                    1702        1702      0.01s  |
|   o-> phonon_mass_weight_dmat                  1702        1702      0.01s  |
|   o-> phonon_diagonalise_d_cmplx               1702        1702      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70037                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                    70038       70038      0.82s  |
|    /                                                                        |
|   o-> algor_invert_real                       70038       70038      0.27s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- nlxc_initialise                             1                         |
| |/                                                                          |
| O-> cell_generate_qpoints_local                   2           2      0.79s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       2           2      0.00s  |
|   o-> cell_detect_MP                              2           2      0.43s  |
|   o-> comms_gcopy_real                            6           6      0.01s  |
|   o-> comms_gcopy_integer                         4           4      0.00s  |
|   o-> comms_gcopy_logical                         2           2      0.00s  |
|   o-> cell_unfold_kpoints_arg_trace               1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions               201884                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions              201884      201884      0.69s  |
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
| O-> ion_atom_regin                           134061      134061      0.58s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                6           6      0.45s  |
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
| O-> nlxc_initialise                               1           1      0.34s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.34s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.32s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_distribute_grids                      1           1      0.32s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.00s  |
|   o-> basis_count_plane_waves                     1           1      0.00s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate_dynamical_dfpt            53                         |
|  /o-- phonon_diag_and_output                     70                         |
|  /o-- phonon_prepare_and_diagonalise           3404                         |
|  /o-- secondd_compute_atom_phases             90463                         |
|  /o-- phonon_calculate                           35                         |
| |/                                                                          |
| O-> q_is_a_g                                  94025       94025      0.32s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.32s  |
|    /                                                                        |
|   o-> basis_utils_sort_columns                    1           1      0.00s  |
|   o-> comms_gather_gv_integer                    12          12      0.00s  |
|   o-> comms_map_transpose                         2           2      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 2                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                2           2      0.31s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      2                         |
|  /                                                                          |
| O-> comms_map_transpose                           2           2      0.30s  |
|    /                                                                        |
|   o-> comms_map_transpose_n                       2           2      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose                         2                         |
|  /                                                                          |
| O-> comms_map_transpose_n                         2           2      0.30s  |
|    /                                                                        |
|   o-> comms_local_map                             2           2      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose_n                       2                         |
|  /                                                                          |
| O-> comms_local_map                               2           2      0.30s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip            70037                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                70039       70039      0.29s  |
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
| O-> wave_initialise_wv                            1           1      0.18s  |
|     +- section "initialisation", branch on value of method:-                |
|       R                                           1           1      0.18s  |
|         \                                                                   |
|          o-> wave_spin_type_wv                    1           1      0.00s  |
|          o-> wave_prepare_init_wvfn               1           1      0.00s  |
|          o-> algor_set_random_seed                1           1      0.00s  |
|          o-> algor_uniform_random_array        1045        1045      0.00s  |
|          o-> wave_Sorthonormalise_wv              1           1      0.16s  |
|    /                                                                        |
|   o-> ion_set_projectors                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv                       1           1      0.16s  |
|    /                                                                        |
|   o-> wave_Sorthonormalise_wv_ks                 95          95      0.16s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv                    95                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv_ks                   95          95      0.16s  |
|    /                                                                        |
|   o-> wave_calc_Soverlap_wv_ks                   95          95      0.15s  |
|   o-> wave_orthonormalise_over_wv_ks             95          95      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                 95                         |
|  /                                                                          |
| O-> wave_calc_Soverlap_wv_ks                     95          95      0.15s  |
|    /                                                                        |
|   o-> coeffs_dot_all_self                        95          95      0.00s  |
|   o-> wave_beta_phi_wv_ks                        95          95      0.14s  |
|   o-> wave_q_dot_all_self_c                      95          95      0.00s  |
|   o-> comms_reduce_gv_complex                    95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                   95                         |
|  /                                                                          |
| O-> wave_beta_phi_wv_ks                          95          95      0.14s  |
|    /                                                                        |
|   o-> ion_set_projectors                         95          95      0.00s  |
|   o-> wave_calc_ps_q_nonzero                     95          95      0.00s  |
|   o-> ion_all_beta_multi_phi_recip               95          95      0.14s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                        95                         |
|  /                                                                          |
| O-> ion_all_beta_multi_phi_recip                 95          95      0.14s  |
|    /                                                                        |
|   o-> ion_beta_recip_set                         95          95      0.05s  |
|   o-> algor_matmul_cmplx_cmplx                   95          95      0.01s  |
|   o-> comms_reduce_gv_complex                    95          95      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_read_occ_eigenvalues                    1           1      0.12s  |
|    /                                                                        |
|   o-> comms_copy_gv_real                          2           2      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.12s  |
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
|   o-- ion_all_beta_multi_phi_recip               95                         |
|  /o-- wave_calc_Soverlap_wv_ks                   95                         |
| |/                                                                          |
| O-> comms_reduce_gv_complex                     190         190      0.08s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                190         190      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_complex                   190                         |
|  /o-- comms_reduce_bnd_complex                   95                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                  285         285      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           11532                         |
|  /o-- secondd_calc_irreps                        70                         |
| |/                                                                          |
| O-> cell_copy_symmetry                        11602       11602      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat            5766                         |
|  /o-- secondd_calc_irreps                        35                         |
| |/                                                                          |
| O-> cell_factor_group_symmetry_wrapped         5801        5801      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              2                         |
|  /                                                                          |
| O-> ion_atom_allocate_pspot                       2           2      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip               95                         |
|  /                                                                          |
| O-> ion_beta_recip_set                           95          95      0.05s  |
|    /                                                                        |
|   o-> ion_set_projectors                         95          95      0.00s  |
|   o-> ion_cc_structure_factor                    95          95      0.00s  |
|   o-> ion_beta_recip_interpolation             1710        1710      0.01s  |
|   o-> basis_multiply_recip_reduced             1710        1710      0.01s  |
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
|   o-> phonon_prepare_and_diagonalise             35          35      0.03s  |
|   o-> secondd_calc_irreps                        35          35      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           1702                         |
|  /o-- phonon_enforce_dmat_sumrule              5001                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                 6703        6703      0.04s  |
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
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_write                                   1           1      0.04s  |
|    /                                                                        |
|   o-> model_write_all                             1           1      0.03s  |
|   o-> comms_barrier_farm                          1           1      0.00s  |
|   o-> comms_barrier                               1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      7                         |
|  /                                                                          |
| O-> ion_atom_pseudise                             7           7      0.04s  |
|    /                                                                        |
|   o-> ion_atom_pn_pseudise                        1           1      0.00s  |
|   o-> ion_atom_qc_pseudise                        6           6      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_set_data                                  1           1      0.04s  |
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
|   o-- phonon_enforce_dmat_sumrule              1667                         |
|  /                                                                          |
| O-> secondd_find_acoustics                     1667        1667      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /                                                                          |
| O-> cell_unfold_kpoints_arg_trace                 1           1      0.03s  |
|    /                                                                        |
|   o-> cell_reduce_kpoints_internal                1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> model_write_all                               1           1      0.03s  |
|    /                                                                        |
|   o-> parameters_dump                             1           1      0.00s  |
|   o-> cell_dump                                   2           2      0.00s  |
|   o-> model_write_occ_eigenvalues                 1           1      0.00s  |
|   o-> density_write                               1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                        59                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_H                        59          59      0.03s  |
|    /                                                                        |
|   o-> ion_atom_calc_pseudo_rho                   59          59      0.00s  |
|   o-> ion_atom_pseudo_hartree                    59          59      0.00s  |
|   o-> ion_atom_pseudo_xc                         59          59      0.00s  |
|   o-> ion_atom_regin                           2183        2183      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> density_write                                 1           1      0.03s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> density_write_parallel                      1           1      0.03s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_write                               1                         |
|  /                                                                          |
| O-> density_write_parallel                        1           1      0.03s  |
|    /                                                                        |
|   o-> comms_gather_gv_integer                     3           3      0.02s  |
|   o-> comms_gather_gv_real                        1           1      0.00s  |
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
|   o-- cell_allocate                               7                         |
|  /o-- model_reset                                 8                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- secondd_symmetrize_dmat_cmplx            5766                         |
|  /o-- secondd_calc_irreps                        35                         |
|  /o-- cell_supercell                              2                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_deallocate                            5823        5823      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      729                         |
|  /                                                                          |
| O-> secondd_apply_symmetry_to_dmat              729         729      0.02s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                  729         729      0.00s  |
|   o-> secondd_apply_symmetry_to_dmat_ion        729         729      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /o-- density_read_parallel                       3                         |
|  /o-- density_write_parallel                      3                         |
| |/                                                                          |
| O-> comms_gather_gv_integer                      18          18      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_check_dependencies                      1           1      0.02s  |
|    /                                                                        |
|   o-> model_symmetry_unchanged                    1           1      0.02s  |
|   o-> model_ionic_constr_unchanged                1           1      0.00s  |
|   o-> model_cell_constr_unchanged                 1           1      0.00s  |
|   o-> model_pressure_unchanged                    1           1      0.00s  |
|   o-> model_efield_unchanged                      1           1      0.00s  |
|   o-> model_hubbard_u_unchanged                   1           1      0.00s  |
|   o-> model_kpoints_unchanged_2                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_symmetry_unchanged                      1           1      0.02s  |
|    /                                                                        |
|   o-> model_compare_matrices                   2304        2304      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            5766                         |
|  /                                                                          |
| O-> secondd_find_inversion                     5766        5766      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            5766                         |
|  /                                                                          |
| O-> hermitian4                                 5766        5766      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            5766                         |
|  /                                                                          |
| O-> two_q_is_a_g                               5766        5766      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                            95                         |
|  /                                                                          |
| O-> ion_atom_set_ae_H                            95          95      0.02s  |
|    /                                                                        |
|   o-> ion_atom_ae_hartree                        95          95      0.01s  |
|   o-> ion_atom_ae_xc                             95          95      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_set_psp                                   1           1      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         1667                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                      1667        1667      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           1702                         |
|  /o-- phonon_enforce_dmat_sumrule              3334                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                    5036        5036      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints          4374                         |
|  /                                                                          |
| O-> algor_uniform_random                       4374        4374      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       1710                         |
|  /                                                                          |
| O-> ion_beta_recip_interpolation               1710        1710      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           2335                         |
|  /                                                                          |
| O-> ion_atom_number_of_nodes                   2335        2335      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier                                 1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                      729                         |
|  /                                                                          |
| O-> cell_find_kpoint_transform_kpoints          729         729      0.01s  |
|    /                                                                        |
|   o-> algor_invert_real                         729         729      0.00s  |
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
| O-> comms_gcopy_logical                         191         191      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      1668                         |
|  /                                                                          |
| O-> check_image_list                           1668        1668      0.01s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped          729         729      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
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
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> parameters_read                               1           1      0.01s  |
|    /                                                                        |
|   o-> parameters_keywords_setup                   1           1      0.00s  |
|   o-> comms_gcopy_integer                         3           3      0.01s  |
|   o-> parameters_bcast                            1           1      0.00s  |
|   o-> algor_set_random_seed                       1           1      0.00s  |
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
|   o-> ion_atom_sod_solve                        160         160      0.01s  |
|   o-> ion_atom_radin                            280         280      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.01s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_symmetry_unchanged                 2304                         |
|  /                                                                          |
| O-> model_compare_matrices                     2304        2304      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_set_projectors                        191                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_gv_logical                     192         192      0.01s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_ae_H                          95                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_ae_xc                               96          96      0.01s  |
|    /                                                                        |
|   o-> ion_atom_real_derivative                   96          96      0.00s  |
|   o-> ion_atom_radin                             96          96      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       1710                         |
|  /                                                                          |
| O-> basis_multiply_recip_reduced               1710        1710      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
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
|   o-- parameters_read                             1                         |
|  /o-- parameters_restore                          1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_bcast                              3           3      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                       140         140      0.00s  |
|   o-> comms_gcopy_character                     216         216      0.00s  |
|   o-> comms_gcopy_integer                       161         161      0.00s  |
|   o-> parameters_reallocate_xc                   21          21      0.00s  |
|   o-> comms_gcopy_real                          212         212      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                 95                         |
|  /                                                                          |
| O-> wave_orthonormalise_over_wv_ks               95          95      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_complex                   95          95      0.00s  |
|   o-> algor_invert_complex                       95          95      0.00s  |
|   o-> comms_copy_gv_complex                      95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /o-- wave_beta_phi_wv_ks                        95                         |
|  /o-- ion_beta_recip_set                         95                         |
| |/                                                                          |
| O-> ion_set_projectors                          191         191      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_gv_logical                   191         191      0.01s  |
|   o-> comms_reduce_gv_integer                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_ae_H                          95                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_ae_hartree                          96          96      0.01s  |
|    /                                                                        |
|   o-> ion_atom_radin                            288         288      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           1702                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                      1702        1702      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_recip_to_real                        1                         |
|  /o-- cell_supercell                              2                         |
|  /o-- cell_generate_supercell_origins             2                         |
|  /o-- cell_set_supercell_symmetry                 2                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- phonon_real_to_fine                      1668                         |
| |/                                                                          |
| O-> cell_num_supercells                        1677        1677      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip               95                         |
|  /                                                                          |
| O-> algor_matmul_cmplx_cmplx                     95          95      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_solve                         160                         |
|  /                                                                          |
| O-> ion_atom_sod_solve                          160         160      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                       1045                         |
|  /                                                                          |
| O-> algor_uniform_random_array                 1045        1045      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_recip_to_real                        1                         |
|  /                                                                          |
| O-> cell_map_kpoint_subset                        1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip               49          49      0.00s  |
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
|   o-- model_continuation                          5                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                     9           9      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      4                         |
|  /o-- phonon_calculate                            4                         |
|  /o-- cell_kpoints_spacing_wrapped                2                         |
|  /o-- cell_generate_MP_set_wrapped                2                         |
| |/                                                                          |
| O-> bib_add                                      12          12      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
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
|   o-- wave_calc_Soverlap_wv_ks                   95                         |
|  /                                                                          |
| O-> coeffs_dot_all_self                          95          95      0.00s  |
|    /                                                                        |
|   o-> local_dot_all_self                         95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      1                         |
|  /o-- ion_atom_qc_pseudise_fn                     6                         |
| |/                                                                          |
| O-> ion_atom_set_qn                               7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_prepare_init_wvfn                        1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                   190         190      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_basis                534                         |
|  /                                                                          |
| O-> ion_atom_find_root                          534         534      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                          729                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped            729         729      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_init_ae_atom                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- coeffs_dot_all_self                        95                         |
|  /                                                                          |
| O-> local_dot_all_self                           95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_pseudo_H                      59                         |
|  /                                                                          |
| O-> ion_atom_calc_pseudo_rho                     59          59      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             59          59      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_calc_irreps                       160                         |
|  /                                                                          |
| O-> cell_symmetry_symbol_wrapped_wrapped        160         160      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                         160         160      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /o-- ion_set_projectors                          1                         |
|  /o-- wave_prepare_init_wvfn                    190                         |
| |/                                                                          |
| O-> comms_reduce_gv_integer                     194         194      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_write_parallel                      1                         |
|  /                                                                          |
| O-> comms_gather_gv_real                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.00s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_parallel                       1           1      0.00s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_diag                          236                         |
|  /                                                                          |
| O-> ion_atom_rectoreal                          236         236      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_parallel                         1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gather_gv_integer                     3           3      0.00s  |
|   o-> comms_scatter_gv_complex                    1           1      0.00s  |
|   o-> comms_copy_kp_complex                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks             95                         |
|  /                                                                          |
| O-> comms_reduce_bnd_complex                     95          95      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks             95                         |
|  /                                                                          |
| O-> comms_copy_gv_complex                        95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                   95                         |
|  /                                                                          |
| O-> wave_q_dot_all_self_c                        95          95      0.00s  |
|    /                                                                        |
|   o-> local_q_dot_all_self_c                     95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_xc                             96                         |
|  /o-- ion_atom_real_derivative_kind1             48                         |
| |/                                                                          |
| O-> ion_atom_real_derivative                    144         144      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      1                         |
|  /o-- ion_atom_set_pseudo_H                      59                         |
| |/                                                                          |
| O-> ion_atom_pseudo_xc                           60          60      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             60          60      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_scatter_gv_complex                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      7                         |
|  /                                                                          |
| O-> ion_atom_partial_wave                         7           7      0.00s  |
|    /                                                                        |
|   o-> ion_atom_kh_partial_wave                    7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             2           2      0.00s  |
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
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_parallel_strategy                       1           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               1           1      0.00s  |
|   o-> assign_nodes                                1           1      0.00s  |
|   o-> reassign_nodes                              1           1      0.00s  |
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
|   o-- ion_atom_init_pseudo_H                      1                         |
|  /o-- ion_atom_set_pseudo_H                      59                         |
| |/                                                                          |
| O-> ion_atom_pseudo_hartree                      60          60      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             60          60      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks             95                         |
|  /                                                                          |
| O-> algor_invert_complex                         95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
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
|   o-- ion_atom_construct_psp                     24                         |
|  /                                                                          |
| O-> ion_atom_apply_Tl                            24          24      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                         95                         |
|  /                                                                          |
| O-> ion_cc_structure_factor                      95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
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
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                        95                         |
|  /                                                                          |
| O-> wave_calc_ps_q_nonzero                       95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_q_dot_all_self_c                      95                         |
|  /                                                                          |
| O-> local_q_dot_all_self_c                       95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         1                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_H                        1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                             37          37      0.00s  |
|   o-> ion_atom_pseudo_hartree                     1           1      0.00s  |
|   o-> ion_atom_pseudo_xc                          1           1      0.00s  |
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
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          21      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_keywords_setup                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_read                                      1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_inquire_psp                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_inquire_psp                        1                         |
|  /o-- ion_atom_generate_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_init_ae_basis                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_read                                    1                         |
|  /                                                                          |
| O-> ion_atom_inquire_psp                          1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_deallocate                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      1                         |
|  /o-- ion_atom_pn_pseudise                        2                         |
|  /o-- ion_atom_qc_pseudise_fn                     6                         |
| |/                                                                          |
| O-> ion_atom_poly_deriv                           9           9      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudise                           1                         |
|  /                                                                          |
| O-> ion_atom_pn_pseudise                          1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_poly_deriv                         2           2      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               2           2      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         2           2      0.00s  |
|   o-> algor_invert_real                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_ae_H                          1                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_set_ae_occ                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                             1                         |
|  /                                                                          |
| O-> ion_atom_init_ae_H                            1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_set_ae_occ                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_setup_keywords                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
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
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      8                         |
|  /                                                                          |
| O-> ion_atom_fermi_contact                        8           8      0.00s  |
|    /                                                                        |
|   o-> ion_atom_interpolate                        8           8      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- wave_initialise_wv                          1                         |
| |/                                                                          |
| O-> algor_set_random_seed                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                        23                         |
|  /                                                                          |
| O-> ion_atom_round_to_grid                       23          23      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_allocate                              5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> ion_finalise                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_reduce_kpoints_internal                3                         |
|  /o-- cell_map_kpoint_subset                      1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> model_write_occ_eigenvalues                   1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             2                         |
|  /                                                                          |
| O-> cell_dump                                     2           2      0.00s  |
|    /                                                                        |
|   o-> cell_dump_cell                              2           2      0.00s  |
|   o-> cell_dump_global                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_initialise                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_gcopy_complex                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> basis_deallocate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /o-- model_write_occ_eigenvalues                 2                         |
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
|   o-- phonon_calculate                            2                         |
|  /o-- phonon_calculate_dynamical_dfpt             2                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                      5           5      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
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
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_symmetry_init                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_fermi_contact                      8                         |
|  /                                                                          |
| O-> ion_atom_interpolate                          8           8      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_efield_unchanged                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> check_forces_stresses                         1           1      0.00s  |
|    /                                                                        |
|   o-> firstd_output_forces                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   1                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_occ                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> cell_distribute_kpoints_wrapped               3           3      0.00s  |
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
|   o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_copy                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> openbc_locps_initialise                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            6                         |
|  /                                                                          |
| O-> basis_utils_prime_factors                     6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         1                         |
|  /o-- ion_atom_descreen_psp                       1                         |
| |/                                                                          |
| O-> ion_atom_derivative                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> raman_finalise                                1           1      0.00s  |
|    /                                                                        |
|   o-> raman_empty_cache                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                            1                         |
|  /                                                                          |
| O-> cell_detect_same_cell                         1           1      0.00s  |
|    /                                                                        |
|   o-> algor_sort                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_deallocate                            4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_descreen_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_ae_dealloc                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_kpoints_changed                1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_initialise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_basis_ae_dealloc                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_hubbard_u_unchanged                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_output_wrapped                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_bnd_logical                    1                         |
|  /o-- comms_reduce_gv_logical                     1                         |
|  /o-- comms_reduce_kp_logical                     1                         |
| |/                                                                          |
| O-> comms_lcopy                                   3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         1                         |
|  /                                                                          |
| O-> ion_atom_basis_pseudo_dealloc                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_cell                                2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
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
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> phonon_require_gs_wvfn                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- find_strategy                               1                         |
|  /                                                                          |
| O-> best_mixed_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_recip_lattice                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier_farm                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_exit                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              2                         |
|  /                                                                          |
| O-> cell_calculate_volume                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> parameters_output                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_spin_type_wv                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> tddft_set_tddft_on                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_ionic_constr_unchanged                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> parameters_dump                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> reassign_nodes                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       1                         |
|  /                                                                          |
| O-> ion_atom_output_psp                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_exit                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_cell_constr_unchanged                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   1                         |
|  /                                                                          |
| O-> ion_atom_resolve_pseudo_cfg                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      1                         |
|  /                                                                          |
| O-> ion_atom_write_beta                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_forces_stresses                       1                         |
|  /                                                                          |
| O-> firstd_output_forces                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_output                                  1                         |
|  /                                                                          |
| O-> comms_reduce_farm_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      1                         |
|  /                                                                          |
| O-> ion_atom_write_pwave                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> assign_nodes                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> cell_rationalise_coordinates                  1           1      0.00s  |
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
Class of operation                  Time spent
COMMS                                  84.31s
COMMS_GV                                1.48s
COMMS_KP                                0.00s
COMMS_BND                               0.00s
COMMS_FARM                              0.00s
     280 different subroutines and functions were traced
Hash collisions:          2
  
