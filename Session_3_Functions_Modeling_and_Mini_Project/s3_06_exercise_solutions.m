%% SESSION 3.6: EXERCISE SOLUTIONS

clc;
clear;
close all;

disp('SESSION 3.6: EXERCISE SOLUTIONS');
disp('-------------------------------');

%% Exercise 1
V = 12;
I = 2.5;
P = V * I;
fprintf('Power = %.3f W\n', P);

%% Exercise 2
t = 0:0.001:2;
R = 470;
C = 1000e-6;
Vin = 9;
vc = rc_response(t, R, C, Vin);

figure;
plot(t, vc, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('RC Charging Curve');
grid on;

%% Exercise 3
f = @(x) x.^2 - 5;
root_pos = fzero(f, 2);
root_neg = fzero(f, -2);

fprintf('Positive root = %.6f\n', root_pos);
fprintf('Negative root = %.6f\n', root_neg);

%% Exercise 4 and 5
fs = 400;
t = 0:1/fs:2;
x = sin(2*pi*10*t);
rng(2);
x_noisy = x + 0.5*randn(size(t));
x_filtered = moving_average_filter(x_noisy, 7);

rms_noisy = rms_value(x_noisy);
rms_filtered = rms_value(x_filtered);

fprintf('RMS noisy signal    = %.6f\n', rms_noisy);
fprintf('RMS filtered signal = %.6f\n', rms_filtered);

figure;
plot(t, x_noisy, 'LineWidth', 1.0);
hold on;
plot(t, x_filtered, 'LineWidth', 1.6);
xlabel('Time (s)');
ylabel('Amplitude');
title('Noisy and Filtered 10 Hz Signal');
legend('Noisy', 'Filtered');
grid on;
