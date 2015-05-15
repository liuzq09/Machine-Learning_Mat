function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

[m,n]=size(X);
for i=1:m
    temp=0;
    for j=1:n
        temp=temp+X(i,j)*theta(j);
    end
    J=J+(y(i)-temp)*(y(i)-temp);
end
J=J/(2*m);


% =========================================================================

end
