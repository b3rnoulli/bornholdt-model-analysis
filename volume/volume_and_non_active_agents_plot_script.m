clear
clc

non_active_agents_range = [0 250];
params = build_multi_params({1.6, 30, [1.0 0], 1}, {'beta', 'alpha', 'j', 'execution'}, 'kappa_volume_diff_nnz_asymmetric', convert_to_cell([0.05 0.1 0.25 0.5 1]));

plot_volume_and_non_active_agents(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver, params, true, non_active_agents_range);
