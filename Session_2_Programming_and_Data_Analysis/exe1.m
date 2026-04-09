clc;
clear;
close all;

disp('SESSION 2.5: ENGINEERING CASE STUDY');
disp('-----------------------------------');

file_path = fullfile('..', 'Data', 'sample_sensor_data.csv');
data = readtable(file_path);

temperature = data.temperature_C;
voltage = data.voltage_V;
t = data.time_s;

figure;
plot(t, voltage,  '-o', 'LineWidth', 1.5)
xlabel('Time');
ylabel('voltage');
title('Volatge aganist time');
grid on;


