training_data_features = [
    5.2 3.38
    5.6 3.8
    5.77 3.33
    5.80 4.55
    5.87 4.73
    6.0 4.77
    6.1 4.85
    5.3 4.45
    5.6 5.01
    5.7 5.42
    6.08 5.99
    6.31 6.58
    5.70 5.95
    6.60 6.97
    ];

training_data_labels = [
    1
    1
    1
    1
    1
    1
    1
    0
    0
    0
    0
    0
    0
    0
];

[w] = myPerceptron(training_data_features, training_data_labels);

%we've learned w. Below code just plots the points and boundary
one_idx = (training_data_labels==1);
zero_idx = (training_data_labels==0);

figure;
title('After learning w');
x_min = 5;
x_max = 6.8;
xlim([x_min x_max]);
ylim([3.18 7.17]);

hold on
scatter(training_data_features(one_idx,1), training_data_features(one_idx,2), 25, 'red', 'filled');
scatter(training_data_features(zero_idx,1), training_data_features(zero_idx,2), 25, 'blue', 'filled');
a = linspace(x_min,x_max);
%since the learned decision boundary is a line with equation w_0 + w_1*x_1 +
%w_2*x_2 = 0, we just rewrite the line in form of y = mx + b
b = (w(2)*a)/(-w(3)) + (w(1)/-w(3));
plot(a,b);
hold off