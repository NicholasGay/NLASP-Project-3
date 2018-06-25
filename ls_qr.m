function x = ls_qr(A,b)
% A tall (m>=n)
n = size(A,2);

% Compute Householder-QR
[W,R] = hhqr(A);

% Compute LS solution
c = applyQHe(W,b);
x = upperbacksub(R,c);
x(n+1:end,:) = [];
end