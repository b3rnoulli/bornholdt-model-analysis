clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz_asymmetric','range','moore'};
values = {1.6, 30, [1.0 0], 0.05, [50000 300000], false};
executions = convert_to_cell(1:3);
params = build_multi_params(values, names, 'execution', executions);
betas = 0.5:0.1:2.5;

for i=1:1:length(betas)
    params = build_multi_params({betas(i), 30, [1.0 0], 0.05, [100000 300000], false}, names, 'execution', executions, params);
    params = build_multi_params({betas(i), 30, [1.0 0], 0.1, [100000 300000], false}, names, 'execution', executions, params);
    params = build_multi_params({betas(i), 30, [1.0 0], 0.25, [100000 300000], false}, names, 'execution', executions,params);
    params = build_multi_params({betas(i), 30, [1.0 0], 0.5, [100000 300000], false}, names, 'execution', executions, params);
end

plot_returns_and_price(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver, params, true, [-0.2 0.2]);

