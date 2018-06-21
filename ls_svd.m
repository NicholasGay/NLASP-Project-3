function x = ls_svd(A,b)
n = size(A,2);
[U,Sigma,V] = svd(A);

U = U(:,1:n);
c = U'*b;

Sigma = Sigma(1:n,1:n);

w = Sigma\c;

x = V*w;
end