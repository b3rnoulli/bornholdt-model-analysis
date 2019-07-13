clear
clc

names = {'beta', 'alpha', 'j', 'kappa','moore'};
values = {1.6, 30, [1.0 0], 0.0, true};
executions = convert_to_cell(1:5);
params = build_multi_params(values, names, 'execution', executions);
% params = build_multi_params({1.6, 30, [1.0 0], 0.1, false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.25, false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.5, false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 1, false}, names, 'execution', executions,params);

extract_fq(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);
