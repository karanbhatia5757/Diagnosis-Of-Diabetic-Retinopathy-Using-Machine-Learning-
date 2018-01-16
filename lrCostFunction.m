function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with regularisation

m = length(y); % number of training examples
 
J = 0;

grad = zeros(size(theta));

%Computing Cost

z=X*theta;
a=sigmoid(z);
b=log (a) .* y + (1-y) .* log(1-a);
c=theta.^2;
d=theta(1)^2;
J=-(sum(b)/m) +lambda*(sum(c)-d)/(2*m);

grad= (X' * (a-y))/m;

theta1=(lambda/m)*theta;
theta1(1)=0;
grad=grad+theta1;

% ============================================================

end
