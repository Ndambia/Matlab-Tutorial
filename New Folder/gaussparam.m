function [nodes, weights] = gaussparam(n)


    % Tolerance for Newton's method convergence
    tol = 1e-15;
    maxIter = 100;

    nodes   = zeros(1, n);
    weights = zeros(1, n);

    % Only need to find ceil(n/2) roots due to symmetry of Legendre polynomials
    m = floor((n + 1) / 2);

    for i = 1:m
        % Initial guess for the i-th root (Chebyshev approximation)
        xi = cos(pi * (i - 0.25) / (n + 0.5));

        % Newton's method to refine the root
        for iter = 1:maxIter
            % Evaluate Legendre polynomial P_n(xi) and its derivative
            % using the recurrence relation:
            %   P_0(x) = 1, P_1(x) = x
            %   (k+1)*P_{k+1}(x) = (2k+1)*x*P_k(x) - k*P_{k-1}(x)
            p0 = 1.0;   % P_{k-1}
            p1 = xi;    % P_k

            for k = 1:(n - 1)
                p2 = ((2*k + 1) * xi * p1 - k * p0) / (k + 1);
                p0 = p1;
                p1 = p2;
            end

            % p1 = P_n(xi), p0 = P_{n-1}(xi)
            % Derivative: P_n'(x) = n * (P_{n-1}(x) - x*P_n(x)) / (1 - x^2)
            dp = n * (p0 - xi * p1) / (1 - xi^2);

            % Newton update
            dx  = p1 / dp;
            xi  = xi - dx;

            if abs(dx) < tol
                break;
            end
        end

        % Store node and its symmetric counterpart
        nodes(i)       = -xi;
        nodes(n+1-i)   =  xi;

        % Weight: w_i = 2 / [(1 - xi^2) * (P_n'(xi))^2]
        wi = 2.0 / ((1 - xi^2) * dp^2);
        weights(i)     = wi;
        weights(n+1-i) = wi;
    end
end