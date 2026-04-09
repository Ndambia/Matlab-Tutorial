%% SESSION 1.3: PLOTTING SIGNALS
% This script demonstrates plotting, labeling axes, legends, grid, and
% comparing signals.

clc;
clear;
close all;

disp('SESSION 1.3: PLOTTING SIGNALS');
disp('-----------------------------');

%% Time vector
fs = 1000;               % Sampling frequency in Hz
t = 0:1/fs:1;            % 1 second duration

%% Signals
f1 = 5;                  % 5 Hz
f2 = 15;                 % 15 Hz
signal1 = sin(2*pi*f1*t);
signal2 = 0.7*cos(2*pi*f2*t);

combined_signal = signal1 + signal2;

%% Plot single signal
figure;
plot(t, signal1, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave: 5 Hz');
grid on;

%% Plot two signals together
figure;
plot(t, signal1, 'LineWidth', 1.5);
hold on;
plot(t, signal2, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Comparison of Two Signals');
legend('Signal 1: 5 Hz sine', 'Signal 2: 15 Hz cosine');
grid on;

%% Plot combined signal
figure;
plot(t, combined_signal, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Combined Signal');
grid on;

%% Subplot comparison
figure;
subplot(3,1,1);
plot(t, signal1);
title('Signal 1');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, signal2);
title('Signal 2');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, combined_signal);
title('Combined Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Engineering example: Voltage decay in a resistor-capacitor-like trend
tau = 0.2;           % time constant
V0 = 5;
v_decay = V0 * exp(-t / tau);

figure;
plot(t, v_decay, 'LineWidth', 1.8);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Exponential Voltage Decay');
grid on;

disp('Plots created successfully.');
disp('Change frequency, amplitude, or time constant and re-run to observe effects.');
