clear
clc

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz'};
values = {1.6, 30, [1.0 0], 0.0};
executions = convert_to_cell(1:5);

params = build_multi_params(values, names, 'execution', {'mean'});

calculate_spectrum_width(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);
