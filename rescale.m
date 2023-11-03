function [x, y] = rescale(x_coord, y_coord, scale)
% Inputs:
% - x_coord: the x-coordinates of the points to be rescaled
% - y_coord: the y-coordinates of the points to be rescaled
% - scale  : the scale multiplier to be used on the points
%
% Outputs:
% - x      : the new rescaled x-coordinates
% - y      : the new rescaled y-coordinates

%% Initialize new empty vectors for rescaled x and y coordinates
x = [];
y = [];

%% Rescale each points in x and y coords
for i = 1:length(x_coord) 
    rescale_x = x_coord(i) * scale;
    x = [x rescale_x];

    rescale_y = y_coord(i) * scale;
    y = [y rescale_y];
end