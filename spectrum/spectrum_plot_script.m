% clear
% clc
plot_mean = false;

names = {'beta', 'alpha', 'j', 'execution', 'moore'};
values = {1.6, 30, [1.0 0], 'mean', false};
executions = convert_to_cell(1);

params = build_multi_params(values, names, 'kappa', convert_to_cell([0.05 0.1 0.25 0.5]));
f = figure('units','normalized','position',[.05 .05 .55 .75]);

f = plot_spectrum(f,@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver, params);


if plot_mean
    hold on;

    params = build_multi_params(values, names, 'execution', {'mean'});
    
    plot_properties = get_default_plot_properties();
    plot_properties.colors{1}=[1 0 0];
    plot_properties.line_width=3;
    plot_properties.marker_size=10;
    f = plot_spectrum(f,@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver, params, plot_properties);
    
    saveas(f, [bornholdt_file_path_resolver(params), bornholdt_file_name_resolver(params),'-f-alpha.png'],'png');
    saveas(f, [bornholdt_file_path_resolver(params), bornholdt_file_name_resolver(params),'-f-alpha.fig'],'fig');
    
end