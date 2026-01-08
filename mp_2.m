clc;
clear;

% --- matrix calculator 
fprintf('\n========= Advanced Matrix Calculator ========\n\n');

% --- matrix a input 
rowA = -1;
while rowA <= 0 || floor(rowA) ~= rowA
    rowA = input('Enter number of rows for Matrix A (positive integer): ');
    if rowA <= 0 || floor(rowA) ~= rowA
        fprintf('Invalid input! Please enter a positive integer.\n');
    end
end

colA = -1;
while colA <= 0 || floor(colA) ~= colA
    colA = input('Enter number of columns for Matrix A (positive integer): ');
    if colA <= 0 || floor(colA) ~= colA
        fprintf('Invalid input.\nPlease enter a positive integer.\n');
    end
end

fprintf('\nEnter the following elements for Matrix A:\n');

A = zeros(rowA, colA);
for i = 1:rowA
    for j = 1:colA
        A(i,j) = input(sprintf('A(%d,%d) = ', i, j));
    end
end

% -------- matrix b input 
rowB = -1;
while rowB <= 0 || floor(rowB) ~= rowB
    rowB = input('Enter number of rows for Matrix B (positive integer): ');
    if rowB <= 0 || floor(rowB) ~= rowB
        fprintf('Invalid input.\nPlease enter a positive integer.\n');
    end
end

colB = -1;
while colB <= 0 || floor(colB) ~= colB
    colB = input('Enter number of columns for Matrix B (positive integer): ');
    if colB <= 0 || floor(colB) ~= colB
        fprintf('Invalid input.\nPlease enter a positive integer.\n');
    end
end

fprintf('\nEnter the following elements for Matrix B:\n');

B = zeros(rowB, colB);
for i = 1:rowB
    for j = 1:colB
        B(i,j) = input(sprintf('B(%d,%d) = ', i, j));
    end
end

fprintf('\n========= Matrix Calculator Results =========\n');

% --- display matrices 
disp('---------------------------------------------');
fprintf('INITIAL MATRIX A\n');
disp(A);

fprintf('\nINITIAL MATRIX B\n');
disp(B);
disp('---------------------------------------------');

% --- addition, subtraction, element-wise multiplication 
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

% --- matrix multiplication 
disp('MATRIX MULTIPLICATION (A * B)');

if size(A,2) == size(B,1)
    disp(A * B);
    disp('---------------------------------------------');
else
    disp('Matrix multiplication is not possible.');
    disp('---------------------------------------------');
end

% --- determinant of a matrix 
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

% --- transpose of a matrix 
disp('TRANSPOSE OF MATRIX A');
disp(A');
disp('---------------------------------------------');

disp('TRANSPOSE OF MATRIX B');
disp(B');
disp('---------------------------------------------');

% --- eigenvalues and eigenvectors 
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

% --- 3d dotted lattice visualization

% --- matrix a plotting
figure('Name','3D Dotted Lattice - Matrix A','NumberTitle','off');
hold on;

[xA, yA] = meshgrid(1:size(A,2), 1:size(A,1));
zA = A;

% --- 3d plots for dashed grid lines
for i = 1:size(A,1)
    plot3(xA(i,:), yA(i,:), zA(i,:), '--k');
end
for j = 1:size(A,2)
    plot3(xA(:,j), yA(:,j), zA(:,j), '--k');
end

% --- 3d scatter plots for filled dots
scatter3(xA(:), yA(:), zA(:), 50, 'b', 'filled');

grid on;
xlabel('Column Index');
ylabel('Row Index');
zlabel('Value');
title('3D Dotted Lattice Plot of Matrix A');
view(45,30);
hold off;

% --- matrix b plotting
figure('Name','3D Dotted Lattice - Matrix B','NumberTitle','off');
hold on;

[xB, yB] = meshgrid(1:size(B,2), 1:size(B,1));
zB = B;

for i = 1:size(B,1)
    plot3(xB(i,:), yB(i,:), zB(i,:), '--k');
end
for j = 1:size(B,2)
    plot3(xB(:,j), yB(:,j), zB(:,j), '--k');
end

scatter3(xB(:), yB(:), zB(:), 50, 'r', 'filled');

% --- customization of figure (title, axes, etc.)
grid on;
xlabel('Column Index');
ylabel('Row Index');
zlabel('Value');
title('3D Dotted Lattice Plot of Matrix B');
view(45,30);
hold off;

% --- end of program script 
fprintf('============ Exiting The Program ============\n');
