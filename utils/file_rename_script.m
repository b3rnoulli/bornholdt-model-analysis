


file_infos = dir('**/*-kappa-volume-*.mat');

for i=1:1:length(file_infos)
   
    file_name = file_infos(i).name;
    file_path = file_infos(i).folder;
    
    data = load([file_path,'/',file_name]);
    
    file_name_updated = strrep(file_name,'-kappa-volume-','-kappa-volume-diff-nnz-');
    save([file_path,'/', file_name_updated],'-struct','data');
    delete([file_path,'/', file_name]);
end