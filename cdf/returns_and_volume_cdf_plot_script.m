clear
clc

names = {'beta', 'alpha', 'j', 'kappa'};
values = {1.6, 30, [1.0 0], 0.05};

params = build_multi_params(values, names, 'execution', {'mean'});

f = figure('units','normalized','position',[.05 .05 .55 .75]);
f = plot_cdf(f, @bornholdt_file_path_resolver, @bornholdt_file_name_resolver,@bornholdt_display_name_resolver, params, get_default_plot_properties());
slope_estimation_range = [2 11];
returns_estimated_slope_params = estimate_slope(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params, slope_estimation_range);

volume_plot_properties = get_default_plot_properties();
volume_plot_properties.colors{1} = [1 0 0];
volume_plot_properties.markers{1} = '^';
f = plot_cdf(f, @bornholdt_file_path_resolver, @bornholdt_file_name_resolver,@bornholdt_display_name_resolver,...
    build_multi_params(values, names, 'execution', {'mean-volume'}), volume_plot_properties);
xlim([0.2,100000]);

slope_estimation_range = [97 3400];
estimate_slope(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, ...
    build_multi_params(values, names, 'execution', {'mean-volume'}), slope_estimation_range);


adjust_legend_position('southeast')

base_file_name=bornholdt_file_name_resolver(cell2struct(values',names));
saveas(f, [get_root_data_path('DEFAULT'),'bornholdt-results/',base_file_name,'-volume-and-returns-cdf.png'],'png');
saveas(f, [get_root_data_path('DEFAULT'),'bornholdt-results/',base_file_name,'-volume-and-returns-cdf.fig'],'fig');