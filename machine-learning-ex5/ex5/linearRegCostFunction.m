function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
for i=1:m
    J=J+(sum(theta.*X(i,:)')-y(i))^2;
end
J=J+lambda*(sum(theta(2:length(theta)).*theta(2:length(theta))));
J=0.5*J/m;

for j=1:length(theta)
    for i=1:m
        grad(j)=grad(j)+(sum(theta.*X(i,:)')-y(i))*X(i,j);
    end
end
grad(2:length(grad))=grad(2:length(grad))+lambda*theta(2:length(grad));
grad=grad/m;









% =========================================================================

grad = grad(:);

end
