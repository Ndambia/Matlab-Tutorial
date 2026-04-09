%% SESSION 3.2: EQUATION SOLVING
% Demonstrates numerical equation solving with fzero.

clc;
clear;
close all;

disp('SESSION 3.2: EQUATION SOLVING');
disp('-----------------------------');

%% Example 1: Solve x^3 - 6x + 2 = 0
f = @(x) x.^3 - 6*x + 2;
root1 = fzero(f, -3);
root2 = fzero(f, 0);
root3 = fzero(f, 3);

fprintf('Roots found:\n');
fprintf('Root near -3: %.6f\n', root1);
fprintf('Root near  0: %.6f\n', root2);
fprintf('Root near  3: %.6f\n', root3);

%% Plot the function
x = linspace(-4, 4, 1000);
y = f(x);

figure;
plot(x, y, 'LineWidth', 1.5);
hold on;
yline(0, '--');
plot(root1, 0, 'o', 'MarkerSize', 8);
plot(root2, 0, 'o', 'MarkerSize', 8);
plot(root3, 0, 'o', 'MarkerSize', 8);
xlabel('x');
ylabel('f(x)');
title('Numerical Root Finding with fzero');
grid on;

%% Example 2: Engineering interpretation
% Solve for time when RC capacitor reaches 63.2% of final value
R = 1000;
C = 100e-6;
Vin = 10;
target = 0.632 * Vin;

g = @(t) rc_response(t, R, C, Vin) - target;
t_tau = fzero(g, 0.1);

fprintf('\nTime to reach 63.2%% of final value = %.6f s\n', t_tau);
fprintf('Expected time constant R*C         = %.6f s\n', R*C);
