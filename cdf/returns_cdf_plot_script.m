clear
clc

plot_mean = true;

names = {'beta', 'alpha', 'j', 'kappa_volume_diff_nnz_asymmetric'};
executions = convert_to_cell(1:10);

betas=0.5:0.1:2.5;
kappas=[0.05 0.1 0.25 0.5];

f = figure('units','normalized','position',[.05 .05 .55 .75]);

for i=1:length(betas)
    
    for j=1:length(kappas)
        values = {betas(i), 30, [1.0 0], kappas(j)};
        params = build_multi_params(values, names, 'execution', convert_to_cell(1:10));
        reference_params.x_range = 1.8:0.1:20;
        reference_params.multiplier = 2;
        f = plot_cdf(f, @bornholdt_file_path_resolver, @bornholdt_file_name_resolver,@bornholdt_display_name_resolver, params, get_default_plot_properties(), reference_params);
        hold on;
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
            saveas(f, [get_root_data_path('DEFAULT'),bornholdt_file_path_resolver(params),base_file_name,'-mean-cdf.png'],'png');
            saveas(f, [get_root_data_path('DEFAULT'),bornholdt_file_path_resolver(params),base_file_name,'-mean-cdf.fig'],'fig');
        end
        hold off;
    end
    
end






