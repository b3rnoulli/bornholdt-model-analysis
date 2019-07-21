clear
clc

names = {'beta', 'alpha', 'j', 'kappa','window_range', 'window_size', 'window_step','should_append_window_suffix', 'datasource'};

params = build_multi_params({1.6, 30, [1.0 0], 0.05, [50000 55400], 5000, 20, true, 'DEFAULT'}, names, 'execution', convert_to_cell(1));

adjust_scale_manually_windowed(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);


