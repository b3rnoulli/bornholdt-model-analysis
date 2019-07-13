clear
clc

names = {'beta', 'alpha', 'j', 'kappa'};
values = {1.6, 30, [1.0 0], 0.5};
executions = convert_to_cell(1);

params = build_multi_params(values, names, 'execution', executions);
calculate_volume_mean_cdf(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params, true);
