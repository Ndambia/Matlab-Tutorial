%% SESSION 1.1: MATLAB ENVIRONMENT AND BASIC ENGINEERING CALCULATIONS
% This script introduces variables, arithmetic operations, built-in
% functions, and basic engineering calculations.

clc;
clear;
close all;

disp('SESSION 1.1: MATLAB ENVIRONMENT AND BASIC ENGINEERING CALCULATIONS');
disp('---------------------------------------------------------------');

%% Example 1: Basic arithmetic
a = 10;
b = 3;

sum_ab = a + b;
difference_ab = a - b;
product_ab = a * b;
division_ab = a / b;
power_ab = a^b;

disp('Basic arithmetic results:');
fprintf('a + b = %.2f\n', sum_ab);
fprintf('a - b = %.2f\n', difference_ab);
fprintf('a * b = %.2f\n', product_ab);
fprintf('a / b = %.2f\n', division_ab);
fprintf('a^b   = %.2f\n\n', power_ab);

%% Example 2: Engineering calculation using Ohm''s law
V = 24;      % Voltage in volts
R = 8;       % Resistance in ohms
I = V / R;   % Current in amperes
P = V * I;   % Power in watts

disp('Ohm''s law calculation:');
fprintf('Voltage      = %.2f V\n', V);
fprintf('Resistance   = %.2f ohms\n', R);
fprintf('Current      = %.2f A\n', I);
fprintf('Power        = %.2f W\n\n', P);

%% Example 3: Using built-in MATLAB functions
x = 16;
y = sqrt(x);
theta_deg = 30;
theta_rad = deg2rad(theta_deg);

disp('Built-in functions:');
fprintf('sqrt(16)     = %.2f\n', y);
fprintf('sin(30 deg)  = %.4f\n', sin(theta_rad));
fprintf('cos(30 deg)  = %.4f\n\n', cos(theta_rad));

%% Example 4: Vectorized engineering calculation
% Compute current for many resistance values at once.
V_supply = 12;
R_values = [2 4 6 8 10 12];
I_values = V_supply ./ R_values;  % element-by-element division

disp('Current values for multiple resistors:');
disp(table(R_values', I_values', 'VariableNames', {'Resistance_Ohm', 'Current_A'}));

%% Example 5: Power in a resistor bank
P_values = V_supply .* I_values;

disp('Power values for multiple resistors:');
disp(table(R_values', P_values', 'VariableNames', {'Resistance_Ohm', 'Power_W'}));

%% Reflection questions
disp(' ');
disp('Discussion questions:');
disp('1. Why do we use ./ for vectors?');
disp('2. What happens to current as resistance increases?');
disp('3. Which resistor dissipates the most power here?');
