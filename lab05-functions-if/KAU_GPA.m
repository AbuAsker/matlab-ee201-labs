function [letterGrade, gpaPoints] = KAU_GPA(score)
% Letter grade and GPA points from a score

if score < 60
    letterGrade = 'F';  gpaPoints = 1.00;
elseif score < 65
    letterGrade = 'D';  gpaPoints = 2.00;
elseif score < 70
    letterGrade = 'D+'; gpaPoints = 2.50;
elseif score < 75
    letterGrade = 'C';  gpaPoints = 3.00;
elseif score < 80
    letterGrade = 'C+'; gpaPoints = 3.50;
elseif score < 85
    letterGrade = 'B';  gpaPoints = 4.00;
elseif score < 90
    letterGrade = 'B+'; gpaPoints = 4.50;
elseif score < 95
    letterGrade = 'A';  gpaPoints = 4.75;
else
    letterGrade = 'A+'; gpaPoints = 5.00;
end

fprintf('Letter Grade: %s\n', letterGrade);
fprintf('GPA Points: %.2f\n', gpaPoints);
end
