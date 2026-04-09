function y = moving_average_filter(x, window_size)
%MOVING_AVERAGE_FILTER Smooth a signal using a simple moving average.
%   y = moving_average_filter(x, window_size)

if window_size < 1 || mod(window_size,1) ~= 0
    error('window_size must be a positive integer.');
end

kernel = ones(1, window_size) / window_size;
y = conv(x, kernel, 'same');
end
