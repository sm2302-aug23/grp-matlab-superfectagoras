function [x, y] = letters_database(letter)
% Inputs:
% - letter : the letter we want to obtain the points for
%
% Outputs:
% - x      : the x-coordinates for the letter
% - y      : the y-coordinates for the letter

%% list of letters
letters_list = {
    'a'
    
    % 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', ...
    % 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', ...
    % 'w', 'x', 'y', 'z', ...
    % 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', ...
    % 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', ...
    % 'W', 'X', 'Y', 'Z'
};

%% list of coordinates
coords = {
    % a
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    }

    % next letters here (follow same format I guess?)
}';

%% Matching the letters and coordinates together as dictionaries
letters_dict = dictionary(letters_list, coords);

%% Error checking
% Throws error if letter is not in dictionary
if ~isKey(letters_dict, {letter}) 
    error('%c is not in the dictionary', letter)
end

%% Outputs
% Saves value of letter inside dictionary into letters_found
% letter has to be inside {} because the key is originally a cell
letter_found = letters_dict({letter});

% Opens up letter_found to reveal a cell that contains two arrays
letter_coords = letter_found{1};

% Saves the coordinates to x and y
x = letter_coords{1};
y = letter_coords{2};