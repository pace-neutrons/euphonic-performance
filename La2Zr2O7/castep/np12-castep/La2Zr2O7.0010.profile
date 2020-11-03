+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> castep                                        1           1    402.52s  |
|    /                                                                        |
|   o-> memory_system_initialise                    1           1      0.00s  |
|   o-> comms_gcopy_real                            1           1      0.00s  |
|   o-> cell_read_wrapped                           1           1      8.80s  |
|   o-> ion_read                                    1           1      0.00s  |
|   o-> parameters_read                             1           1      0.01s  |
|   o-> bib_add                                     4           4      0.00s  |
|   o-> tddft_set_tddft_on                          1           1      0.00s  |
|   o-> multigrid_dlmg_initialise                   1           1      0.00s  |
|   o-> implicit_solvent_autosolv_check             1           1      0.00s  |
|   o-> model_continuation                          1           1     27.69s  |
|   o-> ion_ion_initialise                          1           1      0.00s  |
|   o-> openbc_locps_initialise                     1           1      0.00s  |
|   o-> nlxc_initialise                             1           1      0.00s  |
|   o-> parameters_output                           1           1      0.00s  |
|   o-> cell_output_wrapped                         1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> phonon_calculate                            1           1    365.82s  |
|   o-> check_forces_stresses                       1           1      0.00s  |
|   o-> model_write                                 1           1      0.19s  |
|   o-> bib_output                                  1           1      0.00s  |
|   o-> ion_ion_exit                                1           1      0.00s  |
|   o-> multigrid_dlmg_exit                         1           1      0.00s  |
|   o-> model_deallocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    365.82s  |
|    /                                                                        |
|   o-> phonon_initialise                           1           1      0.01s  |
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
|   o-> phonon_real_to_fine                      2273        2273      2.25s  |
|   o-> phonon_enforce_dmat_sumrule              2272        2272     21.65s  |
|   o-> phonon_prepare_and_diagonalise           2272        2272      3.50s  |
|   o-> phonon_accumulate_adp                    2272        2272      0.10s  |
|   o-> comms_send_complex                       2272        2272    338.03s  |
|   o-> comms_send_real                          4544        4544      0.02s  |
|   o-> comms_reduce_gv_real                        1           1      0.14s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.01s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2272                         |
|  /                                                                          |
| O-> comms_send_complex                         2272        2272    338.03s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_continuation                            1           1     27.69s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.13s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   5           5      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> ion_initialise                              1           1     18.48s  |
|   o-> basis_initialise                            2           2      0.51s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> cell_reread                                 1           1      8.26s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> comms_gcopy_integer                         5           5      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> wave_initialise_wv                          1           1      0.24s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.03s  |
|   o-> comms_gcopy_character                       6           6      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> model_check_dependencies                    1           1      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2272                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule                2272        2272     21.65s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                  4544        4544      0.05s  |
|   o-> phonon_diagonalise_d_cmplx               6816        6816      4.43s  |
|   o-> secondd_find_acoustics                   2272        2272      0.24s  |
|   o-> secondd_symmetrize_dmat_cmplx            2272        2272     16.62s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      2273                         |
|  /o-- phonon_enforce_dmat_sumrule              2272                         |
|  /o-- phonon_prepare_and_diagonalise           2272                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx              6817        6817     20.26s  |
|    /                                                                        |
|   o-> two_q_is_a_g                             6817        6817      0.02s  |
|   o-> hermitian4                               6817        6817      0.07s  |
|   o-> cell_copy_symmetry                      13634       13634      0.12s  |
|   o-> cell_reduce_symmetry_ops_wrapped         6817        6817      2.28s  |
|   o-> secondd_group_symmetrize_dmat            6817        6817     15.07s  |
|   o-> cell_deallocate                          6817        6817      0.03s  |
|   o-> secondd_find_inversion                   6817        6817      0.03s  |
|   o-> secondd_tr_symmetrize_dmat               6817        6817      2.38s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> ion_initialise                                1           1     18.48s  |
|    /                                                                        |
|   o-> ion_allocate                                1           1      0.00s  |
|   o-> ion_atom_allocate_pspot                     6           6      0.10s  |
|   o-> ion_atom_generate_psp                       3           3     16.62s  |
|   o-> ion_set_data                                3           3      0.11s  |
|   o-> ion_atom_deallocate_pspot                   7           7      0.00s  |
|   o-> ion_set_psp                                 3           3      0.06s  |
|   o-> ion_atom_pseudo_scf                         3           3      1.59s  |
|   o-> ion_clebsch_gordan                          1           1      0.00s  |
|   o-> ion_atom_radial_transform                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_atom_generate_psp                         3           3     16.62s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      3           3      0.00s  |
|   o-> ion_atom_init_ae_atom                       3           3      0.00s  |
|   o-> ion_atom_ae_scf                             3           3      0.79s  |
|   o-> ion_atom_define_psp                         3           3      0.70s  |
|   o-> ion_atom_construct_psp                      3           3     14.87s  |
|   o-> ion_atom_descreen_psp                       3           3      0.27s  |
|   o-> ion_atom_output_psp                         3           3      0.00s  |
|   o-> ion_atom_basis_ae_dealloc                   3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6817                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat              6817        6817     15.07s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped       6817        6817      0.09s  |
|   o-> secondd_check_equiv_ions                 6817        6817      0.06s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     120473      120473     13.08s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_construct_psp                        3           3     14.87s  |
|    /                                                                        |
|   o-> ion_atom_partial_wave                      21          21      0.00s  |
|   o-> ion_atom_pseudise                          21          21      0.08s  |
|   o-> ion_atom_write_pwave                        3           3      0.00s  |
|   o-> ion_atom_radin                          61185       61185      0.91s  |
|   o-> ion_atom_Q_pseudise                        95          95      4.69s  |
|   o-> ion_atom_write_beta                         3           3      0.00s  |
|   o-> ion_atom_radial_transform                  92          92      2.58s  |
|   o-> ion_atom_fermi_contact                     44          44      0.00s  |
|   o-> ion_atom_apply_Tl                          84          84      0.00s  |
|   o-> ion_atom_real_derivative_kind1            168         168      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat          120473                         |
|  /o-- secondd_tr_symmetrize_dmat               6817                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion       127290      127290     13.85s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases            127290      127290      4.44s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          64                         |
|  /o-- cell_generate_qpoints_local                 4                         |
|  /o-- parameters_read                             3                         |
|  /o-- parameters_bcast                          161                         |
|  /o-- parameters_reallocate_xc                   21                         |
|  /o-- cell_restore_cell                          40                         |
|  /o-- cell_restore_global_wrapped                76                         |
|  /o-- cell_reread                                60                         |
|  /o-- model_continuation                          5                         |
|  /o-- parameters_reread                           2                         |
| |/                                                                          |
| O-> comms_gcopy_integer                         436         436      9.57s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_read_wrapped                             1           1      8.80s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        64          64      8.80s  |
|   o-> cell_allocate                               1           1      0.00s  |
|   o-> comms_gcopy_logical                        11          11      0.00s  |
|   o-> comms_gcopy_real                           80          80      0.00s  |
|   o-> comms_gcopy_character                      29          29      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> cell_reread                                   1           1      8.26s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        60          60      0.76s  |
|   o-> comms_gcopy_real                           78          78      7.50s  |
|   o-> comms_gcopy_character                      29          29      0.00s  |
|   o-> comms_gcopy_logical                        10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /o-- cell_read_wrapped                          80                         |
|  /o-- cell_generate_qpoints_local                 6                         |
|  /o-- parameters_bcast                          212                         |
|  /o-- cell_restore_cell                          28                         |
|  /o-- cell_restore_global_wrapped               110                         |
|  /o-- cell_reread                                78                         |
|  /o-- model_continuation                          7                         |
| |/                                                                          |
| O-> comms_gcopy_real                            522         522      7.51s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              6816                         |
|  /o-- phonon_prepare_and_diagonalise           2272                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                 9088        9088      5.92s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     95                         |
|  /                                                                          |
| O-> ion_atom_Q_pseudise                          95          95      4.69s  |
|    /                                                                        |
|   o-> ion_atom_set_qn                            13          13      0.01s  |
|   o-> ion_atom_radin                          77045       77045      0.86s  |
|   o-> ion_atom_poly_deriv                        95          95      0.00s  |
|   o-> ion_atom_regin                           6840        6840      0.02s  |
|   o-> ion_atom_solve_linear                      95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion     127290                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases              127290      127290      4.44s  |
|    /                                                                        |
|   o-> q_is_a_g                               118218      118218      0.36s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2272                         |
|  /                                                                          |
| O-> phonon_prepare_and_diagonalise             2272        2272      3.50s  |
|    /                                                                        |
|   o-> q_is_a_g                                 4544        4544      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx            2272        2272      1.80s  |
|   o-> phonon_constrain_dmat                    2272        2272      0.01s  |
|   o-> phonon_mass_weight_dmat                  2272        2272      0.03s  |
|   o-> phonon_diagonalise_d_cmplx               2272        2272      1.50s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         3                         |
|  /o-- ion_atom_construct_psp                     92                         |
|  /o-- ion_initialise                              1                         |
| |/                                                                          |
| O-> ion_atom_radial_transform                    96          96      3.15s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6817                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                 6817        6817      2.38s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                 6817        6817      1.48s  |
|   o-> secondd_apply_symmetry_to_dmat_ion       6817        6817      0.77s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6817                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped           6817        6817      2.28s  |
|    /                                                                        |
|   o-> cell_check_group                         6817        6817      2.16s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2273                         |
|  /                                                                          |
| O-> phonon_real_to_fine                        2273        2273      2.25s  |
|    /                                                                        |
|   o-> cell_num_supercells                      2273        2273      0.01s  |
|   o-> check_image_list                         2273        2273      0.01s  |
|   o-> secondd_symmetrize_dmat_cmplx            2273        2273      1.84s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_symmetry_ops_wrapped         6817                         |
|  /                                                                          |
| O-> cell_check_group                           6817        6817      2.16s  |
|    /                                                                        |
|   o-> algor_invert_real                      113656      113656      0.35s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           4811                         |
|  /o-- ion_atom_ae_hartree                       630                         |
|  /o-- ion_atom_ae_xc                            210                         |
|  /o-- ion_atom_define_psp                         9                         |
|  /o-- ion_atom_core_pseudise                   2406                         |
|  /o-- ion_atom_kh_partial_wave                   21                         |
|  /o-- ion_atom_construct_psp                  61185                         |
|  /o-- ion_atom_Q_pseudise                     77045                         |
|  /o-- ion_atom_ps_solve                        1217                         |
|  /o-- ion_atom_descreen_psp                    6167                         |
| |/                                                                          |
| O-> ion_atom_radin                           153701      153701      1.98s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_atom_pseudo_scf                           3           3      1.59s  |
|    /                                                                        |
|   o-> ion_atom_init_pseudo_basis                  3           3      0.02s  |
|   o-> ion_atom_init_pseudo_atom                   3           3      0.29s  |
|   o-> ion_atom_init_pseudo_H                      3           3      0.00s  |
|   o-> ion_atom_ps_diag                          108         108      1.15s  |
|   o-> ion_atom_set_pseudo_H                     108         108      0.04s  |
|   o-> ion_atom_regin                           6003        6003      0.02s  |
|   o-> ion_atom_basis_pseudo_dealloc               3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat            6817                         |
|  /o-- secondd_tr_symmetrize_dmat               6817                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  13634       13634      1.54s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions            222712      222712      0.73s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                       108                         |
|  /                                                                          |
| O-> ion_atom_ps_diag                            108         108      1.15s  |
|    /                                                                        |
|   o-> ion_atom_regin                         139221      139221      0.52s  |
|   o-> ion_atom_rectoreal                        354         354      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_ae_scf                               3           3      0.79s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_H                          3           3      0.00s  |
|   o-> ion_atom_ae_solve                         204         204      0.74s  |
|   o-> ion_atom_set_ae_H                         207         207      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                           204                         |
|  /                                                                          |
| O-> ion_atom_ae_solve                           204         204      0.74s  |
|    /                                                                        |
|   o-> ion_atom_koelling_harmon_solve            204         204      0.74s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_solve                         204                         |
|  /                                                                          |
| O-> ion_atom_koelling_harmon_solve              204         204      0.74s  |
|    /                                                                        |
|   o-> ion_atom_cfd_solve                       9962        9962      0.51s  |
|   o-> ion_atom_number_of_nodes                 4981        4981      0.03s  |
|   o-> ion_atom_radin                           4811        4811      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions               222712                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions              222712      222712      0.73s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_define_psp                           3           3      0.70s  |
|    /                                                                        |
|   o-> ion_atom_round_to_grid                     69          69      0.00s  |
|   o-> ion_atom_radin                              9           9      0.00s  |
|   o-> ion_atom_core_pseudise                      3           3      0.12s  |
|   o-> ion_atom_radial_transform                   3           3      0.57s  |
|   o-> ion_atom_derivative                         3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                    168                         |
|  /o-- ion_atom_qc_pseudise_fn                  1296                         |
|  /o-- ion_atom_Q_pseudise                      6840                         |
|  /o-- ion_atom_init_pseudo_basis                366                         |
|  /o-- ion_atom_init_pseudo_H                    117                         |
|  /o-- ion_atom_pseudo_hartree                   111                         |
|  /o-- ion_atom_pseudo_xc                        111                         |
|  /o-- ion_atom_ps_diag                       139221                         |
|  /o-- ion_atom_calc_pseudo_rho                  108                         |
|  /o-- ion_atom_set_pseudo_H                    4113                         |
|  /o-- ion_atom_pseudo_scf                      6003                         |
| |/                                                                          |
| O-> ion_atom_regin                           158454      158454      0.59s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           9962                         |
|  /o-- ion_atom_kh_partial_wave                   21                         |
| |/                                                                          |
| O-> ion_atom_cfd_solve                         9983        9983      0.52s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.51s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_distribute_grids                      1           1      0.09s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.01s  |
|   o-> basis_count_plane_waves                     1           1      0.40s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.40s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.00s  |
|   o-> comms_reduce_kp_integer                     3           3      0.40s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.40s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                           10                         |
|  /o-- secondd_compute_atom_phases            118218                         |
|  /o-- phonon_prepare_and_diagonalise           4544                         |
| |/                                                                          |
| O-> q_is_a_g                                 122772      122772      0.37s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pn_pseudise                        3                         |
|  /o-- cell_find_reduced_cell                      3                         |
|  /o-- cell_sort_kpoints_with_recip                4                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- cell_check_group                       113656                         |
| |/                                                                          |
| O-> algor_invert_real                        113669      113669      0.35s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         3                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_atom                     3           3      0.29s  |
|    /                                                                        |
|   o-> ion_atom_resolve_pseudo_cfg                 3           3      0.00s  |
|   o-> ion_atom_locate                         12410       12410      0.04s  |
|   o-> ion_atom_interpolate                    12410       12410      0.04s  |
|   o-> ion_atom_set_pseudo_occ                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_descreen_psp                         3           3      0.27s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_atom                       3           3      0.00s  |
|   o-> ion_atom_set_ae_occ                         3           3      0.00s  |
|   o-> ion_atom_ps_solve                           3           3      0.04s  |
|   o-> ion_atom_radin                           6167        6167      0.09s  |
|   o-> ion_atom_ae_hartree                         3           3      0.00s  |
|   o-> ion_atom_ae_xc                              3           3      0.00s  |
|   o-> ion_atom_derivative                         3           3      0.00s  |
|   o-> ion_atom_ae_dealloc                         3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_initialise_wv                            1           1      0.24s  |
|     +- section "initialisation", branch on value of method:-                |
|       R                                           1           1      0.24s  |
|         \                                                                   |
|          o-> wave_spin_type_wv                    1           1      0.00s  |
|          o-> wave_prepare_init_wvfn               1           1      0.00s  |
|          o-> algor_set_random_seed                1           1      0.00s  |
|          o-> algor_uniform_random_array         530         530      0.01s  |
|          o-> wave_Sorthonormalise_wv              1           1      0.23s  |
|    /                                                                        |
|   o-> ion_set_projectors                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              2272                         |
|  /                                                                          |
| O-> secondd_find_acoustics                     2272        2272      0.24s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv                       1           1      0.23s  |
|    /                                                                        |
|   o-> wave_Sorthonormalise_wv_ks                  5           5      0.23s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv                     5                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv_ks                    5           5      0.23s  |
|    /                                                                        |
|   o-> wave_calc_Soverlap_wv_ks                    5           5      0.21s  |
|   o-> wave_orthonormalise_over_wv_ks              5           5      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                  5                         |
|  /                                                                          |
| O-> wave_calc_Soverlap_wv_ks                      5           5      0.21s  |
|    /                                                                        |
|   o-> coeffs_dot_all_self                         5           5      0.01s  |
|   o-> wave_beta_phi_wv_ks                         5           5      0.19s  |
|   o-> wave_q_dot_all_self_c                       5           5      0.00s  |
|   o-> comms_reduce_gv_complex                     5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_write                                   1           1      0.19s  |
|    /                                                                        |
|   o-> model_write_all                             1           1      0.00s  |
|   o-> comms_barrier_farm                          1           1      0.00s  |
|   o-> comms_barrier                               1           1      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    5                         |
|  /                                                                          |
| O-> wave_beta_phi_wv_ks                           5           5      0.19s  |
|    /                                                                        |
|   o-> ion_set_projectors                          5           5      0.01s  |
|   o-> wave_calc_ps_q_nonzero                      5           5      0.00s  |
|   o-> ion_all_beta_multi_phi_recip                5           5      0.18s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier                                 1           1      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                         5                         |
|  /                                                                          |
| O-> ion_all_beta_multi_phi_recip                  5           5      0.18s  |
|    /                                                                        |
|   o-> ion_beta_recip_set                          5           5      0.08s  |
|   o-> algor_matmul_cmplx_cmplx                    5           5      0.06s  |
|   o-> comms_reduce_gv_complex                     5           5      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       3                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       5           5      0.16s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_gv_real                          3           3      0.14s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.14s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> cell_restore_wrapped                          2           2      0.13s  |
|    /                                                                        |
|   o-> comms_gcopy_character                       2           2      0.00s  |
|   o-> cell_restore_cell                           2           2      0.00s  |
|   o-> cell_restore_global_wrapped                 2           2      0.00s  |
|   o-> cell_analyse_symmetry_wrapped               2           2      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         3                         |
|  /                                                                          |
| O-> ion_atom_core_pseudise                        3           3      0.12s  |
|    /                                                                        |
|   o-> ion_atom_set_qn                             3           3      0.00s  |
|   o-> ion_atom_poly_deriv                         3           3      0.00s  |
|   o-> ion_atom_radin                           2406        2406      0.03s  |
|   o-> ion_atom_regin                            168         168      0.00s  |
|   o-> ion_atom_solve_linear                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           13634                         |
|  /                                                                          |
| O-> cell_copy_symmetry                        13634       13634      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_set_data                                  3           3      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              6                         |
|  /                                                                          |
| O-> ion_atom_allocate_pspot                       6           6      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         2272                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                      2272        2272      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.09s  |
|    /                                                                        |
|   o-> basis_utils_sort_columns                    1           1      0.00s  |
|   o-> comms_gather_gv_integer                    12          12      0.00s  |
|   o-> comms_map_transpose                         2           2      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat            6817                         |
|  /                                                                          |
| O-> cell_factor_group_symmetry_wrapped         6817        6817      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      2                         |
|  /                                                                          |
| O-> comms_map_transpose                           2           2      0.08s  |
|    /                                                                        |
|   o-> comms_map_transpose_n                       2           2      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose                         2                         |
|  /                                                                          |
| O-> comms_map_transpose_n                         2           2      0.08s  |
|    /                                                                        |
|   o-> comms_local_map                             2           2      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose_n                       2                         |
|  /                                                                          |
| O-> comms_local_map                               2           2      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                5                         |
|  /                                                                          |
| O-> ion_beta_recip_set                            5           5      0.08s  |
|    /                                                                        |
|   o-> ion_set_projectors                          5           5      0.00s  |
|   o-> ion_cc_structure_factor                   110         110      0.00s  |
|   o-> ion_beta_recip_interpolation             1320        1320      0.03s  |
|   o-> basis_multiply_recip_reduced             1320        1320      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              4544                         |
|  /o-- phonon_prepare_and_diagonalise           2272                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                    6816        6816      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     21                         |
|  /                                                                          |
| O-> ion_atom_pseudise                            21          21      0.08s  |
|    /                                                                        |
|   o-> ion_atom_pn_pseudise                        3           3      0.00s  |
|   o-> ion_atom_qc_pseudise                       18          18      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudise                          18                         |
|  /                                                                          |
| O-> ion_atom_qc_pseudise                         18          18      0.08s  |
|    /                                                                        |
|   o-> ion_atom_qc_pseudise_fn                    18          18      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_qc_pseudise                       18                         |
|  /                                                                          |
| O-> ion_atom_qc_pseudise_fn                      18          18      0.08s  |
|    /                                                                        |
|   o-> ion_atom_set_qn                            18          18      0.00s  |
|   o-> ion_atom_poly_deriv                        18          18      0.00s  |
|   o-> ion_atom_expjl                           7218        7218      0.02s  |
|   o-> ion_atom_regin                           1296        1296      0.00s  |
|   o-> ion_atom_solve_linear                      18          18      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6817                         |
|  /                                                                          |
| O-> hermitian4                                 6817        6817      0.07s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                5                         |
|  /                                                                          |
| O-> algor_matmul_cmplx_cmplx                      5           5      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_set_psp                                   3           3      0.06s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_complex                    10                         |
|  /o-- comms_reduce_bnd_complex                    5                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                   15          15      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                5                         |
|  /o-- wave_calc_Soverlap_wv_ks                    5                         |
| |/                                                                          |
| O-> comms_reduce_gv_complex                      10          10      0.04s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 10          10      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_fermi_contact                     44                         |
|  /o-- ion_atom_init_pseudo_atom               12410                         |
| |/                                                                          |
| O-> ion_atom_interpolate                      12454       12454      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom               12410                         |
|  /                                                                          |
| O-> ion_atom_locate                           12410       12410      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_descreen_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_ps_solve                             3           3      0.04s  |
|    /                                                                        |
|   o-> ion_atom_sod_solve                        557         557      0.02s  |
|   o-> ion_atom_radin                           1217        1217      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                           207                         |
|  /                                                                          |
| O-> ion_atom_set_ae_H                           207         207      0.04s  |
|    /                                                                        |
|   o-> ion_atom_ae_hartree                       207         207      0.01s  |
|   o-> ion_atom_ae_xc                            207         207      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                       108                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_H                       108         108      0.04s  |
|    /                                                                        |
|   o-> ion_atom_calc_pseudo_rho                  108         108      0.00s  |
|   o-> ion_atom_pseudo_hartree                   108         108      0.00s  |
|   o-> ion_atom_pseudo_xc                        108         108      0.00s  |
|   o-> ion_atom_regin                           4113        4113      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       1320                         |
|  /                                                                          |
| O-> ion_beta_recip_interpolation               1320        1320      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               6                         |
|  /o-- model_reset                                 8                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              1                         |
|  /o-- secondd_symmetrize_dmat_cmplx            6817                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_deallocate                            6836        6836      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           4981                         |
|  /                                                                          |
| O-> ion_atom_number_of_nodes                   4981        4981      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.03s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_parallel                       1           1      0.02s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6817                         |
|  /                                                                          |
| O-> secondd_find_inversion                     6817        6817      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         4544                         |
|  /                                                                          |
| O-> comms_send_real                            4544        4544      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_qc_pseudise_fn                  7218                         |
|  /                                                                          |
| O-> ion_atom_expjl                             7218        7218      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_parallel                         1           1      0.02s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx            6817                         |
|  /                                                                          |
| O-> two_q_is_a_g                               6817        6817      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                  5                         |
|  /                                                                          |
| O-> wave_orthonormalise_over_wv_ks                5           5      0.02s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_complex                    5           5      0.00s  |
|   o-> algor_invert_complex                        5           5      0.00s  |
|   o-> comms_copy_gv_complex                       5           5      0.00s  |
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
|   o-- ion_atom_set_ae_H                         207                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_ae_xc                              210         210      0.02s  |
|    /                                                                        |
|   o-> ion_atom_real_derivative                  210         210      0.00s  |
|   o-> ion_atom_radin                            210         210      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_symmetry_unchanged                      1           1      0.02s  |
|    /                                                                        |
|   o-> model_compare_matrices                   2304        2304      0.01s  |
|   o-> model_compare_vectors                      48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_solve                         557                         |
|  /                                                                          |
| O-> ion_atom_sod_solve                          557         557      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         3                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_basis                    3           3      0.02s  |
|    /                                                                        |
|   o-> ion_atom_find_root                       1206        1206      0.01s  |
|   o-> ion_atom_regin                            366         366      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      3                         |
|  /o-- ion_atom_qc_pseudise_fn                    18                         |
|  /o-- ion_atom_Q_pseudise                        13                         |
| |/                                                                          |
| O-> ion_atom_set_qn                              34          34      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_ae_H                         207                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_ae_hartree                         210         210      0.01s  |
|    /                                                                        |
|   o-> ion_atom_radin                            630         630      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      2273                         |
|  /                                                                          |
| O-> check_image_list                           2273        2273      0.01s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped           88          88      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    5                         |
|  /                                                                          |
| O-> coeffs_dot_all_self                           5           5      0.01s  |
|    /                                                                        |
|   o-> local_dot_all_self                          5           5      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- coeffs_dot_all_self                         5                         |
|  /                                                                          |
| O-> local_dot_all_self                            5           5      0.01s  |
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
|   o-- model_symmetry_unchanged                 2304                         |
|  /                                                                          |
| O-> model_compare_matrices                     2304        2304      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           2272                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                      2272        2272      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- phonon_real_to_fine                      2273                         |
| |/                                                                          |
| O-> cell_num_supercells                        2278        2278      0.01s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> phonon_initialise                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.01s  |
|   o-> comms_save_strategy                         1           1      0.00s  |
|   o-> comms_gcopy_character                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /o-- wave_beta_phi_wv_ks                         5                         |
|  /o-- ion_beta_recip_set                          5                         |
| |/                                                                          |
| O-> ion_set_projectors                           11          11      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_gv_logical                    11          11      0.01s  |
|   o-> comms_reduce_gv_integer                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_set_projectors                         11                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_gv_logical                      12          12      0.01s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       1320                         |
|  /                                                                          |
| O-> basis_multiply_recip_reduced               1320        1320      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- parameters_restore                          1                         |
|  /o-- parameters_reread                           1                         |
| |/                                                                          |
| O-> parameters_bcast                              3           3      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                       140         140      0.00s  |
|   o-> comms_gcopy_character                     214         214      0.00s  |
|   o-> comms_gcopy_integer                       161         161      0.00s  |
|   o-> parameters_reallocate_xc                   21          21      0.00s  |
|   o-> comms_gcopy_real                          212         212      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                        530                         |
|  /o-- cell_generate_cell_constraints              1                         |
| |/                                                                          |
| O-> algor_uniform_random_array                  531         531      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      3                         |
|  /o-- ion_atom_qc_pseudise_fn                    18                         |
|  /o-- ion_atom_Q_pseudise                        95                         |
| |/                                                                          |
| O-> ion_atom_solve_linear                       116         116      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_basis               1206                         |
|  /                                                                          |
| O-> ion_atom_find_root                         1206        1206      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                          29                         |
|  /o-- parameters_bcast                          214                         |
|  /o-- cell_restore_wrapped                        2                         |
|  /o-- cell_restore_cell                          12                         |
|  /o-- cell_restore_global_wrapped               198                         |
|  /o-- cell_reread                                29                         |
|  /o-- model_continuation                          6                         |
|  /o-- phonon_initialise                           1                         |
| |/                                                                          |
| O-> comms_gcopy_character                       491         491      0.01s  |
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
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> bib_output                                    1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_farm_logical                   1           1      0.00s  |
|   o-> comms_reduce_bnd_logical                    1           1      0.00s  |
|   o-> comms_reduce_gv_logical                     1           1      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_prepare_init_wvfn                      1                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                       3           3      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                    168                         |
|  /                                                                          |
| O-> ion_atom_real_derivative_kind1              168         168      0.00s  |
|    /                                                                        |
|   o-> ion_atom_real_derivative                  168         168      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_xc                            210                         |
|  /o-- ion_atom_real_derivative_kind1            168                         |
| |/                                                                          |
| O-> ion_atom_real_derivative                    378         378      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_allocate                              5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     21                         |
|  /                                                                          |
| O-> ion_atom_partial_wave                        21          21      0.00s  |
|    /                                                                        |
|   o-> ion_atom_kh_partial_wave                   21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_pseudo_H                     108                         |
|  /                                                                          |
| O-> ion_atom_calc_pseudo_rho                    108         108      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                            108         108      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_partial_wave                      21                         |
|  /                                                                          |
| O-> ion_atom_kh_partial_wave                     21          21      0.00s  |
|    /                                                                        |
|   o-> ion_atom_cfd_solve                         21          21      0.00s  |
|   o-> ion_atom_radin                             21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          5                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                     9           9      0.00s  |
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
|   o-- cell_read_wrapped                           1                         |
|  /o-- nlxc_initialise                             1                         |
| |/                                                                          |
| O-> cell_generate_qpoints_local                   2           2      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       2           2      0.00s  |
|   o-> cell_detect_MP                              2           2      0.00s  |
|   o-> comms_gcopy_real                            6           6      0.00s  |
|   o-> comms_gcopy_integer                         4           4      0.00s  |
|   o-> comms_gcopy_logical                         2           2      0.00s  |
|   o-> cell_unfold_kpoints_arg_trace               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> nlxc_initialise                               1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.00s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_init_ae_atom                         6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> ion_finalise                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     84                         |
|  /                                                                          |
| O-> ion_atom_apply_Tl                            84          84      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                        110                         |
|  /                                                                          |
| O-> ion_cc_structure_factor                     110         110      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_diag                          354                         |
|  /                                                                          |
| O-> ion_atom_rectoreal                          354         354      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      3                         |
|  /o-- ion_atom_set_pseudo_H                     108                         |
| |/                                                                          |
| O-> ion_atom_pseudo_xc                          111         111      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                            111         111      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      4                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> bib_add                                       6           6      0.00s  |
|    /                                                                        |
|   o-> bib_setup                                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    5                         |
|  /                                                                          |
| O-> wave_q_dot_all_self_c                         5           5      0.00s  |
|    /                                                                        |
|   o-> local_q_dot_all_self_c                      5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              5                         |
|  /                                                                          |
| O-> comms_copy_gv_complex                         5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_q_dot_all_self_c                       5                         |
|  /                                                                          |
| O-> local_q_dot_all_self_c                        5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints           504                         |
|  /                                                                          |
| O-> algor_uniform_random                        504         504      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 1                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      3                         |
|  /o-- ion_atom_pn_pseudise                        6                         |
|  /o-- ion_atom_qc_pseudise_fn                    18                         |
|  /o-- ion_atom_Q_pseudise                        95                         |
| |/                                                                          |
| O-> ion_atom_poly_deriv                         122         122      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_parallel_strategy                       1           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               1           1      0.00s  |
|   o-> assign_nodes                                1           1      0.00s  |
|   o-> reassign_nodes                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> model_write_all                               1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_dump                             1           1      0.00s  |
|   o-> cell_dump                                   2           2      0.00s  |
|   o-> model_write_occ_eigenvalues                 1           1      0.00s  |
|   o-> density_write                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              5                         |
|  /                                                                          |
| O-> algor_invert_complex                          5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 1                         |
|  /                                                                          |
| O-> cell_unfold_kpoints_arg_trace                 1           1      0.00s  |
|    /                                                                        |
|   o-> cell_reduce_kpoints_internal                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_unfold_kpoints_arg_trace               1                         |
|  /                                                                          |
| O-> cell_reduce_kpoints_internal                  1           1      0.00s  |
|    /                                                                        |
|   o-> cell_kpoint_tolerance                       1           1      0.00s  |
|   o-> cell_sort_kpoints_with_recip                2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> density_write                                 1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> density_write_parallel                      1           1      0.00s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      3                         |
|  /o-- ion_atom_set_pseudo_H                     108                         |
| |/                                                                          |
| O-> ion_atom_pseudo_hartree                     111         111      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                            111         111      0.00s  |
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
|   o-- cell_reduce_kpoints_internal                2                         |
|  /                                                                          |
| O-> cell_sort_kpoints_with_recip                  2           2      0.00s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                      2           2      0.00s  |
|   o-> algor_invert_real                           4           4      0.00s  |
|   o-> algor_sort                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         3                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_H                        3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                            117         117      0.00s  |
|   o-> ion_atom_pseudo_hartree                     3           3      0.00s  |
|   o-> ion_atom_pseudo_xc                          3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /o-- ion_set_projectors                          1                         |
|  /o-- wave_prepare_init_wvfn                     10                         |
| |/                                                                          |
| O-> comms_reduce_gv_integer                      14          14      0.00s  |
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
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> basis_deallocate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_copy                                  2           2      0.00s  |
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
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_read                                      1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_inquire_psp                        3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_read                                    3                         |
|  /                                                                          |
| O-> ion_atom_inquire_psp                          3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     44                         |
|  /                                                                          |
| O-> ion_atom_fermi_contact                       44          44      0.00s  |
|    /                                                                        |
|   o-> ion_atom_interpolate                       44          44      0.00s  |
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
|   o-- ion_initialise                              7                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     7           7      0.00s  |
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
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_prepare_init_wvfn                        1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                    10          10      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudise                           3                         |
|  /                                                                          |
| O-> ion_atom_pn_pseudise                          3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_poly_deriv                         6           6      0.00s  |
|   o-> algor_invert_real                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_inquire_psp                        3                         |
|  /o-- ion_atom_generate_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_init_ae_basis                        6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_deallocate                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_keywords_setup                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- model_continuation                          2                         |
|  /o-- cell_supercell                              1                         |
| |/                                                                          |
| O-> cell_allocate                                 6           6      0.00s  |
|    /                                                                        |
|   o-> cell_deallocate                             6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                        69                         |
|  /                                                                          |
| O-> ion_atom_round_to_grid                       69          69      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                           88                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped             88          88      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          21      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_ae_H                          3                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_set_ae_occ                           6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                             3                         |
|  /                                                                          |
| O-> ion_atom_init_ae_H                            3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_set_ae_occ                         3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 1                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_symmetry_unchanged                   48                         |
|  /                                                                          |
| O-> model_compare_vectors                        48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              5                         |
|  /                                                                          |
| O-> comms_reduce_bnd_complex                      5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                  5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /                                                                          |
| O-> comms_gather_gv_integer                      12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip                2                         |
|  /o-- cell_detect_same_cell                       2                         |
| |/                                                                          |
| O-> algor_sort                                    4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_read_wrapped                           1                         |
|  /o-- cell_reread                                 1                         |
| |/                                                                          |
| O-> cell_setup_keywords                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_read                             1                         |
|  /o-- wave_initialise_wv                          1                         |
| |/                                                                          |
| O-> algor_set_random_seed                         2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   3                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_occ                       3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             2                         |
|  /                                                                          |
| O-> cell_dump                                     2           2      0.00s  |
|    /                                                                        |
|   o-> cell_dump_cell                              2           2      0.00s  |
|   o-> cell_dump_global                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                         5                         |
|  /                                                                          |
| O-> wave_calc_ps_q_nonzero                        5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> model_write_occ_eigenvalues                   1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_initialise                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         3                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_derivative                           6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /o-- model_write_occ_eigenvalues                 2                         |
| |/                                                                          |
| O-> comms_reduce_bnd_real                         3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_sort_kpoints_with_recip                2                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                        3           3      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_deallocate_wvfns                      1           1      0.00s  |
|    /                                                                        |
|   o-> wave_deallocate_wv                          4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_generate_cell_constraints                1           1      0.00s  |
|    /                                                                        |
|   o-> algor_uniform_random_array                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_efield_unchanged                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_descreen_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_ae_dealloc                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> check_forces_stresses                         1           1      0.00s  |
|    /                                                                        |
|   o-> firstd_output_forces                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_reduce_kpoints_internal                1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                      2           2      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_basis_ae_dealloc                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         3                         |
|  /                                                                          |
| O-> ion_atom_basis_pseudo_dealloc                 3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> find_strategy                                 1           1      0.00s  |
|    /                                                                        |
|   o-> best_mixed_strategy                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> openbc_locps_initialise                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_pressure_unchanged                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_symmetry_init                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> cell_distribute_kpoints_wrapped               3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> raman_finalise                                1           1      0.00s  |
|    /                                                                        |
|   o-> raman_empty_cache                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               1           1      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
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
|   o-- model_reset                                 2                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_deallocate                            4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_bnd_logical                    1                         |
|  /o-- comms_reduce_gv_logical                     1                         |
|  /o-- comms_reduce_kp_logical                     1                         |
| |/                                                                          |
| O-> comms_lcopy                                   3           3      0.00s  |
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
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_initialise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_hubbard_u_unchanged                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_output_wrapped                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom                   3                         |
|  /                                                                          |
| O-> ion_atom_resolve_pseudo_cfg                   3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      3                         |
|  /                                                                          |
| O-> ion_atom_write_pwave                          3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      3                         |
|  /                                                                          |
| O-> ion_atom_write_beta                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_output_psp                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_ionic_constr_unchanged                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_write                               1                         |
|  /                                                                          |
| O-> density_write_parallel                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_global                              2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> phonon_require_gs_wvfn                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_cell                                2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_kpoints_unchanged_2                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier_farm                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- find_strategy                               1                         |
|  /                                                                          |
| O-> best_mixed_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_exit                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_spin_type_wv                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> tddft_set_tddft_on                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> parameters_output                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> parameters_dump                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_output                                  1                         |
|  /                                                                          |
| O-> comms_reduce_farm_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_calculate_volume                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> reassign_nodes                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_recip_lattice                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_cell_constr_unchanged                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_forces_stresses                       1                         |
|  /                                                                          |
| O-> firstd_output_forces                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> cell_rationalise_coordinates                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_exit                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> implicit_solvent_autosolv_check               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> assign_nodes                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> memory_system_initialise                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
Class of operation                  Time spent
COMMS                                 356.07s
COMMS_GV                                0.20s
COMMS_KP                                0.44s
COMMS_BND                               0.00s
COMMS_FARM                              0.00s
     272 different subroutines and functions were traced
Hash collisions:          0
  
