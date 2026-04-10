%% SESSION 3.4: SIGNAL ANALYSIS MINI PROJECT


clc;
clear;
close all;

disp('SESSION 3.4: SIGNAL ANALYSIS MINI PROJECT');
disp('-----------------------------------------');

%% Step 1: Generate a clean signal
fs = 500;
t = 0:1/fs:4;
signal_clean = 1.2*sin(2*pi*8*t) + 0.6*sin(2*pi*20*t);

%% Step 2: Add noise
rng(5);
noise = 0.7*randn(size(t));
signal_noisy = signal_clean + noise;

%% Step 3: Filter with moving average
window_size = 9;
signal_filtered = moving_average_filter(signal_noisy, window_size);

%% Step 4: Plot in time domain
figure;
subplot(3,1,1);
plot(t, signal_clean, 'LineWidth', 1.3);
title('Clean Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, signal_noisy, 'LineWidth', 1.0);
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, signal_filtered, 'LineWidth', 1.2);
title('Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Step 5: Frequency analysis using FFT
N = length(t);
f = (0:N-1)*(fs/N);

X_clean = abs(fft(signal_clean))/N;
X_noisy = abs(fft(signal_noisy))/N;
X_filtered = abs(fft(signal_filtered))/N;

figure;
plot(f(1:floor(N/2)), X_clean(1:floor(N/2)), 'LineWidth', 1.3);
hold on;
plot(f(1:floor(N/2)), X_noisy(1:floor(N/2)), 'LineWidth', 1.1);
plot(f(1:floor(N/2)), X_filtered(1:floor(N/2)), 'LineWidth', 1.2);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum Comparison');
legend('Clean', 'Noisy', 'Filtered');
grid on;

%% Step 6: Metrics
fprintf('RMS clean signal    = %.4f\n', rms_value(signal_clean));
fprintf('RMS noisy signal    = %.4f\n', rms_value(signal_noisy));
fprintf('RMS filtered signal = %.4f\n', rms_value(signal_filtered));

disp('Discussion:');
disp('1. Which frequencies dominate the clean signal?');
disp('2. How does noise change the spectrum?');
disp('3. What are the limitations of a moving average filter?');
