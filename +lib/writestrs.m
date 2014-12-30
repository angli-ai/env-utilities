function writestrs(filename, cell_of_strings)
fileID = fopen([filename '.tmp'], 'w+');
try
    fprintf(fileID, '%s\n', cell_of_strings{:});
catch e
    fclose(fileID);
    error(e);
end
fclose(fileID);
movefile([filename '.tmp'], filename);