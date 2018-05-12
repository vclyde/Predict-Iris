% costFunc - Cost function with regularization
function [J, grad] = costFunc(theta, X, y, lambda)
	% Initialize some variables
	m = length(y);
	J = 0;
	grad = zeros(size(theta));

	% Hypothesis
	h = sigmoid(X * theta);
	J = 1 / m * ((-y' * log(h)) - ((1 - y)' * log(1 - h)));
	grad = 1 / m * X' * (h - y);

	if (lambda > 0) 
		J = J + (lambda / (2 * m)) * theta(2, :);
		grad(2:end) = grad(2:end) + ((lambda / m) * theta(2:end));
	endif
endfunction