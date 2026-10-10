%% Q1: Linear system AX = B
A = [9 8 7; 4 5 6; 1 0 3];
B = [3; 3; 3];
X = A \ B                          % x = 0.2308, y = -0.6923, z = 0.9231

%% Q2: Temperatures (rows = months, columns = cities A, B, C)
M = [27 31 30; 34 37 33; 36 38 42; 37 42 43; 43 45 44; 49 46 45];

avg = mean(M)                                % a) average per city
max(M(2:4, 2:3))                             % b) max of B and C, Feb-Apr
min(min(M([1 3 5], :)))                      % c) min over Jan, Mar, May, all cities
max(M(:))                                    % d) max of all data
[Highest, city_num] = max(avg)               % e) hottest city on average

%% Q3: Engineers workload
% columns: hourly cost, Engineer 1, Engineer 2, Engineer 3
E = [22 10  9 11;
     21  9 10  7;
     18  8 10  8;
     19  8  6  5;
     20  8  6  7;
     24  5  7 10];

Salary = E(:,1)' * E(:,2:end)                % a) weekly salary of each engineer
Total  = sum(Salary)                         % b) total weekly salary (2983)
Monday_pay = E(3,1) .* E(3,2:end)            % c) Monday pay
Daily_avg  = Salary ./ size(E,1)             % d) average daily amount

%% Q4: Shareholders
% rows: companies; columns: price, Ahmed, Abady, Kane, price change
A = [23 12 10  3  5;
     12 10 14 20  2;
     20 10 20  5 -2;
     19  5  5  5 -5];

owners     = ["Ahmed" "Abady" "Kane"];
investment = A(:,1)' * A(:,2:4);
profit     = A(:,5)' * A(:,2:4);
total      = investment + profit;

[~, idx] = sort(total, 'descend');
ranked_owners = owners(idx);
ranked_total  = total(idx);

disp('The amount of money by the owner as follow:'); disp(owners)
disp('The investment amount:');                       disp(investment)
disp('The profits are:');                             disp(profit)
disp('They ranked according to their wealth as:');    disp(ranked_owners)
fprintf('With total money of: [%d %d %d] SR for each.\n', ranked_total);
