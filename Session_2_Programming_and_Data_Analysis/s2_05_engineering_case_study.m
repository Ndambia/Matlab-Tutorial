%% SESSION 2.5: ENGINEERING CASE STUDY
% A simple case study using imported sensor data to detect abnormal
% operating conditions.

clc;
clear;
close all;

disp('SESSION 2.5: ENGINEERING CASE STUDY');
disp('-----------------------------------');

file_path = fullfile('..', 'Data', 'sample_sensor_data.csv');
data = readtable(file_path);

temperature = data.temperature_C;
voltage = data.voltage_V;
speed = data.speed_rpm;
vibration = data.vibration_mm_s;

%% Define thresholds
temp_limit = 31.5;
volt_low_limit = 11.7;
vibration_limit = 1.55;

%% Detect abnormal samples
high_temp_idx = find(temperature > temp_limit);
low_voltage_idx = find(voltage < volt_low_limit);
high_vibration_idx = find(vibration > vibration_limit);

fprintf('Number of high-temperature samples: %d\n', length(high_temp_idx));
fprintf('Number of low-voltage samples:      %d\n', length(low_voltage_idx));
fprintf('Number of high-vibration samples:   %d\n', length(high_vibration_idx));

%% A simple health scoring idea
health_score = 100 ...
    - 0.3*length(high_temp_idx) ...
    - 0.4*length(low_voltage_idx) ...
    - 0.5*length(high_vibration_idx);

health_score = max(0, health_score);

fprintf('\nEstimated machine health score = %.2f / 100\n', health_score);

if health_score >= 85
    disp('Condition assessment: GOOD');
elseif health_score >= 65
    disp('Condition assessment: FAIR');
else
    disp('Condition assessment: POOR');
end

%% Plot abnormal points on vibration signal
figure;
plot(data.time_s, vibration, 'LineWidth', 1.2);
hold on;
plot(data.time_s(high_vibration_idx), vibration(high_vibration_idx), 'o', 'MarkerSize', 6);
xlabel('Time (s)');
ylabel('Vibration (mm/s)');
title('High Vibration Samples');
legend('Vibration', 'Above Threshold');
grid on;

disp(' ');
disp('Discussion:');
disp('How would you improve this health score for a real machine?');
