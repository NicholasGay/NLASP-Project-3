clc
clear
close all

A = [10^-5, 10^-15; 10^-5, -10^-15; 1, 0.5];
b = [1;2;0];

% Analytic LS solution
x_analytic = 1e5*[1.5;-3] + 1e-5*[1;-2] + 1e-15*[0;-4];

% Computation of numerical algorithms' solutions 
x_svd = ls_svd(A,b);
x_qr = ls_qr(A,b);
x_cf = ls_cf(A,b);

% Print errors
disp(['Error SVD = ', num2str(norm(x_analytic-x_svd))])
disp(['Error QR = ', num2str(norm(x_analytic-x_qr))])
disp(['Error Cholesky = ', num2str(norm(x_analytic-x_cf))])