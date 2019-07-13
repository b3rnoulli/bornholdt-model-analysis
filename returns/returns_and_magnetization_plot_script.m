clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz','range','moore'};
values = {1.6, 30, [1.0 0], 0.0, [100000 300000], true};
executions = convert_to_cell(1);
params = build_multi_params(values, names, 'execution', executions);
% params = build_multi_params({1.6, 30, [1.0 0], 0.1, [100000 300000], false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.25, [100000 300000], false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.5, [100000 300000], false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 1, [100000 300000], false}, names, 'execution', executions,params);

plot_returns_and_price(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver, params, true, [-0.2 0.2]);

