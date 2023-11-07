% Sample coordinates
% Change x y coordinates depends on letter used
x_coord = [0.0 1.0 2.0 3.0 4.0 3.4 4.4];
y_coord = [4.0 0.2 2.2 0.2 4.0 3.0 3.0];
% x = [];
% y = [];

%% Create a spline curve
% Using linspace to create range values between 2 endpoints 1-100
t = linspace(1, length(x_coord), 100);
% Interpolating smooth curve
x_spline = spline(1:length(x_coord), x_coord, t);
y_spline = spline(1:length(y_coord), y_coord, t);

% Plotting the spline curve
% Can vary line width and colours
plot(x_spline, y_spline, 'LineWidth', 100, 'Color', 'blue');

% Add labels and title if needed
xlabel('X-axis');
ylabel('Y-axis');
title('Customized Spline Coordinates Plot');
