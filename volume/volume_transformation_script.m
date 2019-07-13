clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz_asymmetric'};
values = {1.6, 30, [1.0 0], 0.05};
executions = convert_to_cell(1);
% 
params = build_multi_params(values, names, 'execution', executions);
params = build_multi_params({1.6, 30, [1.0 0], 0.1}, names, 'execution', executions, params);
params = build_multi_params({1.6, 30, [1.0 0], 0.25}, names, 'execution', executions, params);
params = build_multi_params({1.6, 30, [1.0 0], 0.5}, names, 'execution', executions, params);
params = build_multi_params({1.6, 30, [1.0 0], 1}, names, 'execution', executions, params);

volume_transformer(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);
