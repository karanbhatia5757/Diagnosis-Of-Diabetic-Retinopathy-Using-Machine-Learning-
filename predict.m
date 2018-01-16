function p = predict(theta, X)


m = size(X, 1); % Number of training examples

p = zeros(m, 1);

a=sigmoid(X*theta);
b= (a>=0.491);
p(b)=1;

end
