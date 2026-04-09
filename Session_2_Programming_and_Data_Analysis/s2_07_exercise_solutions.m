%% SESSION 2.7: EXERCISE SOLUTIONS

clc;
clear;
close all;

disp('SESSION 2.7: EXERCISE SOLUTIONS');
disp('-------------------------------');

%% Exercise 1
temperature = 34;

if temperature < 25
    disp('Temperature classification: LOW');
elseif temperature <= 35
    disp('Temperature classification: NORMAL');
else
    disp('Temperature classification: HIGH');
end

%% Exercise 2
V = 12;
currents = 0.5:0.5:5;
power_values = zeros(size(currents));

for k = 1:length(currents)
    power_values(k) = V * currents(k);
end

disp(table(currents', power_values', 'VariableNames', {'Current_A', 'Power_W'}));

%% Exercise 3 to 5
file_path = fullfile('..', 'Data', 'sample_sensor_data.csv');
data = readtable(file_path);

max_speed = max(data.speed_rpm);
fprintf('Maximum speed = %.3f rpm\n', max_speed);

figure;
plot(data.time_s, data.voltage_V, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Voltage vs Time');
grid on;

count_temp_above_30 = sum(data.temperature_C > 30);
fprintf('Number of temperature samples above 30 C = %d\n', count_temp_above_30);
