clear
clc

names = {'beta', 'alpha', 'j', 'kappa','range','moore','datasource'};
executions = convert_to_cell(1:10);

params = build_multi_params({0.5, 30, [1.0 0], 0.05, [50000 300000], false, 'DEFAULT'}, names,  'execution', executions);
params = build_multi_params({0.5, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.5, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.5, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({0.6, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.6, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.6, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.6, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({0.7, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.7, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.7, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.7, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({0.8, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.8, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.8, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.8, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({0.9, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.9, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.9, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({0.9, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.0, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.0, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.0, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.0, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.1, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.1, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.1, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.1, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.2, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.2, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.2, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.2, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.3, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.3, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.3, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.3, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.4, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.4, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.4, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.4, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.5, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.5, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.5, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.5, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.6, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.6, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.6, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.6, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.7, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.7, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.7, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.7, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.8, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.8, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.8, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.8, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({1.9, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.9, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.9, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({1.9, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({2.0, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.0, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.0, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.0, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({2.1, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.1, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.1, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.1, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({2.3, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.3, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.3, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.3, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({2.4, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.4, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.4, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.4, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

params = build_multi_params({2.5, 30, [1.0 0], 0.05, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.5, 30, [1.0 0], 0.1,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.5, 30, [1.0 0], 0.25, [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);
params = build_multi_params({2.5, 30, [1.0 0], 0.5,  [50000 300000], false, 'PROMETHEUS'}, names,  'execution', executions, params);

[missing_file_names, files_without_mfdfa ]= get_invalid_files(@bornholdt_file_path_resolver, @bornholdt_file_name_resolver, params);

for i=1:1:length(missing_file_names)
   fprintf('[result_validation_script] Missing file [%s] \n', missing_file_names{i}); 
end

for i=1:1:length(files_without_mfdfa)
   fprintf('[result_validation_script] Missing mfdfa in file [%s] \n', files_without_mfdfa{i}); 
end
