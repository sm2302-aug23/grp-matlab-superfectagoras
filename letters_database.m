function [x, y] = letters_database(letter)
% Inputs:
% - letter : the letter we want to obtain the points for
%
% Outputs:
% - x      : the x-coordinates for the letter
% - y      : the y-coordinates for the letter

%% list of letters
letters_list = {
    'a','b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', ...
    'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', ...
    'w', 'x', 'y', 'z', ...
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', ...
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', ...
    'W', 'X', 'Y', 'Z'
};

%% list of x coordinates
coords = {
    %'a'  % Lowercase letters
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'b'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'c'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'d'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'e'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'f'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'g'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'h'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'i'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'j'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'k'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'l'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'m'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'n'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'o'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'p'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'q'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'r'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'s'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'t'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'u'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'v'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'w'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'x'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'y'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'z'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'A'   % Uppercase letters
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'B'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'C'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'D'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'E'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'F'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'G'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'H'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'I'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'J'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'K'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'L'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'M'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'N'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'O'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'P'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'Q'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'R'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'S'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'T'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'U'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'V'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'W'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'X'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'Y'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'Z'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    }
}';

%% Matching the letters and coordinates together as dictionaries
letters_dict = dictionary(letters_list, coords);

%% Error checking
% Throws error if letter is not in dictionary
if ~isKey(letters_dict, {letter}) 
    error('%c is not in the dictionary \n', letter)
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