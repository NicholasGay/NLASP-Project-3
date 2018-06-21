function x = ls_qr(A,b)
n = size(A,2);
[W,R] = hhqr(A);
answer = applyQHe(W,b);
x = upperbacksub(R,answer);
x(n+1:end,:) = [];
end