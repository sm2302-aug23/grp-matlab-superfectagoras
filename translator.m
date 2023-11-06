function [x y] = translator(x_coords, y_coords, shift_up, shift_right)
% Inputs:
% - x_coords    - the x-coordinates of the letter you want to shift
% - y_coords    - the y-coordinates of the letter you want to shift
% - shift_up    - how many lines you want to shift by (0 means no shift)
% - shift_right - how much to move letter to the right (0 means no shift)
%
% Outputs:
% - x           - the x-coordinates for the letter
% - y           - the y-coordinates for the letter

%% Coordinate to test on (remove if done)
x = [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50];
y = [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00];

%% Shifting up
% Shift the coordinates up by the height of cursive f
% For example, if f is 6 blocks tall, shift y_coords by 6 blocks
% change y_coords only, x_coords remain unchanged here

%% Shifting right
% Shift the coordinates to the right 
% so the first point connects to the last point of the last letter
% You will be using endpoint.m to get the value for the last point
% Change x_coords only, y_coords remain unchanged here

% IT'S NOT FINAL IF WE ARE PLANNING ON USING THIS AS A SEPARATE FUNCTION
% THAT'S TO BE DECIDED ON LATER ON
