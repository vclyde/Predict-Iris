% Plot to a scatter chart
function plotDataFunc(X, y)

	% Find Indices of different Iris species
	setosa = find(y == 0);
	versicolor = find(y == 1);
	virginica = find(y == 2);

	figure; % open a new figure window
	hold on; 

	title('Petal Width and Length of Different Iris Species');
	xlabel('Petal Width (cm)');
	ylabel('Petal Length (cm)');
	grid on;

	% Plot data
	% 4 - petal width
	% 3 - petal length
	plot(X(setosa, 4), X(setosa, 3), 'r+', 'linewidth', 1, 'markersize', 10);
	plot(X(versicolor, 4), X(versicolor, 3), 'm*', 'markersize', 10);
	plot(X(virginica, 4), X(virginica, 3), 'bo', 'markersize', 10);

	legend('I. setosa', 'I. versicolor', 'I. virginica');
	% grid off;  % for saving to image without grid
	% print -dpng 'PetalScatterPlot.png'
	hold off;

	figure; % open a new figure window for sepal scatter chart
	hold on;

	title('Sepal Width and Length of Different Iris Species');
	xlabel('Sepal Width (cm)');
	ylabel('Sepal Length (cm)');
	grid on;

	% Plot data
	% 2 - sepal width
	% 1 - sepal length
	plot(X(setosa, 2), X(setosa, 1), 'r+', 'linewidth', 1, 'markersize', 10);
	plot(X(versicolor, 2), X(versicolor, 1), 'm*', 'markersize', 10);
	plot(X(virginica, 2), X(virginica, 1), 'bo', 'markersize', 10);

	legend('I. setosa', 'I. versicolor', 'I. virginica');
	% grid off;
	% print -dpng 'SepalScatterPlot.png';
	hold off;
	
endfunction