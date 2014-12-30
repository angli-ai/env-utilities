function outputdir = mkdirs(rootpath, pathchain)
path_elements = strsplit(pathchain, '/');
currentpath = rootpath;
for i = 1:length(path_elements)
	if isempty(path_elements{i})
		continue;
	end
	currentpath = fullfile(currentpath, path_elements{i});
	lib.create_directory_if_not_exists(currentpath);
end
outputdir = currentpath;