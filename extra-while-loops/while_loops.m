clc; clear;

%% Example 1: Simple counter
count = 1;
while count <= 10
    fprintf('Iteration %d: count = %d\n', count, count);
    count = count + 1;
end
disp('Loop finished!');

%% Engineering example: Water tank filling
capacity = 500;    % liters
fill_rate = 50;    % liters per minute
volume = 0;
time = 0;
while volume < capacity
    time = time + 1;
    volume = volume + fill_rate;
    fprintf('%-12d %-15d\n', time, volume);
end
fprintf('Tank full after %d minutes.\n', time);

%% Example 2: Sum until a threshold
total = 0;
n = 1;
while total < 100
    total = total + n;
    fprintf('Added %d -> Total = %d\n', n, total);
    n = n + 1;
end
fprintf('Final total = %d after adding up to %d\n', total, n-1);

%% break: first multiple of 7
n = 1;
while n <= 100
    if mod(n, 7) == 0
        fprintf('First multiple of 7 found: %d\n', n);
        break;
    end
    n = n + 1;
end

%% continue: print only odd numbers from 1 to 10
n = 0;
while n < 10
    n = n + 1;
    if mod(n, 2) == 0
        continue;
    end
    fprintf('%d ', n);
end
fprintf('\n');

%% Example 3: Read positive numbers until a negative one
sum_positive = 0;
fprintf('Enter positive numbers (enter a negative number to stop)\n');
while true
    num = input('Enter a number: ');
    if num < 0
        break;
    end
    sum_positive = sum_positive + num;
end
fprintf('Sum of positive numbers entered: %.2f\n', sum_positive);

%% Example 4: Newton's method for sqrt(2)
x = 1;
tolerance = 1e-8;
iterations = 0;
while abs(x^2 - 2) > tolerance
    x = (x + 2/x) / 2;
    iterations = iterations + 1;
    if iterations > 100
        warning('Maximum iterations reached');
        break;
    end
end
fprintf('Approximated sqrt(2) = %.10f in %d iterations\n', x, iterations);
fprintf('True value = %.10f\n', sqrt(2));
fprintf('Error = %.2e\n', abs(x - sqrt(2)));

%% Exercise: Population growth
population = 50000;
growth_rate = 0.03;
years = 0;
while population <= 100000
    population = population * (1 + growth_rate);
    years = years + 1;
end
fprintf('Population exceeds 100,000 after %d years.\n', years);
fprintf('Final population: %.0f\n', population);
