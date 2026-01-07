clc;
clear;

disp('=== Student Database ===');
num_students = input('How many students to enter? ');

students = struct('name', {}, 'age', {}, 'grades', {}, 'gpa', {}, 'letterGrade', {}, 'status', {});

for i = 1:num_students
    fprintf('\n--- Student %d ---\n', i);
    students(i).name = input('Name: ', 's');
    students(i).age = input('Age: ');

    students(i).grades = zeros(1, 5);
    for j = 1:5
        students(i).grades(j) = input(sprintf('Grade %d: ', j));
    end

    students(i).gpa = mean(students(i).grades);
    if students(i).gpa >= 97
        students(i).letterGrade = 'A+';
    elseif students(i).gpa >= 90
        students(i).letterGrade = 'A';
    elseif students(i).gpa >= 86
        students(i).letterGrade = 'B';
    elseif students(i).gpa >= 80
        students(i).letterGrade = 'C';
    elseif students(i).gpa >= 76
        students(i).letterGrade = 'D';
    elseif students(i).gpa >= 70
        students(i).letterGrade = 'D-';
    else
        students(i).letterGrade = 'F';
    end

    switch(students(i).letterGrade)
        case {'A+', 'A', 'B', 'C', 'D', 'D-'}
            students(i).status = 'Passed';
        case 'F'
            students(i).status = 'Failed';
    end

end

fprintf('\n=== Student Records ===\n');
for i = 1:num_students
    fprintf('\nStudent %d:\n', i);
    fprintf('  Name: %s\n', students(i).name);
    fprintf('  Age: %d\n', students(i).age);
    fprintf('  Grades: %s\n', mat2str(students(i).grades));
    fprintf('  GPA: %.2f\n', students(i).gpa);
    fprintf('  LETTER GRADE: %s\n', students(i).letterGrade);
    fprintf('  Status: %s\n', students(i).status);
end


