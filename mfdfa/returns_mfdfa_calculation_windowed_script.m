clear
clc

names = {'beta', 'alpha', 'j', 'kappa', 'window_range', 'window_size', 'window_step', 'datasource'};

params = build_multi_params({1.6, 30, [1.0 0], 0.05, [50000 55400], 5000, 20, 'DEFAULT'}, names, 'execution', convert_to_cell(1));

calculate_mfdfa_windowed(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);

