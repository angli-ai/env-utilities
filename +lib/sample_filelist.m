function output = sample_filelist(pattern, prefix, num)
    filelist = dir(pattern);
    if length(filelist) > num
        index = randperm(length(filelist), num);
        index = sort(index);
        filelist = filelist(index);
    end
    output = cell(1, length(filelist));
    for i = 1:length(filelist)
        output{i} = fullfile(prefix, filelist(i).name);
    end