function [w] = myPerceptron(training_data_features, training_data_labels)

[N, num_features] = size(training_data_features);

%initialize weights to be all 1. Notice we add a weight representing w_0,
%the bias term
w = ones(num_features + 1, 1);

misclassified = 1;
while misclassified > 0
    misclassified = 0;
    for i = 1 : N
        x = [1 training_data_features(i,:)];
        wx = x * w;
        h_x = 0;
        if (wx >= 0); h_x = 1; end
        
        y = training_data_labels(i);
        if h_x ~= y
            misclassified = misclassified + 1;
            %The current data point was misclassified so we update w.
            %Think of this as shifting the separator line closer to the
            %misclassified point so it is correctly classified.
            
            w = w + (y - h_x) * x';
        end
    end
end

end