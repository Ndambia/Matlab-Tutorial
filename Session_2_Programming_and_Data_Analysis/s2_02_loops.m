%% SESSION 2.2: LOOPS
% This script demonstrates for loops and while loops using engineering
% examples.

clc;
clear;
close all;

disp('SESSION 2.2: LOOPS');
disp('------------------');

%% Example 1: Current calculation for many resistors
V = 24;
R_values = 2:2:20;
I_values = zeros(size(R_values));

for k = 1:length(R_values)
    I_values(k) = V / R_values(k);
end

disp('Current values from for-loop:');
disp(table(R_values', I_values', 'VariableNames', {'Resistance_Ohm', 'Current_A'}));

%% Example 2: Build a time vector manually
dt = 0.1;
N = 11;
t = zeros(1, N);

for n = 2:N
    t(n) = t(n-1) + dt;
end

disp('Generated time vector:');
disp(t);

%% Example 3: while loop threshold search
speed = 0;
step = 5;
count = 0;

while speed < 60
    speed = speed + step;
    count = count + 1;
end

fprintf('Reached speed %.1f after %d increments.\n', speed, count);

%% Example 4: Generate a table of squared values
n_values = 1:10;
square_values = zeros(size(n_values));

for k = 1:length(n_values)
    square_values(k) = n_values(k)^2;
end

disp('Squares table:');
disp(table(n_values', square_values', 'VariableNames', {'n', 'n_squared'}));

%% Plot current vs resistance
figure;
plot(R_values, I_values, '-o', 'LineWidth', 1.5);
xlabel('Resistance (Ohm)');
ylabel('Current (A)');
title('Current vs Resistance using a for-loop');
grid on;
