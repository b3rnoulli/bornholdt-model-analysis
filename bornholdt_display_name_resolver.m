function [result] = bornholdt_display_name_resolver(params, i)

result = '';

if check_property_exists(params,'beta')
    result = [result,' $\beta$=',num2str(params.beta)];
end

if check_property_exists(params,'alpha')
    result = [result,' $\alpha$=',num2str(params.alpha)];
end

if check_property_exists(params,'j')
    result = [result,get_j_display_string(params.j)];
end

if check_property_exists(params,'kappa')
   result = [result,' $\kappa$=',num2str(params.kappa)]; 
end

if check_property_exists(params,'kappa_volume_diff_nnz')
   result = [result,' $\kappa V\in$[0;',num2str(params.kappa_volume_diff_nnz),']']; 
end

if check_property_exists(params,'kappa_volume_diff_nnz_asymmetric')
   result = [result,' $\kappa V_{A}\in$[0;',num2str(params.kappa_volume_diff_nnz_asymmetric),']']; 
end

if check_property_exists(params,'kappa_nnz_n')
   result = [result,' $\kappa V(\frac{N_{t}}{N})\in$[0;',num2str(params.kappa_nnz_n),']']; 
end

if check_property_exists(params,'kappa_price')
   result = [result,' $\kappa P\in$[0;',num2str(params.kappa_price),']']; 
end

if check_property_exists(params,'kappa_returns')
   result = [result,' $\kappa r(t)\in$[0;',num2str(params.kappa_returns),']']; 
end

if check_property_exists(params,'moore') && params.moore == true
   result = [result, ' moore']; 
end

if check_property_exists(params,'execution')
   result = [result,' ',num2str(params.execution)]; 
end

if check_property_exists(params, 'scales')
   result = [result,' s$\in$[',num2str(params.scales(1)),' ',num2str(params.scales(2)),']']; 
end

end

