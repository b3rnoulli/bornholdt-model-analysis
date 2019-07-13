clear
clc

params = build_multi_params({1.6, 30, [1.0 0], 0.0}, {'beta', 'alpha', 'j', 'kappa'}, 'execution', convert_to_cell(1:5));

plot_returns_and_volume(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver, params, true);
