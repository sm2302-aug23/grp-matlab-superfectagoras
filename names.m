% Define data points for x and y coordinates
% x = [0 0.5 1 1.5 2 2.5 3.5 2.5 1.5 2.5 3 3.5 4 4.5 5];
% y = [1 2   1 2   1 2   3   4   3   2   1 2   1 2   1];
% x = [1.0 2.0 3.0 4.0 3.0 2.0 2.0 2.0 2.0 2.0 2.0 2.0 3.0 4.0]
% y = [3.5 3.5 3.5 3.5 3.5 3.5 2.5 1.0 2.5 2.5 2.5 2.5 2.5 2.5]
x = [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50];
y = [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00];

n = length(x);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);

% Plot settings
figure(1)
% plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
hold on
plot(x, y, 'bo', 'MarkerFaceColor','b') % plot data points
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive Letter D')
xlabel('x')
ylabel('y')
p = 0.5;
comet(xx, yy, p)
grid on
