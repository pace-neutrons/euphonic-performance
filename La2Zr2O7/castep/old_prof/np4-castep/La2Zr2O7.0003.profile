+-----------------------------------------------------------------------------+
|     Subroutine                              Total      Profiled   Time      |
|                                             calls      calls      (incl.)   |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> castep                                        1           1    400.43s  |
|    /                                                                        |
|   o-> memory_system_initialise                    1           1      0.00s  |
|   o-> comms_gcopy_real                            1           1      0.00s  |
|   o-> cell_read_wrapped                           1           1      8.81s  |
|   o-> ion_read                                    1           1      0.00s  |
|   o-> parameters_read                             1           1      0.01s  |
|   o-> bib_add                                     4           4      0.00s  |
|   o-> tddft_set_tddft_on                          1           1      0.00s  |
|   o-> multigrid_dlmg_initialise                   1           1      0.00s  |
|   o-> implicit_solvent_autosolv_check             1           1      0.00s  |
|   o-> model_continuation                          1           1     27.81s  |
|   o-> ion_ion_initialise                          1           1      0.00s  |
|   o-> openbc_locps_initialise                     1           1      0.00s  |
|   o-> nlxc_initialise                             1           1      0.00s  |
|   o-> parameters_output                           1           1      0.00s  |
|   o-> cell_output_wrapped                         1           1      0.00s  |
|   o-> phonon_require_gs_wvfn                      1           1      0.00s  |
|   o-> phonon_calculate                            1           1    363.56s  |
|   o-> check_forces_stresses                       1           1      0.00s  |
|   o-> model_write                                 1           1      0.24s  |
|   o-> bib_output                                  1           1      0.00s  |
|   o-> ion_ion_exit                                1           1      0.00s  |
|   o-> multigrid_dlmg_exit                         1           1      0.00s  |
|   o-> model_deallocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> phonon_calculate                              1           1    363.56s  |
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
|   o-> phonon_real_to_fine                      8334        8334      7.83s  |
|   o-> phonon_enforce_dmat_sumrule              8333        8333     78.90s  |
|   o-> phonon_prepare_and_diagonalise           8333        8333     12.62s  |
|   o-> phonon_accumulate_adp                    8333        8333      0.35s  |
|   o-> comms_send_complex                       8333        8333    263.43s  |
|   o-> comms_send_real                         16666       16666      0.07s  |
|   o-> comms_reduce_gv_real                        1           1      0.01s  |
|   o-> comms_reduce_bnd_real                       1           1      0.00s  |
|   o-> comms_reduce_kp_real                        1           1      0.03s  |
|   o-> cell_deallocate                             2           2      0.00s  |
|   o-> secondd_finalise                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         8333                         |
|  /                                                                          |
| O-> comms_send_complex                         8333        8333    263.43s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         8333                         |
|  /                                                                          |
| O-> phonon_enforce_dmat_sumrule                8333        8333     78.90s  |
|    /                                                                        |
|   o-> phonon_mass_weight_dmat                 16666       16666      0.19s  |
|   o-> phonon_diagonalise_d_cmplx              24999       24999     15.83s  |
|   o-> secondd_find_acoustics                   8333        8333      0.86s  |
|   o-> secondd_symmetrize_dmat_cmplx            8333        8333     60.88s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      8334                         |
|  /o-- phonon_enforce_dmat_sumrule              8333                         |
|  /o-- phonon_prepare_and_diagonalise           8333                         |
| |/                                                                          |
| O-> secondd_symmetrize_dmat_cmplx             25000       25000     73.90s  |
|    /                                                                        |
|   o-> two_q_is_a_g                            25000       25000      0.08s  |
|   o-> hermitian4                              25000       25000      0.25s  |
|   o-> cell_copy_symmetry                      50000       50000      0.43s  |
|   o-> cell_reduce_symmetry_ops_wrapped        25000       25000      8.29s  |
|   o-> secondd_group_symmetrize_dmat           25000       25000     55.23s  |
|   o-> cell_deallocate                         25000       25000      0.10s  |
|   o-> secondd_find_inversion                  25000       25000      0.09s  |
|   o-> secondd_tr_symmetrize_dmat              25000       25000      8.52s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25000                         |
|  /                                                                          |
| O-> secondd_group_symmetrize_dmat             25000       25000     55.23s  |
|    /                                                                        |
|   o-> cell_factor_group_symmetry_wrapped      25000       25000      0.32s  |
|   o-> secondd_check_equiv_ions                25000       25000      0.23s  |
|   o-> secondd_apply_symmetry_to_dmat_ion     441728      441728     47.96s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat          441728                         |
|  /o-- secondd_tr_symmetrize_dmat              25000                         |
| |/                                                                          |
| O-> secondd_apply_symmetry_to_dmat_ion       466728      466728     50.75s  |
|    /                                                                        |
|   o-> secondd_compute_atom_phases            466728      466728     16.25s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_continuation                            1           1     27.81s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
|   o-> comms_gcopy_logical                         4           4      0.00s  |
|   o-> parameters_restore                          1           1      0.00s  |
|   o-> cell_restore_wrapped                        2           2      0.13s  |
|   o-> comms_parallel_strategy                     1           1      0.00s  |
|   o-> cell_allocate                               2           2      0.00s  |
|   o-> cell_copy                                   5           5      0.00s  |
|   o-> cell_distribute_kpoints_wrapped             3           3      0.00s  |
|   o-> ion_initialise                              1           1     18.26s  |
|   o-> basis_initialise                            2           2      0.69s  |
|   o-> model_store_dependencies                    1           1      0.00s  |
|   o-> cell_reread                                 1           1      8.25s  |
|   o-> comms_gcopy_real                            7           7      0.00s  |
|   o-> comms_gcopy_integer                         5           5      0.00s  |
|   o-> parameters_nspins                           2           2      0.00s  |
|   o-> wave_allocate_wv                            1           1      0.00s  |
|   o-> wave_initialise_wv                          1           1      0.40s  |
|   o-> model_read_occ_eigenvalues                  1           1      0.00s  |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_read                                1           1      0.03s  |
|   o-> comms_gcopy_character                       6           6      0.00s  |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> parameters_reread                           1           1      0.01s  |
|   o-> model_check_dependencies                    1           1      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             24999                         |
|  /o-- phonon_prepare_and_diagonalise           8333                         |
| |/                                                                          |
| O-> phonon_diagonalise_d_cmplx                33332       33332     21.20s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> ion_initialise                                1           1     18.26s  |
|    /                                                                        |
|   o-> ion_allocate                                1           1      0.00s  |
|   o-> ion_atom_allocate_pspot                     6           6      0.10s  |
|   o-> ion_atom_generate_psp                       3           3     16.53s  |
|   o-> ion_set_data                                3           3      0.09s  |
|   o-> ion_atom_deallocate_pspot                   7           7      0.00s  |
|   o-> ion_set_psp                                 3           3      0.05s  |
|   o-> ion_atom_pseudo_scf                         3           3      1.49s  |
|   o-> ion_clebsch_gordan                          1           1      0.00s  |
|   o-> ion_atom_radial_transform                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_atom_generate_psp                         3           3     16.53s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      3           3      0.00s  |
|   o-> ion_atom_init_ae_atom                       3           3      0.00s  |
|   o-> ion_atom_ae_scf                             3           3      0.78s  |
|   o-> ion_atom_define_psp                         3           3      0.68s  |
|   o-> ion_atom_construct_psp                      3           3     14.80s  |
|   o-> ion_atom_descreen_psp                       3           3      0.26s  |
|   o-> ion_atom_output_psp                         3           3      0.00s  |
|   o-> ion_atom_basis_ae_dealloc                   3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_apply_symmetry_to_dmat_ion     466728                         |
|  /                                                                          |
| O-> secondd_compute_atom_phases              466728      466728     16.25s  |
|    /                                                                        |
|   o-> q_is_a_g                               433456      433456      1.30s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_construct_psp                        3           3     14.80s  |
|    /                                                                        |
|   o-> ion_atom_partial_wave                      21          21      0.00s  |
|   o-> ion_atom_pseudise                          21          21      0.08s  |
|   o-> ion_atom_write_pwave                        3           3      0.00s  |
|   o-> ion_atom_radin                          61185       61185      0.91s  |
|   o-> ion_atom_Q_pseudise                        95          95      4.67s  |
|   o-> ion_atom_write_beta                         3           3      0.00s  |
|   o-> ion_atom_radial_transform                  92          92      2.54s  |
|   o-> ion_atom_fermi_contact                     44          44      0.00s  |
|   o-> ion_atom_apply_Tl                          84          84      0.00s  |
|   o-> ion_atom_real_derivative_kind1            168         168      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         8333                         |
|  /                                                                          |
| O-> phonon_prepare_and_diagonalise             8333        8333     12.62s  |
|    /                                                                        |
|   o-> q_is_a_g                                16666       16666      0.05s  |
|   o-> secondd_symmetrize_dmat_cmplx            8333        8333      6.52s  |
|   o-> phonon_constrain_dmat                    8333        8333      0.03s  |
|   o-> phonon_mass_weight_dmat                  8333        8333      0.10s  |
|   o-> phonon_diagonalise_d_cmplx               8333        8333      5.37s  |
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
| O-> cell_read_wrapped                             1           1      8.81s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        64          64      8.81s  |
|   o-> cell_allocate                               1           1      0.00s  |
|   o-> comms_gcopy_logical                        11          11      0.00s  |
|   o-> comms_gcopy_real                           80          80      0.00s  |
|   o-> comms_gcopy_character                      29          29      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25000                         |
|  /                                                                          |
| O-> secondd_tr_symmetrize_dmat                25000       25000      8.52s  |
|    /                                                                        |
|   o-> secondd_check_equiv_ions                25000       25000      5.24s  |
|   o-> secondd_apply_symmetry_to_dmat_ion      25000       25000      2.79s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25000                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_ops_wrapped          25000       25000      8.29s  |
|    /                                                                        |
|   o-> cell_check_group                        25000       25000      7.84s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> cell_reread                                   1           1      8.25s  |
|    /                                                                        |
|   o-> cell_setup_keywords                         1           1      0.00s  |
|   o-> comms_gcopy_integer                        60          60      0.75s  |
|   o-> comms_gcopy_real                           78          78      7.50s  |
|   o-> comms_gcopy_character                      29          29      0.00s  |
|   o-> comms_gcopy_logical                        10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_symmetry_ops_wrapped        25000                         |
|  /                                                                          |
| O-> cell_check_group                          25000       25000      7.84s  |
|    /                                                                        |
|   o-> algor_invert_real                      416728      416728      1.26s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         8334                         |
|  /                                                                          |
| O-> phonon_real_to_fine                        8334        8334      7.83s  |
|    /                                                                        |
|   o-> cell_num_supercells                      8334        8334      0.03s  |
|   o-> check_image_list                         8334        8334      0.03s  |
|   o-> secondd_symmetrize_dmat_cmplx            8334        8334      6.49s  |
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
| O-> comms_gcopy_real                            522         522      7.50s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           25000                         |
|  /o-- secondd_tr_symmetrize_dmat              25000                         |
| |/                                                                          |
| O-> secondd_check_equiv_ions                  50000       50000      5.46s  |
|    /                                                                        |
|   o-> secondd_equiv_atoms_to_ions            816712      816712      2.58s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     95                         |
|  /                                                                          |
| O-> ion_atom_Q_pseudise                          95          95      4.67s  |
|    /                                                                        |
|   o-> ion_atom_set_qn                            13          13      0.01s  |
|   o-> ion_atom_radin                          77045       77045      0.85s  |
|   o-> ion_atom_poly_deriv                        95          95      0.00s  |
|   o-> ion_atom_regin                           6840        6840      0.02s  |
|   o-> ion_atom_solve_linear                      95          95      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         3                         |
|  /o-- ion_atom_construct_psp                     92                         |
|  /o-- ion_initialise                              1                         |
| |/                                                                          |
| O-> ion_atom_radial_transform                    96          96      3.10s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_check_equiv_ions               816712                         |
|  /                                                                          |
| O-> secondd_equiv_atoms_to_ions              816712      816712      2.58s  |
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
| O-> ion_atom_radin                           153701      153701      1.97s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_atom_pseudo_scf                           3           3      1.49s  |
|    /                                                                        |
|   o-> ion_atom_init_pseudo_basis                  3           3      0.02s  |
|   o-> ion_atom_init_pseudo_atom                   3           3      0.28s  |
|   o-> ion_atom_init_pseudo_H                      3           3      0.00s  |
|   o-> ion_atom_ps_diag                          108         108      1.06s  |
|   o-> ion_atom_set_pseudo_H                     108         108      0.04s  |
|   o-> ion_atom_regin                           6003        6003      0.02s  |
|   o-> ion_atom_basis_pseudo_dealloc               3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                           10                         |
|  /o-- secondd_compute_atom_phases            433456                         |
|  /o-- phonon_prepare_and_diagonalise          16666                         |
| |/                                                                          |
| O-> q_is_a_g                                 450132      450132      1.36s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pn_pseudise                        3                         |
|  /o-- cell_find_reduced_cell                      3                         |
|  /o-- cell_sort_kpoints_with_recip                4                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- cell_check_group                       416728                         |
| |/                                                                          |
| O-> algor_invert_real                        416741      416741      1.26s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                       108                         |
|  /                                                                          |
| O-> ion_atom_ps_diag                            108         108      1.06s  |
|    /                                                                        |
|   o-> ion_atom_regin                         139221      139221      0.49s  |
|   o-> ion_atom_rectoreal                        354         354      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule              8333                         |
|  /                                                                          |
| O-> secondd_find_acoustics                     8333        8333      0.86s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_ae_scf                               3           3      0.78s  |
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
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> basis_initialise                              2           2      0.69s  |
|    /                                                                        |
|   o-> cell_copy                                   2           2      0.00s  |
|   o-> basis_utils_prime_factors                   6           6      0.00s  |
|   o-> basis_distribute_grids                      1           1      0.19s  |
|   o-> basis_map_standard_to_fine                  1           1      0.00s  |
|   o-> basis_map_fine_recip_half_full              1           1      0.00s  |
|   o-> basis_assign_grid_coordinates               2           2      0.02s  |
|   o-> basis_count_plane_waves                     1           1      0.47s  |
|   o-> basis_assign_plane_wave_indexes             1           1      0.00s  |
|   o-> basis_assign_pw_gvectors                    2           2      0.00s  |
|   o-> basis_calculate_cut_off                     2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_define_psp                           3           3      0.68s  |
|    /                                                                        |
|   o-> ion_atom_round_to_grid                     69          69      0.00s  |
|   o-> ion_atom_radin                              9           9      0.00s  |
|   o-> ion_atom_core_pseudise                      3           3      0.12s  |
|   o-> ion_atom_radial_transform                   3           3      0.56s  |
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
| O-> ion_atom_regin                           158454      158454      0.55s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           9962                         |
|  /o-- ion_atom_kh_partial_wave                   21                         |
| |/                                                                          |
| O-> ion_atom_cfd_solve                         9983        9983      0.51s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_count_plane_waves                       1           1      0.47s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                     3           3      0.01s  |
|   o-> comms_reduce_kp_integer                     3           3      0.45s  |
+-----------------------------------------------------------------------------+
|   o-- basis_count_plane_waves                     3                         |
|  /                                                                          |
| O-> comms_reduce_kp_integer                       3           3      0.45s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           50000                         |
|  /                                                                          |
| O-> cell_copy_symmetry                        50000       50000      0.43s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_initialise_wv                            1           1      0.40s  |
|     +- section "initialisation", branch on value of method:-                |
|       R                                           1           1      0.40s  |
|         \                                                                   |
|          o-> wave_spin_type_wv                    1           1      0.00s  |
|          o-> wave_prepare_init_wvfn               1           1      0.00s  |
|          o-> algor_set_random_seed                1           1      0.00s  |
|          o-> algor_uniform_random_array         530         530      0.01s  |
|          o-> wave_Sorthonormalise_wv              1           1      0.38s  |
|    /                                                                        |
|   o-> ion_set_projectors                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv                       1           1      0.38s  |
|    /                                                                        |
|   o-> wave_Sorthonormalise_wv_ks                  5           5      0.38s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv                     5                         |
|  /                                                                          |
| O-> wave_Sorthonormalise_wv_ks                    5           5      0.38s  |
|    /                                                                        |
|   o-> wave_calc_Soverlap_wv_ks                    5           5      0.34s  |
|   o-> wave_orthonormalise_over_wv_ks              5           5      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                         8333                         |
|  /                                                                          |
| O-> phonon_accumulate_adp                      8333        8333      0.35s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                  5                         |
|  /                                                                          |
| O-> wave_calc_Soverlap_wv_ks                      5           5      0.34s  |
|    /                                                                        |
|   o-> coeffs_dot_all_self                         5           5      0.03s  |
|   o-> wave_beta_phi_wv_ks                         5           5      0.31s  |
|   o-> wave_q_dot_all_self_c                       5           5      0.00s  |
|   o-> comms_reduce_gv_complex                     5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_group_symmetrize_dmat           25000                         |
|  /                                                                          |
| O-> cell_factor_group_symmetry_wrapped        25000       25000      0.32s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    5                         |
|  /                                                                          |
| O-> wave_beta_phi_wv_ks                           5           5      0.31s  |
|    /                                                                        |
|   o-> ion_set_projectors                          5           5      0.00s  |
|   o-> wave_calc_ps_q_nonzero                      5           5      0.00s  |
|   o-> ion_all_beta_multi_phi_recip                5           5      0.29s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                         5                         |
|  /                                                                          |
| O-> ion_all_beta_multi_phi_recip                  5           5      0.29s  |
|    /                                                                        |
|   o-> ion_beta_recip_set                          5           5      0.17s  |
|   o-> algor_matmul_cmplx_cmplx                    5           5      0.11s  |
|   o-> comms_reduce_gv_complex                     5           5      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_enforce_dmat_sumrule             16666                         |
|  /o-- phonon_prepare_and_diagonalise           8333                         |
| |/                                                                          |
| O-> phonon_mass_weight_dmat                   24999       24999      0.29s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         3                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_atom                     3           3      0.28s  |
|    /                                                                        |
|   o-> ion_atom_resolve_pseudo_cfg                 3           3      0.00s  |
|   o-> ion_atom_locate                         12410       12410      0.04s  |
|   o-> ion_atom_interpolate                    12410       12410      0.04s  |
|   o-> ion_atom_set_pseudo_occ                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_descreen_psp                         3           3      0.26s  |
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
|   o-- secondd_symmetrize_dmat_cmplx           25000                         |
|  /                                                                          |
| O-> hermitian4                                25000       25000      0.25s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_write                                   1           1      0.24s  |
|    /                                                                        |
|   o-> model_write_all                             1           1      0.11s  |
|   o-> comms_barrier_farm                          1           1      0.00s  |
|   o-> comms_barrier                               1           1      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_distribute_grids                        1           1      0.19s  |
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
|   o-> comms_local_map                             2           2      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- comms_map_transpose_n                       2                         |
|  /                                                                          |
| O-> comms_local_map                               2           2      0.19s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                        16666                         |
|  /o-- model_write_occ_eigenvalues                 3                         |
| |/                                                                          |
| O-> comms_send_real                           16669       16669      0.18s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                5                         |
|  /                                                                          |
| O-> ion_beta_recip_set                            5           5      0.17s  |
|    /                                                                        |
|   o-> ion_set_projectors                          5           5      0.00s  |
|   o-> ion_cc_structure_factor                   110         110      0.01s  |
|   o-> ion_beta_recip_interpolation             1320        1320      0.08s  |
|   o-> basis_multiply_recip_reduced             1320        1320      0.01s  |
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
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier                                 1           1      0.12s  |
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
|   o-- cell_restore_wrapped                        2                         |
|  /                                                                          |
| O-> cell_analyse_symmetry_wrapped                 2           2      0.12s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> model_write_all                               1           1      0.11s  |
|    /                                                                        |
|   o-> parameters_dump                             1           1      0.00s  |
|   o-> cell_dump                                   2           2      0.00s  |
|   o-> model_write_occ_eigenvalues                 1           1      0.11s  |
|   o-> density_write                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> model_write_occ_eigenvalues                   1           1      0.11s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_real                       2           2      0.00s  |
|   o-> comms_gather_kp_integer                     1           1      0.00s  |
|   o-> comms_send_real                             3           3      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                5                         |
|  /                                                                          |
| O-> algor_matmul_cmplx_cmplx                      5           5      0.11s  |
+-----------------------------------------------------------------------------+
|   o-- cell_allocate                               6                         |
|  /o-- model_reset                                 8                         |
|  /o-- cell_restore_cell                           2                         |
|  /o-- cell_supercell                              1                         |
|  /o-- secondd_symmetrize_dmat_cmplx           25000                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_deallocate                           25019       25019      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              6                         |
|  /                                                                          |
| O-> ion_atom_allocate_pspot                       6           6      0.10s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_set_data                                  3           3      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25000                         |
|  /                                                                          |
| O-> secondd_find_inversion                    25000       25000      0.09s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       1320                         |
|  /                                                                          |
| O-> ion_beta_recip_interpolation               1320        1320      0.08s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_symmetrize_dmat_cmplx           25000                         |
|  /                                                                          |
| O-> two_q_is_a_g                              25000       25000      0.08s  |
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
|   o-- ion_initialise                              3                         |
|  /                                                                          |
| O-> ion_set_psp                                   3           3      0.05s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_descreen_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_ps_solve                             3           3      0.04s  |
|    /                                                                        |
|   o-> ion_atom_sod_solve                        557         557      0.02s  |
|   o-> ion_atom_radin                           1217        1217      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_real                        1                         |
|  /o-- comms_reduce_bnd_real                       3                         |
|  /o-- comms_reduce_kp_real                        1                         |
| |/                                                                          |
| O-> comms_reduce_array_real                       5           5      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_fermi_contact                     44                         |
|  /o-- ion_atom_init_pseudo_atom               12410                         |
| |/                                                                          |
| O-> ion_atom_interpolate                      12454       12454      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                           207                         |
|  /                                                                          |
| O-> ion_atom_set_ae_H                           207         207      0.04s  |
|    /                                                                        |
|   o-> ion_atom_ae_hartree                       207         207      0.01s  |
|   o-> ion_atom_ae_xc                            207         207      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_atom               12410                         |
|  /                                                                          |
| O-> ion_atom_locate                           12410       12410      0.04s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                       108                         |
|  /                                                                          |
| O-> ion_atom_set_pseudo_H                       108         108      0.04s  |
|    /                                                                        |
|   o-> ion_atom_calc_pseudo_rho                  108         108      0.00s  |
|   o-> ion_atom_pseudo_hartree                   108         108      0.00s  |
|   o-> ion_atom_pseudo_xc                        108         108      0.00s  |
|   o-> ion_atom_regin                           4113        4113      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_Sorthonormalise_wv_ks                  5                         |
|  /                                                                          |
| O-> wave_orthonormalise_over_wv_ks                5           5      0.04s  |
|    /                                                                        |
|   o-> comms_reduce_bnd_complex                    5           5      0.00s  |
|   o-> algor_invert_complex                        5           5      0.00s  |
|   o-> comms_copy_gv_complex                       5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> density_read                                  1           1      0.03s  |
|    /                                                                        |
|   o-> density_real_to_complex                     1           1      0.00s  |
|   o-> density_read_parallel                       1           1      0.03s  |
|   o-> density_complex_to_real                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_real_to_fine                      8334                         |
|  /                                                                          |
| O-> check_image_list                           8334        8334      0.03s  |
|    /                                                                        |
|   o-> cell_frac_to_cart_vector_wrapped           88          88      0.00s  |
|   o-> cell_find_reduced_cell                      1           1      0.00s  |
|   o-> cell_detect_same_cell                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_calc_Soverlap_wv_ks                    5                         |
|  /                                                                          |
| O-> coeffs_dot_all_self                           5           5      0.03s  |
|    /                                                                        |
|   o-> local_dot_all_self                          5           5      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- coeffs_dot_all_self                         5                         |
|  /                                                                          |
| O-> local_dot_all_self                            5           5      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_koelling_harmon_solve           4981                         |
|  /                                                                          |
| O-> ion_atom_number_of_nodes                   4981        4981      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_prepare_and_diagonalise           8333                         |
|  /                                                                          |
| O-> phonon_constrain_dmat                      8333        8333      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- basis_calculate_cut_off                     2                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> comms_reduce_kp_real                          3           3      0.03s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_read_parallel                         1           1      0.03s  |
|    /                                                                        |
|   o-> comms_copy_kp_complex                       1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- density_read_parallel                       1                         |
|  /                                                                          |
| O-> comms_copy_kp_complex                         1           1      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- cell_supercell                              1                         |
|  /o-- cell_generate_supercell_origins             1                         |
|  /o-- cell_set_supercell_symmetry                 1                         |
|  /o-- phonon_real_to_fine                      8334                         |
| |/                                                                          |
| O-> cell_num_supercells                        8339        8339      0.03s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_qc_pseudise_fn                  7218                         |
|  /                                                                          |
| O-> ion_atom_expjl                             7218        7218      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_grid_coordinates                 2           2      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ps_solve                         557                         |
|  /                                                                          |
| O-> ion_atom_sod_solve                          557         557      0.02s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_ae_H                         207                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_ae_xc                              210         210      0.02s  |
|    /                                                                        |
|   o-> ion_atom_real_derivative                  210         210      0.00s  |
|   o-> ion_atom_radin                            210         210      0.00s  |
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
|   o-> model_compare_vectors                      48          48      0.00s  |
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
| O-> comms_reduce_gv_real                          3           3      0.01s  |
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
|   o-- basis_count_plane_waves                     3                         |
|  /o-- ion_set_projectors                          1                         |
|  /o-- wave_prepare_init_wvfn                     10                         |
| |/                                                                          |
| O-> comms_reduce_gv_integer                      14          14      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_gv_complex                    10                         |
|  /o-- comms_reduce_bnd_complex                    5                         |
| |/                                                                          |
| O-> comms_reduce_array_complex                   15          15      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_all_beta_multi_phi_recip                5                         |
|  /o-- wave_calc_Soverlap_wv_ks                    5                         |
| |/                                                                          |
| O-> comms_reduce_gv_complex                      10          10      0.01s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                 10          10      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                       1320                         |
|  /                                                                          |
| O-> basis_multiply_recip_reduced               1320        1320      0.01s  |
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
|   o-- model_continuation                          1                         |
|  /o-- density_real_to_complex                     1                         |
|  /o-- density_complex_to_real                     1                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_allocate                              5           5      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                        530                         |
|  /o-- cell_generate_cell_constraints              1                         |
| |/                                                                          |
| O-> algor_uniform_random_array                  531         531      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_reread                             1           1      0.01s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                         2           2      0.01s  |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      3                         |
|  /o-- ion_atom_qc_pseudise_fn                    18                         |
|  /o-- ion_atom_Q_pseudise                        95                         |
| |/                                                                          |
| O-> ion_atom_solve_linear                       116         116      0.01s  |
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
|   o-- ion_atom_init_pseudo_basis               1206                         |
|  /                                                                          |
| O-> ion_atom_find_root                         1206        1206      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- ion_beta_recip_set                        110                         |
|  /                                                                          |
| O-> ion_cc_structure_factor                     110         110      0.01s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_real_to_complex                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
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
|   o-- wave_calc_Soverlap_wv_ks                    5                         |
|  /                                                                          |
| O-> wave_q_dot_all_self_c                         5           5      0.00s  |
|    /                                                                        |
|   o-> local_q_dot_all_self_c                      5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_q_dot_all_self_c                       5                         |
|  /                                                                          |
| O-> local_q_dot_all_self_c                        5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                    168                         |
|  /                                                                          |
| O-> ion_atom_real_derivative_kind1              168         168      0.00s  |
|    /                                                                        |
|   o-> ion_atom_real_derivative                  168         168      0.00s  |
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
|   o-- ion_atom_ae_xc                            210                         |
|  /o-- ion_atom_real_derivative_kind1            168                         |
| |/                                                                          |
| O-> ion_atom_real_derivative                    378         378      0.00s  |
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
|   o-- ion_atom_construct_psp                     21                         |
|  /                                                                          |
| O-> ion_atom_partial_wave                        21          21      0.00s  |
|    /                                                                        |
|   o-> ion_atom_kh_partial_wave                   21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_prepare_init_wvfn                      1                         |
|  /o-- phonon_calculate                            1                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_kp_logical                       3           3      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
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
| O-> comms_gcopy_character                       491         491      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          5                         |
|  /o-- basis_initialise                            2                         |
|  /o-- phonon_calculate                            2                         |
| |/                                                                          |
| O-> cell_copy                                     9           9      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_set_pseudo_H                     108                         |
|  /                                                                          |
| O-> ion_atom_calc_pseudo_rho                    108         108      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                            108         108      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_read                                1                         |
|  /                                                                          |
| O-> density_complex_to_real                       1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_partial_wave                      21                         |
|  /                                                                          |
| O-> ion_atom_kh_partial_wave                     21          21      0.00s  |
|    /                                                                        |
|   o-> ion_atom_cfd_solve                         21          21      0.00s  |
|   o-> ion_atom_radin                             21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 30                         |
|  /                                                                          |
| O-> comms_copy_kp_real                           30          30      0.00s  |
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
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> nlxc_initialise                               1           1      0.00s  |
|    /                                                                        |
|   o-> density_allocate                            1           1      0.00s  |
|   o-> density_copy                                1           1      0.00s  |
|   o-> cell_generate_qpoints_local                 1           1      0.00s  |
|   o-> density_deallocate                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> parameters_restore                            1           1      0.00s  |
|    /                                                                        |
|   o-> parameters_bcast                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_init_ae_atom                         6           6      0.00s  |
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
|   o-- ion_atom_construct_psp                     84                         |
|  /                                                                          |
| O-> ion_atom_apply_Tl                            84          84      0.00s  |
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
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_assign_pw_gvectors                      2           2      0.00s  |
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
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_assign_plane_wave_indexes               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 1                         |
|  /                                                                          |
| O-> cell_find_related_atoms_supercell             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> comms_parallel_strategy                       1           1      0.00s  |
|    /                                                                        |
|   o-> find_strategy                               1           1      0.00s  |
|   o-> assign_nodes                                1           1      0.00s  |
|   o-> reassign_nodes                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_core_pseudise                      3                         |
|  /o-- ion_atom_pn_pseudise                        6                         |
|  /o-- ion_atom_qc_pseudise_fn                    18                         |
|  /o-- ion_atom_Q_pseudise                        95                         |
| |/                                                                          |
| O-> ion_atom_poly_deriv                         122         122      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_ionic_constraints           504                         |
|  /                                                                          |
| O-> algor_uniform_random                        504         504      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_copy                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              5                         |
|  /                                                                          |
| O-> algor_invert_complex                          5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_fine_recip_half_full                1           1      0.00s  |
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
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> basis_deallocate                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_pseudo_H                      3                         |
|  /o-- ion_atom_set_pseudo_H                     108                         |
| |/                                                                          |
| O-> ion_atom_pseudo_hartree                     111         111      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                            111         111      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_reduce_kpoints_internal                2                         |
|  /                                                                          |
| O-> cell_sort_kpoints_with_recip                  2           2      0.00s  |
|    /                                                                        |
|   o-> cell_find_reduced_cell                      2           2      0.00s  |
|   o-> algor_invert_real                           4           4      0.00s  |
|   o-> algor_sort                                  2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /o-- wave_beta_phi_wv_ks                         5                         |
|  /o-- ion_beta_recip_set                          5                         |
| |/                                                                          |
| O-> ion_set_projectors                           11          11      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_logical                    11          11      0.00s  |
|   o-> comms_reduce_gv_integer                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         3                         |
|  /                                                                          |
| O-> ion_atom_init_pseudo_H                        3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_regin                            117         117      0.00s  |
|   o-> ion_atom_pseudo_hartree                     3           3      0.00s  |
|   o-> ion_atom_pseudo_xc                          3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              5                         |
|  /                                                                          |
| O-> comms_copy_gv_complex                         5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- <parent(s) not traced>                      1                         |
|  /                                                                          |
| O-> ion_finalise                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_set_projectors                         11                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_gv_logical                      12          12      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
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
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_finalise                              1           1      0.00s  |
|    /                                                                        |
|   o-> raman_finalise                              1           1      0.00s  |
|   o-> secondd_deallocate_wvfns                    1           1      0.00s  |
|   o-> secondd_detect_symmetry_changed             1           1      0.00s  |
|   o-> secondd_detect_kpoints_changed              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> wave_allocate_wv                              1           1      0.00s  |
|    /                                                                        |
|   o-> wave_band_basis_initialise                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_restore_global_wrapped                 4                         |
| |/                                                                          |
| O-> cell_detect_MP                                6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> secondd_detect_symmetry_changed               1           1      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_logical                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            1                         |
|  /                                                                          |
| O-> basis_map_standard_to_fine                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              7                         |
|  /                                                                          |
| O-> ion_atom_deallocate_pspot                     7           7      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                     44                         |
|  /                                                                          |
| O-> ion_atom_fermi_contact                       44          44      0.00s  |
|    /                                                                        |
|   o-> ion_atom_interpolate                       44          44      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_allocate                                  1           1      0.00s  |
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
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_read                                      1           1      0.00s  |
|    /                                                                        |
|   o-> ion_atom_inquire_psp                        3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_inquire_psp                        3                         |
|  /o-- ion_atom_generate_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_init_ae_basis                        6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_initialise                              1                         |
|  /                                                                          |
| O-> ion_clebsch_gordan                            1           1      0.00s  |
|    /                                                                        |
|   o-> init_factorial                              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudise                           3                         |
|  /                                                                          |
| O-> ion_atom_pn_pseudise                          3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_poly_deriv                         6           6      0.00s  |
|   o-> algor_invert_real                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_read                                    3                         |
|  /                                                                          |
| O-> ion_atom_inquire_psp                          3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_init_ae_basis                      3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> model_deallocate                              1           1      0.00s  |
|    /                                                                        |
|   o-> model_reset                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_init_ae_H                          3                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_set_ae_occ                           6           6      0.00s  |
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
|   o-- parameters_read                             1                         |
|  /                                                                          |
| O-> parameters_keywords_setup                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_image_list                           88                         |
|  /                                                                          |
| O-> cell_frac_to_cart_vector_wrapped             88          88      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_ae_scf                             3                         |
|  /                                                                          |
| O-> ion_atom_init_ae_H                            3           3      0.00s  |
|    /                                                                        |
|   o-> ion_atom_set_ae_occ                         3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                        69                         |
|  /                                                                          |
| O-> ion_atom_round_to_grid                       69          69      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_copy_kpoints                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_initialise_wv                          1                         |
|  /                                                                          |
| O-> wave_prepare_init_wvfn                        1           1      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_integer                    10          10      0.00s  |
|   o-> comms_reduce_kp_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_add                                     1                         |
|  /                                                                          |
| O-> bib_setup                                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- parameters_bcast                           21                         |
|  /                                                                          |
| O-> parameters_reallocate_xc                     21          21      0.00s  |
|    /                                                                        |
|   o-> comms_gcopy_integer                        21          21      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_initialise                            2                         |
|  /                                                                          |
| O-> basis_calculate_cut_off                       2           2      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_gv_real                        2           2      0.00s  |
|   o-> comms_reduce_kp_real                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- secondd_deallocate_wvfns                    4                         |
| |/                                                                          |
| O-> wave_deallocate_wv                            6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /                                                                          |
| O-> comms_gather_gv_integer                      12          12      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_set_supercell_symmetry                 1                         |
|  /                                                                          |
| O-> cell_reduce_symmetry_supercell                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_orthonormalise_over_wv_ks              5                         |
|  /                                                                          |
| O-> comms_reduce_bnd_complex                      5           5      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_complex                  5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_symmetry_unchanged                   48                         |
|  /                                                                          |
| O-> model_compare_vectors                        48          48      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 50                         |
|  /                                                                          |
| O-> comms_copy_bnd_logical                       50          50      0.00s  |
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
|   o-- model_write_all                             2                         |
|  /                                                                          |
| O-> cell_dump                                     2           2      0.00s  |
|    /                                                                        |
|   o-> cell_dump_cell                              2           2      0.00s  |
|   o-> cell_dump_global                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                     12                         |
|  /o-- model_write_occ_eigenvalues                 1                         |
| |/                                                                          |
| O-> comms_gather_kp_integer                      13          13      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_beta_phi_wv_ks                         5                         |
|  /                                                                          |
| O-> wave_calc_ps_q_nonzero                        5           5      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_define_psp                         3                         |
|  /o-- ion_atom_descreen_psp                       3                         |
| |/                                                                          |
| O-> ion_atom_derivative                           6           6      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- basis_distribute_grids                      1                         |
|  /                                                                          |
| O-> basis_utils_sort_columns                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_initialise                     1           1      0.00s  |
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
|   o-- cell_sort_kpoints_with_recip                2                         |
|  /o-- check_image_list                            1                         |
| |/                                                                          |
| O-> cell_find_reduced_cell                        3           3      0.00s  |
|    /                                                                        |
|   o-> algor_invert_real                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /o-- model_write_occ_eigenvalues                 2                         |
| |/                                                                          |
| O-> comms_reduce_bnd_real                         3           3      0.00s  |
|    /                                                                        |
|   o-> comms_reduce_array_real                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_symmetry_init                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_pseudo_scf                         3                         |
|  /                                                                          |
| O-> ion_atom_basis_pseudo_dealloc                 3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /o-- nlxc_initialise                             1                         |
|  /o-- density_write                               1                         |
| |/                                                                          |
| O-> density_deallocate                            4           4      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> check_forces_stresses                         1           1      0.00s  |
|    /                                                                        |
|   o-> firstd_output_forces                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          1                         |
|  /                                                                          |
| O-> model_store_dependencies                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_generate_qpoints_local                 2                         |
|  /o-- cell_reduce_kpoints_internal                1                         |
| |/                                                                          |
| O-> cell_kpoint_tolerance                         3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_efield_unchanged                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /o-- bib_output                                  1                         |
| |/                                                                          |
| O-> comms_reduce_bnd_logical                      2           2      0.00s  |
|    /                                                                        |
|   o-> comms_lcopy                                 1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                 10                         |
|  /                                                                          |
| O-> comms_copy_bnd_real                          10          10      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> openbc_locps_initialise                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_basis_ae_dealloc                     3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_generate_supercell_origins               1           1      0.00s  |
|    /                                                                        |
|   o-> cell_num_supercells                         1           1      0.00s  |
|   o-> algor_invert_real                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_descreen_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_ae_dealloc                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> find_strategy                                 1           1      0.00s  |
|    /                                                                        |
|   o-> best_mixed_strategy                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_read_occ_eigenvalues                  2                         |
|  /                                                                          |
| O-> comms_copy_gv_real                            2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_pressure_unchanged                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- secondd_finalise                            1                         |
|  /                                                                          |
| O-> raman_finalise                                1           1      0.00s  |
|    /                                                                        |
|   o-> raman_empty_cache                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          3                         |
|  /                                                                          |
| O-> cell_distribute_kpoints_wrapped               3           3      0.00s  |
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
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> cell_output_wrapped                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_set_current_kpoints_wrapped              1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_reduce_bnd_logical                    1                         |
|  /o-- comms_reduce_gv_logical                     1                         |
|  /o-- comms_reduce_kp_logical                     1                         |
| |/                                                                          |
| O-> comms_lcopy                                   3           3      0.00s  |
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
|   o-- ion_atom_init_pseudo_atom                   3                         |
|  /                                                                          |
| O-> ion_atom_resolve_pseudo_cfg                   3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      3                         |
|  /                                                                          |
| O-> ion_atom_write_pwave                          3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            2                         |
|  /                                                                          |
| O-> phonon_write_header                           2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_generate_psp                       3                         |
|  /                                                                          |
| O-> ion_atom_output_psp                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_atom_construct_psp                      3                         |
|  /                                                                          |
| O-> ion_atom_write_beta                           3           3      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- density_write                               1                         |
|  /                                                                          |
| O-> density_write_parallel                        1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- wave_allocate_wv                            1                         |
|  /                                                                          |
| O-> wave_band_basis_initialise                    1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_kpoints_unchanged_2                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_global                              2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_dump                                   2                         |
|  /                                                                          |
| O-> cell_dump_cell                                2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_ionic_constr_unchanged                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /o-- phonon_calculate                            1                         |
| |/                                                                          |
| O-> phonon_require_gs_wvfn                        2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_reset                                 2                         |
|  /                                                                          |
| O-> dielectric_permittivity_deallocate            2           2      0.00s  |
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
|   o-- find_strategy                               1                         |
|  /                                                                          |
| O-> best_mixed_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write                                 1                         |
|  /                                                                          |
| O-> comms_barrier_farm                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_continuation                          2                         |
|  /                                                                          |
| O-> parameters_nspins                             2           2      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_write_all                             1                         |
|  /                                                                          |
| O-> parameters_dump                               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> ion_ion_exit                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> cell_rationalise_coordinates                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- model_check_dependencies                    1                         |
|  /                                                                          |
| O-> model_cell_constr_unchanged                   1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_calculate                            1                         |
|  /                                                                          |
| O-> secondd_compare_kpoints                       1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- check_forces_stresses                       1                         |
|  /                                                                          |
| O-> firstd_output_forces                          1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> reassign_nodes                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_recip_lattice                            1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- raman_finalise                              1                         |
|  /                                                                          |
| O-> raman_empty_cache                             1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- bib_output                                  1                         |
|  /                                                                          |
| O-> comms_reduce_farm_logical                     1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- cell_supercell                              1                         |
|  /                                                                          |
| O-> cell_calculate_volume                         1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- phonon_initialise                           1                         |
|  /                                                                          |
| O-> comms_save_strategy                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- ion_clebsch_gordan                          1                         |
|  /                                                                          |
| O-> init_factorial                                1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> implicit_solvent_autosolv_check               1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> multigrid_dlmg_exit                           1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- comms_parallel_strategy                     1                         |
|  /                                                                          |
| O-> assign_nodes                                  1           1      0.00s  |
+-----------------------------------------------------------------------------+
|   o-- castep                                      1                         |
|  /                                                                          |
| O-> memory_system_initialise                      1           1      0.00s  |
+-----------------------------------------------------------------------------+
Class of operation                  Time spent
COMMS                                 281.58s
COMMS_GV                                0.04s
COMMS_KP                                0.52s
COMMS_BND                               0.00s
COMMS_FARM                              0.00s
     276 different subroutines and functions were traced
Hash collisions:          0
  