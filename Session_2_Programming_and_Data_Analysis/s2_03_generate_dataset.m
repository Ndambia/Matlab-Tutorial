%% SESSION 2.3: GENERATE SAMPLE DATASET
% This script creates a realistic sample CSV dataset for classroom use.

clc;
clear;
close all;

disp('SESSION 2.3: GENERATE SAMPLE DATASET');
disp('------------------------------------');

rng(10);  % repeatable random data

N = 300;
time_s = (0:N-1)' * 0.2;  % 0.2 second interval

temperature_C = 28 + 2*sin(2*pi*0.01*time_s) + 0.4*randn(N,1);
voltage_V = 12 + 0.2*sin(2*pi*0.02*time_s) + 0.05*randn(N,1);
speed_rpm = 1450 + 50*sin(2*pi*0.015*time_s) + 20*randn(N,1);
vibration_mm_s = 1.2 + 0.3*sin(2*pi*0.03*time_s) + 0.1*randn(N,1);

T = table(time_s, temperature_C, voltage_V, speed_rpm, vibration_mm_s);

% Save in the package Data folder if script is run from Session 2 folder
output_path = fullfile('..', 'Data', 'sample_sensor_data.csv');
writetable(T, output_path);

fprintf('Sample dataset created successfully:\n%s\n', output_path);
disp('Use s2_04_import_and_analyze_data.m next.');
