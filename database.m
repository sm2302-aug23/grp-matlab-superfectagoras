function [x, y] = database(letter)
% Inputs:
% - letter : the letter we want to obtain the points for
%
% Outputs:
% - x      : the x-coordinates for the letter
% - y      : the y-coordinates for the letter

%% list of letters
letters_list = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', ...
    'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', ...
    'w', 'x', 'y', 'z', ...
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', ...
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', ...
    'W', 'X', 'Y', 'Z'
];

%% list of x_coords
x_coords = [
    
];

%% list of y_coords
y_coords = [
    
];

%% Matching the letters and coordinates together as dictionaries
x_dict = dictionary(letters_list);
y_dict = dictionary(letters_list);

%% Outputs
x = x_dict(letter);
y = y_dict(letter);