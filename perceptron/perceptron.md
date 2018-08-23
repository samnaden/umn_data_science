# Perceptron

Given two sets of linearly separable data points, perceptron will learn a decision boundary. In 2D space, this means that three numbers are learned: w<sub>0</sub>, w<sub>1</sub>, and w<sub>2</sub>. The boundary line is then expressed as w<sub>0</sub> + w<sub>1</sub>x<sub>1</sub> + w<sub>2</sub>x<sub>2</sub> = 0. Note that this can be rewritten in y = mx + b form as x<sub>2</sub> = -(w<sub>1</sub>/w<sub>2</sub>)x<sub>1</sub> + -w<sub>0</sub>/w<sub>2</sub>.

Depending on how the weights were learned, one group of points will fall on one side of the boundary and one on the other. To classify new data points, simply plot the learned decision boundary, plot the new point, and see which side it is on.

To see the perceptron algorithm in action, run testMyPerceptron.m. There are comments in the code that help explain the algorithm.

This example only deals with linearly separable data. If the data is not linearly separable, a "soft" linear classifer must be used to tolerate errors. This problem is a linear programming problem where the goal is to minimize error.