% Q3: Earthquake magnitude from energy, E = 10^4.4 * 10^(1.5*M)
E = input('Enter the energy released in the earthquake (J): ');

M = (log10(E) - 4.4) / 1.5;
fprintf('Magnitude of the earthquake: %.4f\n', M);   % E = 26000 -> 0.0100
