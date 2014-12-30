function create_directory_if_not_exists(pathname)
if ~exist(pathname, 'dir')
	try
		mkdir(pathname);
	catch e
		fprintf(1, 'mkdir error: %s\n', pathname);
	end
end
