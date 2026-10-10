clc; clear;

%% Q1: Triangular multiplication pattern
for i = 1:5
    for j = 1:i
        fprintf('%4d', i*j);
    end
    fprintf('\n');
end

%% Q2: Counting triangle
for i = 1:3
    for j = 1:i
        fprintf('%d ', j);
    end
    fprintf('\n');
end

%% Q3: Pascal's triangle matrix (n x n)
n = input('Enter the size of matrix A: ');
A = zeros(n);
for i = 1:n
    for j = 1:i
        if j == 1 || j == i
            A(i,j) = 1;
        else
            A(i,j) = A(i-1,j-1) + A(i-1,j);
        end
    end
end
disp('Pascal Triangle Matrix:');
disp(A);

%% Q4: Even rows = 1, odd rows = 0
n = input('Enter the size of the matrix: ');
A = zeros(n);
for i = 1:n
    for j = 1:n
        if mod(i,2) == 0
            A(i,j) = 1;
        else
            A(i,j) = 0;
        end
    end
end
disp(A);

%% Q5: Multiplication table matrix
n = 5;
A = zeros(n);
for i = 1:n
    for j = 1:n
        A(i,j) = i*j;
    end
end
disp('Multiplication Table Matrix:');
disp(A);

%% Q6: Distance-from-diagonal (Toeplitz) matrix
n = 5;
B = zeros(n);
for i = 1:n
    for j = 1:n
        B(i,j) = abs(i - j);
    end
end
disp('Distance-from-Diagonal Matrix:');
disp(B);

%% Q7: Checkerboard matrix
n = 6;
C = zeros(n);
for i = 1:n
    for j = 1:n
        if mod(i+j, 2) == 0
            C(i,j) = 1;
        else
            C(i,j) = 0;
        end
    end
end
disp('Checkerboard Matrix:');
disp(C);

%% Q8: Custom matrix using the function
disp(special_matrix(5));
