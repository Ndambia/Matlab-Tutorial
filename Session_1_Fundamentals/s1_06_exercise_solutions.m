%% SESSION 1.6: EXERCISE SOLUTIONS
% Worked solutions for the guided exercises.

clc;
clear;
close all;

disp('SESSION 1.6: EXERCISE SOLUTIONS');
disp('-------------------------------');

%% Exercise 1 to 4
R = 5:5:50;
V = 10;
I = V ./ R;
P = V .* I;

results = table(R', I', P', 'VariableNames', {'Resistance_Ohm', 'Current_A', 'Power_W'});
disp(results);

figure;
plot(R, I, '-o', 'LineWidth', 1.5);
xlabel('Resistance (Ohm)');
ylabel('Current (A)');
title('Current vs Resistance');
grid on;

%% Exercise 5 and 6
fs = 1000;
t = 0:1/fs:2;
x1 = sin(2*pi*10*t);
x2 = 0.5*sin(2*pi*25*t);
x_total = x1 + x2;

figure;
plot(t, x_total, 'LineWidth', 1.3);
xlabel('Time (s)');
ylabel('Amplitude');
title('Combined 10 Hz and 25 Hz Signal');
grid on;

disp('Observe how current decreases as resistance increases.');
disp('Observe how combining signals changes waveform shape.');
