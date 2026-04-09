%% SESSION 2.1: CONDITIONAL STATEMENTS
% This script demonstrates if, elseif, else, and switch statements.

clc;
clear;
close all;

disp('SESSION 2.1: CONDITIONAL STATEMENTS');
disp('-----------------------------------');

%% Example 1: Battery voltage classification
battery_voltage = 11.6;

if battery_voltage < 11.5
    status = 'LOW';
elseif battery_voltage <= 12.5
    status = 'NORMAL';
else
    status = 'HIGH';
end

fprintf('Battery voltage = %.2f V --> Status = %s\n\n', battery_voltage, status);

%% Example 2: Temperature safety decision
temperature = 68;  % degrees Celsius

if temperature < 40
    disp('Temperature status: Safe operating range.');
elseif temperature < 70
    disp('Temperature status: Warning. Monitor closely.');
else
    disp('Temperature status: Danger. System may overheat.');
end

disp(' ');

%% Example 3: switch statement
menu_option = 2;

switch menu_option
    case 1
        disp('Selected operation: Measure voltage');
    case 2
        disp('Selected operation: Measure current');
    case 3
        disp('Selected operation: Measure temperature');
    otherwise
        disp('Invalid option selected');
end

%% Exercise prompt
disp(' ');
disp('Try changing battery_voltage, temperature, or menu_option and re-run the script.');
