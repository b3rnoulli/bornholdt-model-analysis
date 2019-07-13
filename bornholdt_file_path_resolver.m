function [file_path] = bornholdt_file_path_resolver(params)

if ~check_property_exists(params,'datasource')
    params.datasource='DEFAULT';
end

root_path = [get_root_data_path(params.datasource),'bornholdt-results/'];
suffix='';

if check_property_exists(params,'beta')
    suffix=[suffix,num2str(params.beta)];
end

if check_property_exists(params,'j')
    suffix = [suffix, get_j_path_string(params.j)];
end

if check_property_exists(params,'kappa')
    suffix = [suffix,'/kappa/',num2str(params.kappa)];
end

if check_property_exists(params,'kappa_volume_diff_nnz')
    suffix = [suffix,'/kappa/',num2str(params.kappa_volume_diff_nnz)];
end

if check_property_exists(params,'kappa_volume_diff_nnz_asymmetric')
    suffix = [suffix,'/kappa/',num2str(params.kappa_volume_diff_nnz_asymmetric)];
end

if check_property_exists(params,'kappa_nnz_n')
    suffix = [suffix,'/kappa/',num2str(params.kappa_nnz_n)];
end

if check_property_exists(params,'kappa_price')
    suffix = [suffix,'/kappa/',num2str(params.kappa_price)];
end

if check_property_exists(params,'kappa_returns')
    suffix = [suffix,'/kappa/',num2str(params.kappa_returns)];
end

if check_property_exists(params,'surrogate') && params.surrogate==true
    suffix=[suffix,'/surrogates'];
end

file_path = [root_path, suffix,'/'];
end

