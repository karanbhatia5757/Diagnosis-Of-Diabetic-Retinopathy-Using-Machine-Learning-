function g = sigmoid(z)

%   j = sigmoid(z) computes the sigmoid of z.


g = zeros(size(z));
e=exp(1);

a=-z;
b=e.^a;
c=1+b;
g=1./(1+e.^a);


end
