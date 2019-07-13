clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz_asymmetric', 'y_range', 'moore'};
values = {1.6, 30, [1.0 0], 1, [0.1 40], false};
executions = {1};

params = build_multi_params(values, names, 'execution', executions);
% params = build_multi_params({1.6, 30, [1.0 0], 0.1, [0.1 40],  false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.25, [0.1 40], false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 0.5, [0.1 40],  false}, names, 'execution', executions,params);
% params = build_multi_params({1.6, 30, [1.0 0], 1, [0.1 40], false}, names, 'execution', executions,params);


plot_fq(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver, params);
