clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz_asymmetric','moore'};
executions = convert_to_cell(1:10);
betas = 0.5:0.1:2.5;
kappas = [0.05 0.1 0.25 0.5];

for i=1:1:length(betas)
    for j=1:1:length(kappas)
        params = build_multi_params({betas(i), 30, [1.0 0], kappas(j), false}, names, 'execution', executions);
        calculate_returns_mean_cdf(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params, true);
    end
end
