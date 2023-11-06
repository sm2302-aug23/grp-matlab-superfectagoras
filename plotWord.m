function plotWord(string_input)
% clears current figure
clf

% breaks string_input around // 
% then count how many lines the string has been cut down into
breakdown = strip(split(string_input, "//"));
lines = length(breakdown);

% Iterate through lines
for i = 1:length(breakdown)
    % Opens breakdown to get the string 
    string_line = breakdown(i);
    string_line = string_line{1};

    % Iterate through characters
    end_point = 0;

    for j = 1:length(string_line)
        % If there is space, leave a space about the size of one small
        % letter
        if string_line(j) == ' '
            end_point = end_point + 2;

        % else, plot the letters
        else
            [x y] = letters_database(string_line(j));
            x = x + end_point;       % Shifting letters to the right
            y = y + 6 * (lines - 1); % Shifting letters down based on line no.

            n = length(x);
            t = 0:n-1; % Parametric coordinate t
            tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

            % Compute spline interpolation
            xx = spline(t, x, tt);
            yy = spline(t, y, tt);

            % Plot settings
            figure(1)
            plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
            hold on
            plot(x, y, 'bo', 'MarkerFaceColor','b') % plot data points
            % axis([-0.2 6 -0.2 4.5])
            grid on

            % Recheck if the furthest x-point on that letter is 
            % bigger than current endpoint
            if max(x) > end_point
                end_point = max(x);
            end
        end
    end

    % Shift letters down every line
    lines = lines - 1;
end
