%% SESSION 1.2: VECTORS, MATRICES, AND INDEXING
% This script demonstrates row vectors, column vectors, matrices, indexing,
% matrix operations, and element-wise operations.

clc;
clear;
close all;

disp('SESSION 1.2: VECTORS, MATRICES, AND INDEXING');
disp('-------------------------------------------');

%% Row and column vectors
time = 0:0.1:1;          % Row vector
voltage = [1 2 3 4 5];   % Row vector
current = [0.5; 0.8; 1.1; 1.5; 1.9];  % Column vector

disp('Row vector time:');
disp(time);
disp('Column vector current:');
disp(current);

%% Matrix creation
A = [1 2 3;
     4 5 6;
     7 8 9];

B = [2 0 1;
     1 3 2;
     0 1 4];

disp('Matrix A:');
disp(A);
disp('Matrix B:');
disp(B);

%% Indexing
disp('Element in row 2, column 3 of A:');
disp(A(2,3));

disp('Second row of A:');
disp(A(2,:));

disp('First column of B:');
disp(B(:,1));

%% Matrix addition and multiplication
C_add = A + B;
C_mul = A * B;

disp('A + B = ');
disp(C_add);

disp('A * B = ');
disp(C_mul);

%% Element-wise operations
x = 1:5;
y = [2 4 6 8 10];

product_elementwise = x .* y;
division_elementwise = y ./ x;
power_elementwise = x .^ 2;

disp('Element-wise multiplication x .* y:');
disp(product_elementwise);
disp('Element-wise division y ./ x:');
disp(division_elementwise);
disp('Element-wise power x.^2:');
disp(power_elementwise);

%% Small engineering example: resistance network
R_branch = [10 15 22 33 47];   % ohms
I_branch = [1.2 1.0 0.8 0.5 0.2];  % amperes
V_branch = R_branch .* I_branch;
P_branch = V_branch .* I_branch;

results = table(R_branch', I_branch', V_branch', P_branch', ...
    'VariableNames', {'Resistance_Ohm', 'Current_A', 'Voltage_V', 'Power_W'});

disp('Branch results table:');
disp(results);

%% Reflection questions
disp(' ');
disp('Discussion questions:');
disp('1. What is the difference between * and .* ?');
disp('2. Why are vectors useful in engineering calculations?');
disp('3. Why are tables useful when presenting results?');
