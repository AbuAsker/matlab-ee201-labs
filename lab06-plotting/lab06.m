clc; clear; close all;

%% Q1: Projectile height and speed
v0 = 40; A = 45; g = 9.81;
theta = deg2rad(A);
t_hit = 2*(v0/g)*sin(theta);
t = linspace(0, t_hit, 100);

h = v0*t*sin(theta) - 0.5*g*t.^2;
v = sqrt((v0*cos(theta))^2 + (v0*sin(theta) - g*t).^2);

figure(1)
subplot(2,1,1)
plot(t, h, 'r--', 'LineWidth', 2);
title('Projectile Height vs. Time');
xlabel('Time (s)'); ylabel('Height (m)'); grid on;

subplot(2,1,2)
plot(t, v, 'b-', 'LineWidth', 2);
title('Projectile Speed vs. Time');
xlabel('Time (s)'); ylabel('Speed (m/s)'); grid on;

%% Q2 (example): exp(x) on linear, semilog and log-log axes
x = 1:0.01:10;
y = exp(x);

figure(2)
subplot(1,3,1)
plot(x, y, 'b', 'LineWidth', 1.5);
title('Linear: exp(x)'); xlabel('x'); ylabel('y'); grid on;

subplot(1,3,2)
semilogy(x, y, 'r', 'LineWidth', 1.5);
title('Semilog-y'); xlabel('x'); ylabel('log(y)'); grid on;

subplot(1,3,3)
loglog(x, y, 'g', 'LineWidth', 1.5);
title('Log-Log'); xlabel('log(x)'); ylabel('log(y)'); grid on;

%% Q2: x^3 and exp(x^2) for 0 < x < 4
x  = 0.01:0.01:4;
y1 = x.^3;
y2 = exp(x.^2);

% a) rectangular plot
figure(3)
plot(x, y1, 'b', x, y2, 'r', 'LineWidth', 2);
title('Rectangular Plot (Linear)');
xlabel('x'); ylabel('y'); legend('x^3', 'e^{x^2}'); grid on;

% b) semilog plot (log scale on y-axis)
figure(4)
semilogy(x, y1, 'b', x, y2, 'r', 'LineWidth', 2);
title('Semilog Plot (log y-axis)');
xlabel('x'); ylabel('log(y)'); legend('x^3', 'e^{x^2}'); grid on;

% c) log-log plot
figure(5)
loglog(x, y1, 'b', x, y2, 'r', 'LineWidth', 2);
title('Log-Log Plot');
xlabel('log(x)'); ylabel('log(y)'); legend('x^3', 'e^{x^2}'); grid on;

%% Q3: Butterfly curve
t = 0:0.01:20*pi;
common_term = exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5;
x = sin(t) .* common_term;
y = cos(t) .* common_term;

figure(6)
plot(x, y, 'r', 'LineWidth', 1.2);
title('Butterfly Curve'); xlabel('x'); ylabel('y');
grid on; axis equal;
