%% SESSION 3.3: RC CIRCUIT MODELING
% Demonstrates transient response and effect of parameter changes.

clc;
clear;
close all;

disp('SESSION 3.3: RC CIRCUIT MODELING');
disp('--------------------------------');

t = 0:0.001:1.5;
Vin = 5;

R1 = 1000;    C1 = 100e-6;
R2 = 2200;    C2 = 100e-6;
R3 = 1000;    C3 = 330e-6;

vc1 = rc_response(t, R1, C1, Vin);
vc2 = rc_response(t, R2, C2, Vin);
vc3 = rc_response(t, R3, C3, Vin);

figure;
plot(t, vc1, 'LineWidth', 1.5);
hold on;
plot(t, vc2, 'LineWidth', 1.5);
plot(t, vc3, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Capacitor Voltage (V)');
title('Effect of R and C on RC Charging Response');
legend('R=1k, C=100uF', 'R=2.2k, C=100uF', 'R=1k, C=330uF');
grid on;

tau1 = R1*C1;
tau2 = R2*C2;
tau3 = R3*C3;

fprintf('Time constants:\n');
fprintf('tau1 = %.4f s\n', tau1);
fprintf('tau2 = %.4f s\n', tau2);
fprintf('tau3 = %.4f s\n', tau3);

disp('Larger time constant means slower charging.');
