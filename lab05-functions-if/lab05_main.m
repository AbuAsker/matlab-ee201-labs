clc; clear;

%% Q1: Belt friction (test: F1 = 75, F2 = 100, beta = 130 degrees)
F1 = input('Enter F1 (N): ');
F2 = input('Enter F2 (N): ');
beta_deg = input('Enter the wrap angle (degrees): ');
mu = Coe_Calc(F1, F2, deg2rad(beta_deg));      % convert to radians!
fprintf('The calculated coefficient is: %.4f\n', mu);

%% Q2: Temperature conversion
for F = [32 100 212]
    C = FtoC(F);
    K = CtoK(C);
    fprintf('%.0f F = %.2f C = %.2f K\n', F, C, K);
end

%% Q3: Sales reward (cap = 2000 SR)
tests = [15 25; 10 50; 80 50; 100 100];
for i = 1:size(tests, 1)
    reward = calculateReward(tests(i,1), tests(i,2));
    reward = min(reward, 2000);
    fprintf('(%d, %d) -> reward = %.2f SR\n', tests(i,1), tests(i,2), reward);
end

%% Q4: University admission
userName = input('Enter your name: ', 's');
hs     = input('Enter your Higher Secondary School percentage: ');
qudrat = input('Enter your Aptitude Test (Qudrat) score: ');
tahsili = input('Enter your Achievement Test (Tahsili) score: ');
fprintf('\nHello %s, evaluating your results...\n', userName);
KSAU(hs, qudrat, tahsili);

%% Q5: GPA
studentName = input('Enter the student name: ', 's');
scoreAvg    = input('Enter the total score average: ');
fprintf('\n--- Academic Result for %s ---\n', studentName);
[letter, points] = KAU_GPA(scoreAvg);
fprintf('Result: %s earned a GPA of %.2f (%s).\n', studentName, points, letter);
