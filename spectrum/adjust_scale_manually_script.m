clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz','moore'};
values = {1.6, 30, [1.0 0], 0, true};
executions = convert_to_cell(1:5);

params = build_multi_params(values, names, 'execution', {'mean'});
% params = build_multi_params({1.6, 30, [1.0 0], 0.1, false}, names, 'execution', executions, params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.25, false}, names, 'execution', executions, params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.5, false}, names, 'execution', executions, params);


adjust_scale_manually(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);


% names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz', 'y_range', 'moore'};
% values = {1.6, 30, [1.0 0], 0.05, [0.1 40], true};
% executions = convert_to_cell(1:5);
% 
% params = build_multi_params(values, names, 'execution', executions);
% params = build_multi_params({1.6, 30, [1.0 0], 0.1, [0.1 40],  true}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.25, [0.1 40], true}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.5, [0.1 40],  true}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 1, [0.1 40], true}, names, 'execution', executions,params);
