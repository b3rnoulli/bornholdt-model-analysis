function [file_name] = bornholdt_file_name_resolver(params)
file_name = 'bornholdt-3s';

if check_property_exists(params,'beta')
    file_name = [file_name,'-beta-',num2str(params.beta)];
end

if check_property_exists(params,'alpha')
    file_name = [file_name,'-alpha-',resolve_multiple_param_string(params.alpha)];
end

if check_property_exists(params,'j')
    file_name = [file_name,get_j_file_string(params.j)];
end

if check_property_exists(params, 'kappa')
    file_name = [file_name, '-kappa-', resolve_multiple_param_string(params.kappa)];
end

if check_property_exists(params, 'kappa_volume_diff_nnz')
    file_name = [file_name, '-kappa-volume-diff-nnz-', resolve_multiple_param_string(params.kappa_volume_diff_nnz)];
end

if check_property_exists(params,'kappa_volume_diff_nnz_asymmetric')
    file_name = [file_name,'-kappa-volume-diff-nnz-asymmetric-',resolve_multiple_param_string(params.kappa_volume_diff_nnz_asymmetric)];
end

if check_property_exists(params, 'kappa_nnz_n')
    file_name = [file_name, '-kappa-nnz-n-', resolve_multiple_param_string(params.kappa_nnz_n)];
end

if check_property_exists(params,'kappa_price')
    file_name = [file_name, '-kappa-price-', resolve_multiple_param_string(params.kappa_price)];
end

if check_property_exists(params,'kappa_returns')
    file_name = [file_name, '-kappa-returns-', resolve_multiple_param_string(params.kappa_returns)];
end

if check_property_exists(params,'moore') && params.moore == true
   file_name = [file_name,'-moore']; 
end

if check_property_exists(params, 'execution')
    file_name = [file_name,'-',num2str(params.execution)];
end

if check_property_exists(params,'should_append_window_suffix') && params.should_append_window_suffix == true ...
        && has_window_data(params)
    file_name = [file_name,'-fq-windowed-',num2str(params.window_range(1)),'-',num2str(params.window_range(2)),...
        '-size-',num2str(params.window_size),'-step-',num2str(params.window_step)];
end

if check_property_exists(params, 'scales') && check_property_exists(params,'should_append_scale_suffix') && params.should_append_scale_suffix == true
    file_name = [file_name,'-scales-',num2str(params.scales(1)),'-',num2str(params.scales(2))];
end
end

function [result] = has_window_data(params)
result = check_property_exists(params,'window_range') && check_property_exists(params,'window_size') ...
        && check_property_exists(params,'window_step');
end
