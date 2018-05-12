% Computes the sigmoid function of z
function g = sigmoidFunc(z)
	g = 1.0 ./ (1.0 + exp(-z));
endfunction