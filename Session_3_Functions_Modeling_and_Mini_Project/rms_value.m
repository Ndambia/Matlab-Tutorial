function y = rms_value(x)
%RMS_VALUE Compute root mean square value of a signal vector.
%   y = rms_value(x)

y = sqrt(mean(x.^2));
end
