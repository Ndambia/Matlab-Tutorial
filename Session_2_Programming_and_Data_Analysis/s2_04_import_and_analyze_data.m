%% SESSION 2.4: IMPORT AND ANALYZE DATA
% This script imports CSV data, computes basic statistics, and visualizes
% multiple engineering measurements.

clc;
clear;
close all;

disp('SESSION 2.4: IMPORT AND ANALYZE DATA');
disp('------------------------------------');

file_path = fullfile('..', 'Data', 'sample_sensor_data.csv');
data = readtable(file_path);

disp('First five rows of imported data:');
disp(head(data));

%% Extract columns
t = data.time_s;
temperature = data.temperature_C;
voltage = data.voltage_V;
speed = data.speed_rpm;
vibration = data.vibration_mm_s;

%% Basic statistics
fprintf('\nSTATISTICS\n');
fprintf('Temperature mean = %.3f C\n', mean(temperature));
fprintf('Temperature std  = %.3f C\n', std(temperature));
fprintf('Voltage mean     = %.3f V\n', mean(voltage));
fprintf('Speed mean       = %.3f rpm\n', mean(speed));
fprintf('Vibration mean   = %.3f mm/s\n', mean(vibration));

%% Simple moving average smoothing
window = 10;
temperature_smooth = movmean(temperature, window);
vibration_smooth = movmean(vibration, window);

%% Plot temperature
figure;
plot(t, temperature, 'LineWidth', 1.0);
hold on;
plot(t, temperature_smooth, 'LineWidth', 2.0);
xlabel('Time (s)');
ylabel('Temperature (C)');
title('Temperature: Raw vs Smoothed');
legend('Raw', 'Smoothed');
grid on;

%% Plot voltage and speed
figure;
subplot(2,1,1);
plot(t, voltage, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Voltage over Time');
grid on;

subplot(2,1,2);
plot(t, speed, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Speed (rpm)');
title('Motor Speed over Time');
grid on;

%% Plot vibration
figure;
plot(t, vibration, 'LineWidth', 1.0);
hold on;
plot(t, vibration_smooth, 'LineWidth', 2.0);
xlabel('Time (s)');
ylabel('Vibration (mm/s)');
title('Vibration: Raw vs Smoothed');
legend('Raw', 'Smoothed');
grid on;

%% Engineering interpretation
disp(' ');
disp('Interpretation prompts:');
disp('1. Is the voltage approximately stable?');
disp('2. Does the speed remain close to nominal?');
disp('3. Does smoothing help reveal the trend in vibration?');
