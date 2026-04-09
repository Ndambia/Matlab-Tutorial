%% SESSION 1.4: USER INPUT AND SCRIPTS
% This script shows how to collect user input and perform a simple
% engineering calculation. Run it line by line when teaching if preferred.

clc;
clear;
close all;

disp('SESSION 1.4: USER INPUT AND SCRIPTS');
disp('-----------------------------------');

disp('This script calculates current and power using Ohm''s law.');

V = input('Enter voltage in volts: ');
R = input('Enter resistance in ohms: ');

if R == 0
    disp('Resistance cannot be zero.');
else
    I = V / R;
    P = V * I;

    fprintf('\nResults:\n');
    fprintf('Voltage     = %.3f V\n', V);
    fprintf('Resistance  = %.3f ohms\n', R);
    fprintf('Current     = %.3f A\n', I);
    fprintf('Power       = %.3f W\n', P);
end

disp(' ');
disp('Try the script again with different values.');
