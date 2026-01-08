clc;
clear;

% -------- matrix calculator --------
fprintf('\n========= Advanced Matrix Calculator ========\n\n');

% -------- matrix a input --------
rowA = input('Enter number of rows for Matrix A: ');
colA = input('Enter number of columns for Matrix A: ');

fprintf('\nEnter the following elements for Matrix A:\n');

A = zeros(rowA, colA);
for i = 1:rowA
    for j = 1:colA
        A(i,j) = input(sprintf('A(%d,%d) = ', i, j));
    end
end

% -------- matrix b input --------
rowB = input('\nEnter number of rows for Matrix B: ');
colB = input('Enter number of columns for Matrix B: ');

fprintf('\nEnter the following elements for Matrix B:\n');

B = zeros(rowB, colB);
for i = 1:rowB
    for j = 1:colB
        B(i,j) = input(sprintf('B(%d,%d) = ', i, j));
    end
end

fprintf('\n========= Matrix Calculator Results =========\n');

% -------- display matrices --------
disp('---------------------------------------------');
fprintf('INITIAL MATRIX A\n');
disp(A);

fprintf('\nINITIAL MATRIX B\n');
disp(B);
disp('---------------------------------------------');

% -------- addition, subtraction, element-wise multiplication --------
if isequal(size(A), size(B))
    disp('MATRIX ADDITION (A + B)');
    disp(A + B);
    disp('---------------------------------------------');

    disp('MATRIX SUBTRACTION (A - B)');
    disp(A - B);
    disp('---------------------------------------------');

    disp('ELEMENT-WISE MULTIPLICATION (A .* B)');
    disp(A .* B);
    disp('---------------------------------------------');
else
    disp('ADDITION, SUBTRACTION, AND ELEMENT-WISE MULTIPLICATION')
    fprintf('Addition, subtraction, and element-wise\nmultiplication are not possible.\n');
    disp('---------------------------------------------');
end

% -------- matrix multiplication --------
disp('MATRIX MULTIPLICATION (A * B)');

if size(A,2) == size(B,1)
    disp(A * B);
    disp('---------------------------------------------');
else
    disp('Matrix multiplication is not possible.');
    disp('---------------------------------------------');
end

% -------- determinant of a matrix --------
disp('DETERMINANT OF MATRIX A');

if size(A,1) == size(A,2)
    disp(det(A));
    disp('---------------------------------------------');
else
    fprintf('Matrix A is not square.\nDeterminant not defined.\n');
    disp('---------------------------------------------');
end

disp('DETERMINANT OF MATRIX B');

if size(B,1) == size(B,2)
    disp(det(B));
    disp('---------------------------------------------');
else
    fprintf('Matrix B is not square.\nDeterminant not defined.\n');
    disp('---------------------------------------------');
end

% -------- transpose of a matrix --------
disp('TRANSPOSE OF MATRIX A');
disp(A');
disp('---------------------------------------------');

disp('TRANSPOSE OF MATRIX B');
disp(B');
disp('---------------------------------------------');

% -------- eigenvalues and eigenvectors --------
if size(A,1) == size(A,2)
    [VA, DA] = eig(A);
    disp('EIGENVALUES OF MATRIX A');
    disp(diag(DA));
    disp('EIGENVECTORS OF MATRIX A');
    disp(VA);
    disp('---------------------------------------------');
else
    disp('EIGENVALUES AND EIGENVECTORS OF MATRIX A');
    fprintf('Matrix A is not square.\nEigenvalues and eigenvectors are not defined.\n');
    disp('---------------------------------------------');
end

if size(B,1) == size(B,2)
    [VB, DB] = eig(B);
    disp('EIGENVALUES OF MATRIX B');
    disp(diag(DB));
    disp('EIGENVECTORS OF MATRIX B');
    disp(VB);
    disp('---------------------------------------------');
else
    disp('EIGENVALUES AND EIGENVECTORS OF MATRIX B');
    fprintf('Matrix B is not square.\nEigenvalues and eigenvectors are not defined.\n');
    disp('---------------------------------------------');
    
end

% -------- end of program script --------
fprintf('============ Exiting The Program ============\n');
