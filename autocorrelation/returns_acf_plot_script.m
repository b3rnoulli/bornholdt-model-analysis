clear
clc

names = {'beta', 'alpha', 'j', 'kappa'};
values = {1.6, 30, [1.0 0], 0.05};
executions = {'mean'};

params = build_multi_params(values, names, 'execution',executions);

for i=1:length(params)
    plot_autocorrelation(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver,@bornholdt_display_name_resolver, params(i));
end

