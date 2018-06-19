function x = ls_cf(A,b)

B = A'*A;
[L,D] = choleskyFact(B);%B is the Gram matrix
c = A'*b;
v = lowerbacksub(L,c);
w = D\v;
x = upperbacksub(L',w);
end