function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

%               Compute the cost of a particular choice of theta.
%               We should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h_theta = sigmoid(X * theta);

% Cost

J = (1/m) * (((-1 * y') * log(h_theta)) - ((1-y') * log(1-h_theta))) + (lambda/(2*m)) * (sum(theta(2:end) .^ 2));

temp = theta;
temp(1) = 0;

grad = ((1 / m) * X' * (h_theta - y)) + (lambda / m) * temp;
grad = grad(:);








% =============================================================

grad = grad(:);

end
