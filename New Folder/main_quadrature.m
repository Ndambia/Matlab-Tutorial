%% GAUSSIAN QUADRATURE - MAIN SCRIPT
% Evaluates definite integrals using n-point Gauss-Legendre quadrature
% by calling the custom function gaussparam.m
%
% Integrals evaluated:
%   1. I = integral from 0 to pi  of sin(x) dx         [exact = 2]
%   2. I = integral from 0 to 4   of x*exp(2x) dx      [exact via IBP]
%   3. I = integral from 0 to 1   of x*sin(x) dx       [exact via IBP]
%   4. I = integral from -1 to 1  of arcsin(x) dx      [exact = 0]
%   5. I = integral from 0 to pi  of exp(-0.5x)*cos(x) dx

clc; clear; close all;

fprintf('========================================================\n');
fprintf('   GAUSSIAN QUADRATURE INTEGRATION RESULTS\n');
fprintf('========================================================\n\n');

%% ---------------------------------------------------------------
%  EXACT ANALYTICAL VALUES
%  (computed via integration by parts / standard results)
%  ---------------------------------------------------------------
% 1. int_0^pi sin(x) dx = [-cos(x)]_0^pi = 2
exact1 = 2;

% 2. int_0^4 x*e^(2x) dx = [x*e^(2x)/2 - e^(2x)/4]_0^4
%    = (4*e^8/2 - e^8/4) - (0 - 1/4) = (7/4)*e^8 + 1/4
exact2 = (7/4)*exp(8) + 1/4;

% 3. int_0^1 x*sin(x) dx = [-x*cos(x) + sin(x)]_0^1
%    = -cos(1) + sin(1)
exact3 = sin(1) - cos(1);

% 4. int_{-1}^{1} arcsin(x) dx = 0  (arcsin is odd, interval symmetric)
exact4 = 0;

% 5. int_0^pi e^(-0.5x)*cos(x) dx
%    = Re[ int_0^pi e^{(-0.5+i)x} dx ]
%    = Re[ e^{(-0.5+i)pi} - 1 ] / (-0.5+i)
%    = [e^{-pi/2}*(cos(pi)+i*sin(pi)) - 1] / (-0.5+i)
%    Numerator real part: e^{-pi/2}*(-1) - 1
%    Simplified: (2/5)*[1 + e^(-pi/2)] ... see below
s   = -0.5; % real part of exponent
A   = exp(s*pi)*(s*cos(pi) + sin(pi)) - s;     % numerator real part scaled
B   = exp(s*pi)*(s*sin(pi) - cos(pi)) + 1;     % numerator imag part
den = s^2 + 1;
exact5 = (s*A + B) / den;   % = [e^(-pi/2)*(-s) - s + e^(-pi/2)*(-1) - ...] / den
% Recompute cleanly:
exact5 = (exp(-0.5*pi)*(-0.5*cos(pi) + sin(pi)) - (-0.5)) / ((-0.5)^2 + 1^2) ...
       - 0;   % boundary at lower limit contributes -s/(s^2+1)
% Direct formula: int e^(ax)cos(bx)dx = e^(ax)(a*cos(bx)+b*sin(bx))/(a^2+b^2)
% Here a=-0.5, b=1, limits 0 to pi
a = -0.5; b = 1;
F = @(x) exp(a*x).*(a*cos(b*x) + b*sin(b*x)) / (a^2 + b^2);
exact5 = F(pi) - F(0);

%% ---------------------------------------------------------------
%  INTEGRANDS AND INTERVAL TRANSFORMATION
%
%  Gauss-Legendre is defined on [-1,1]. For integral from a to b:
%    int_a^b f(x) dx  ≈  (b-a)/2 * sum_i w_i * f( (b-a)/2 * t_i + (a+b)/2 )
%  where t_i, w_i are nodes/weights on [-1,1].
%  ---------------------------------------------------------------

% Define integrands as anonymous functions
f1 = @(x) sin(x);
f2 = @(x) x .* exp(2*x);
f3 = @(x) x .* sin(x);
f4 = @(x) asin(x);
f5 = @(x) exp(-0.5*x) .* cos(x);

% Integration limits [a, b]
limits = [0, pi;
          0, 4;
          0, 1;
         -1, 1;
          0, pi];

funcs  = {f1, f2, f3, f4, f5};
exacts = [exact1, exact2, exact3, exact4, exact5];
labels = {'sin(x)',  ...
          'x*e^{2x}', ...
          'x*sin(x)', ...
          'arcsin(x)', ...
          'e^{-0.5x}*cos(x)'};

nPoints = [2, 3, 4, 5];  % number of quadrature points to test

%% ---------------------------------------------------------------
%  MAIN COMPUTATION LOOP
%  ---------------------------------------------------------------
for p = 1:length(funcs)
    a = limits(p, 1);
    b = limits(p, 2);
    f = funcs{p};
    Iexact = exacts(p);

    fprintf('--------------------------------------------------------\n');
    fprintf('Integral %d:  I = integral of %s from %g to %g\n', ...
            p, labels{p}, a, b);
    fprintf('Exact value: %.10f\n', Iexact);
    fprintf('%6s %20s %15s\n', 'n', 'Approx. Value', '% Error');
    fprintf('%6s %20s %15s\n', '---', '-----------------', '-----------');

    for n = nPoints
        % Get Gauss nodes and weights on [-1, 1]
        [t, w] = gaussparam(n);

        % Map nodes to [a, b] and compute weighted sum
        x     = (b - a)/2 * t + (a + b)/2;
        Iapprox = (b - a)/2 * sum(w .* f(x));

        % Percentage error
        if Iexact ~= 0
            pctErr = abs((Iapprox - Iexact) / Iexact) * 100;
        else
            pctErr = abs(Iapprox) * 100;   % absolute when exact = 0
        end

        fprintf('%6d %20.10f %14.6f%%\n', n, Iapprox, pctErr);
    end
    fprintf('\n');
end

fprintf('========================================================\n');
fprintf('  ASSIGNMENT INTEGRAL: I = integral of arcsin(x) from -1 to 1\n');
fprintf('  Exact value = 0  (arcsin(x) is an odd function)\n');
fprintf('========================================================\n\n');
fprintf('Note: For an odd function f on a symmetric interval [-a,a],\n');
fprintf('  integral = 0 analytically. Gauss-Legendre with symmetric\n');
fprintf('  nodes/weights also gives exactly 0 for ANY n >= 1.\n\n');

for n = nPoints
    [t, w] = gaussparam(n);
    Iapprox = sum(w .* asin(t));  % interval is already [-1,1]
    fprintf('  n = %d :  I ≈ %.6e  (essentially machine zero)\n', n, Iapprox);
end

fprintf('\n========================================================\n');
fprintf('All computations complete.\n');