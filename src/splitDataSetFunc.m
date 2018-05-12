% Categorizes dataset into training, cross-validation and test sets
% 60-percent goes to training
% 30-percent goes to cross-validation
% 30-percent goes to test sets
function [X Y Z] = splitDataSetFunc(Setosa, Versicolor, Virginica)

	X = zeros(90, 5); % Training dataset
	Y = zeros(30, 5); % Cross-validation dataset
	Z = zeros(30, 5); % Test dataset

	% Select random from each group
	% Setosa
	trainingIndices = randperm(50, 30); % indices of training dataset from setosa species
	unselectedIndices = find(sum(trainingIndices' == 1:50) == 0);
	randomize = randperm(20, 10);
	crossValidationIndices = unselectedIndices(randomize);
	testIndices = unselectedIndices(find(sum(randomize' == 1:20) == 0));
	X = [Setosa(trainingIndices, :)]; 
	Y = [Setosa(crossValidationIndices, :)]; 
	Z = [Setosa(testIndices, :)];

	% Versicolor
	trainingIndices = randperm(50, 30);
	unselectedIndices = find(sum(trainingIndices' == 1:50) == 0);
	randomize = randperm(20, 10);
	crossValidationIndices = unselectedIndices(randomize);
	testIndices = unselectedIndices(find(sum(randomize' == 1:20) == 0));
	X = [X; Versicolor(trainingIndices, :)];
	Y = [Y; Versicolor(crossValidationIndices, :)];
	Z = [Z; Versicolor(testIndices, :)];

	% Virginica
	trainingIndices = randperm(50, 30);
	unselectedIndices = find(sum(trainingIndices' == 1:50) == 0);
	randomize = randperm(20, 10);
	crossValidationIndices = unselectedIndices(randomize);
	testIndices = unselectedIndices(find(sum(randomize' == 1:20) == 0));
	X = [X; Virginica(trainingIndices, :)];
	Y = [Y; Virginica(crossValidationIndices, :)];
	Z = [Z; Virginica(testIndices, :)];

endfunction