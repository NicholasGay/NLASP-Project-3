clc
clear
close all

A = [10^-5, 10^-15; 10^-5, -10^-15; 1, 0.5];
b = [1;2;0];

X_analytic = [1.5*10^5+10^-5;-3*10^5-2*10^-5];

X_svd = ls_svd(A,b)
X_qr = ls_qr(A,b)
X_cf = ls_cf(A,b)