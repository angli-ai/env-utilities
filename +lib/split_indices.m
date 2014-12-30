function indices = split_indices(index, N)
indices = cell(N, 1);
step = ceil(length(index) / N);
for i = 1:N
    start = step * (i - 1) + 1;
    finish = min(length(index), step * (i - 1) + step);
    indices{i} = index(start:finish);
end