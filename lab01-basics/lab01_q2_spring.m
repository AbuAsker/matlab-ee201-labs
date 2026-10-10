% Q2: Potential energy of a stretched spring
k = 358;                                   % N/m
s = input('Enter the stretching distance (cm): ');
s = s / 100;                               % cm -> m

PE = 0.5 * k * s^2;
fprintf('The potential energy is: %.4f J\n', PE);   % 45 cm -> 36.2475
