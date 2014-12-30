function output = remove_tail_slashes(input)
output = input;
while output(end) == '/'
    output = output(1:end-1);
end