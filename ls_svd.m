function x = ls_svd(A,b)

[U,Sigma,V] = svd(A);

% A tall (m>=n)
r = size(A,2);
U = U(:,1:r);
c = U'*b;

Sigma = Sigma(1:r,1:r);

w = Sigma\c;

x = V*w;
end