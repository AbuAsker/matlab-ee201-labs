function A = special_matrix(n)
% Ones in the first row and column. Other cells = above + left
% if that sum is less than 20, otherwise the max of the two.

A = zeros(n);
for i = 1:n
    for j = 1:n
        if i == 1 || j == 1
            A(i,j) = 1;
        else
            s = A(i-1,j) + A(i,j-1);
            if s < 20
                A(i,j) = s;
            else
                A(i,j) = max(A(i-1,j), A(i,j-1));
            end
        end
    end
end
end
