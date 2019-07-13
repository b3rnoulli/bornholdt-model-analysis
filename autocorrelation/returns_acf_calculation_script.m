clear
clc

names = {'beta', 'alpha', 'j', 'kappa'};
values = {1.6, 30, [1.0 0], 0.05};
executions = convert_to_cell(1:5);

params = build_multi_params(values, names, 'execution', executions);

calculate_mean_autocorrelation(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params, true);
