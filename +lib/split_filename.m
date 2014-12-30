function [name, suffix] = split_filename(filename)
index = strfind(filename, '.');
name = filename(1:index-1);
suffix = filename(index:end);