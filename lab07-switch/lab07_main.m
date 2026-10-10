clc; clear;

%% Q1: Force with input()
% Tests: (3, 5) -> 2 N, (1, 15) -> 3 N, (2, 10) -> 3.5 N, (4, 30) -> 21 N
disp('Choices: 1-Metal on metal, 2-Wood on wood, 3-Metal on wood, 4-Rubber on concrete');
choice = input('Enter the choice of the material (1-4): ');
W = input('Enter the weight W (kg): ');
F = calculate_force(choice, W);
fprintf('The required force F is: %.2f Newton\n', F);

%% Q2: Same problem using menu()
choice = menu('What is the type', 'Metal to metal', 'Wood to wood', ...
              'Metal to wood', 'Rubber to concrete');
if choice > 0
    W = input('Enter the weight W (kg): ');
    F = calculate_force(choice, W);
    fprintf('The required force F for choice (%d) is: %.2f Newton\n', choice, F);
else
    disp('No material was selected.');
end

%% Q3: Shipping cost
% Tests: (150, 900, 2) and (300, 1500, 1)
W        = input('Enter weight (tons): ');
distance = input('Enter transport distance (miles): ');
disp('1 - Miscellaneous goods');
disp('2 - Containers');
type = input('Enter your choice (1 or 2): ');

cost = shippingCost(W, distance, type);
fprintf('Total shipping cost = %.2f SR\n', cost);
