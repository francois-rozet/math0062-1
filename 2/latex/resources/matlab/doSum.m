function A = doSum(A,n)
    l = ndims(A);
    for i = l-n+1:l
        A = sum(A,i);
    end
end

