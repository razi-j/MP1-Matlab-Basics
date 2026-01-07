clc;
clear;

% === USER INPUT === 
disp('=== Advanced Matrix Calculator ===');

rowA = input('Enter number of rows for Matrix A: ');
colA = input('Enter number of columns for Matrix A: ');

A = zeros(rowA, colA);
for i = 1:rowA
    for j = 1:colA
        A(i,j) = input(sprintf('A(%d,%d) = ', i, j));
    end
end

rowB = input('Enter number of rows for Matrix B: ');
colB = input('Enter number of columns for Matrix B: ');

B = zeros(rowB, colB);
for i = 1:rowB
    for j = 1:colB
        B(i,j) = input(sprintf('B(%d,%d) = ', i, j));
    end
end

disp('MATRIX A');
disp(A);
disp('MATRIX B');
disp(B);

% === MATRIX OPERATIONS ===
if isequal(size(A), size(B))
    disp('ADDITION');
    disp(A + B);
    disp('SUBTRACTION');
    disp(A - B);
    disp('ELEMENT-WISE MULTIPLICATION');
    disp(A .* B);
else
    disp('Not valid for addition, subtraction, or element-wise multiplication.');
end

if size(A,2) == size(B,1)
    disp('MATRIX MULTIPLICATION');
    disp(A * B);
else
    disp('Not valid for matrix multiplication.');
end

if size(A,1) == size(A,2)
    disp('DETERMINANT OF MATRIX A');
    disp(det(A));
    disp('DETERMINANT OF MATRIX B');
    disp(det(B));
else
    disp('Not valid for determinant calculation.');
end

disp('TRANSPOSE OF MATRIX A');
disp(A');
disp('TRANSPOSE OF MATRIX B');
disp(B');

if size(A,1) == size (A,2)
    [V, D] = eig(A);
    disp('EIGENVALUES OF MATRIX A');
    disp(diag(D));
    disp('EIGENVECTORS MATRIX A');
    disp(V);
end


if size(B,1) == size(B,2)
    [V, D] = eig(B);
    disp('EIGENVALUES OF MATRIX B');
    disp(diag(D));
    disp('EIGENVECTORS MATRIX B');
    disp(V);
end

% === FORMATTED OUTPUT ===
