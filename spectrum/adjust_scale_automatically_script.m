clear
clc

names = {'beta', 'alpha', 'j', 'kappa', 'scales'};
values = {1.6, 30, [1.0 0], 0.0, [30 1000]};
executions = convert_to_cell(1:5);

params = build_multi_params(values, names, 'execution', {'mean'});

adjust_scale_automatically(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);
