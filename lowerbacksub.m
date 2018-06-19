function y = lowerbacksub(L,x)
%BACKSUB
%
% y = BACKSUB(R,x) calculates y = inv(R)*x for an upper triangular matrix R
% via backsubstitution

n = size(L,1);

y = zeros(size(x));
for i = 1:n
    %TODO
    summation = 0;
    for j=1:i-1
        summation = summation + L(i,j)*y(j,:);
    end
    y(i,:) = (x(i,:)-summation)/L(i,i);
end
end