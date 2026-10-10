% Q1: Cone surface area and volume
r = input('Enter the radius of the cone: ');
h = input('Enter the height of the cone: ');

s  = sqrt(r^2 + h^2);          % slant height (Pythagoras)
SA = pi*r*s + pi*r^2;          % surface area
V  = (1/3)*pi*r^2*h;           % volume

fprintf('The surface area is %.4f and the volume is %.4f\n', SA, V);
