%% SESSION 3.1: FUNCTION BASICS
% Demonstrates calling user-defined functions.

clc;
clear;
close all;

disp('SESSION 3.1: FUNCTION BASICS');
disp('----------------------------');

%% Example 1: RMS calculation
x = [1 2 3 4 5];
x_rms = rms_value(x);

fprintf('RMS of x = %.4f\n', x_rms);

%% Example 2: RC response function
t = 0:0.001:1;
R = 1000;        % ohms
C = 220e-6;      % farads
Vin = 5;         % volts

vc = rc_response(t, R, C, Vin);

figure;
plot(t, vc, 'LineWidth', 1.6);
xlabel('Time (s)');
ylabel('Capacitor Voltage (V)');
title('RC Charging Response from Function');
grid on;

disp('Discussion:');
disp('1. What happens if R becomes larger?');
disp('2. What happens if C becomes smaller?');
