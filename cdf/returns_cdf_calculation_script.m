clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz','moore'};
values = {1.6, 30, [1.0 0], 0.0, true};
executions = convert_to_cell(2:5);

params = build_multi_params(values, names, 'execution', executions);
calculate_returns_mean_cdf(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params, true);
