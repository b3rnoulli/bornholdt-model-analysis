clear
clc

plot_mean = false;

names = {'kappa_volume_diff_nnz', 'alpha', 'j', 'execution','moore'};
values = {0.1, 30, [1.0 0], 'mean', true};
executions = convert_to_cell(2:5);
params = build_multi_params(values, names, 'beta', convert_to_cell([1.0 ]));

reference_params.x_range = [1.8:0.1:20];
reference_params.multiplier = 2;
f = figure('units','normalized','position',[.05 .05 .55 .75]);
f = plot_cdf(f, @bornholdt_file_path_resolver, @bornholdt_file_name_resolver,@bornholdt_display_name_resolver, params, get_default_plot_properties(), reference_params);


if plot_mean
    mean_cdf_plot_properties = get_default_plot_properties();
    mean_cdf_plot_properties.line_width = 3;
    mean_cdf_plot_properties.colors{1} = [1 0 0];
    params = build_multi_params(values,names,'execution',{'mean'});
    f = plot_cdf(f, @bornholdt_file_path_resolver, @bornholdt_file_name_resolver, @bornholdt_display_name_resolver,...
        params, mean_cdf_plot_properties);
    ax = gca;
    ax.Legend.Location='southwest';
    base_file_name=bornholdt_file_name_resolver(cell2struct(values',names));
    saveas(f, [get_root_data_path('DEFAULT'),bornholdt_file_path_resolver(params),base_file_name,'-single-and-mean-cdf.png'],'png');
    saveas(f, [get_root_data_path('DEFAULT'),bornholdt_file_path_resolver(params),base_file_name,'-single-and-mean-cdf.fig'],'fig'); 
end

