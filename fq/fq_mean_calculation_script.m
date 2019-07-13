clear
clc

names = {'beta', 'alpha', 'j', 'kappa','moore'};
values = {1.6, 30, [1.0 0], 1, true};
executions = convert_to_cell(1:5);

params = build_multi_params(values, names, 'execution', executions);
calculate_mean_fq(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);
