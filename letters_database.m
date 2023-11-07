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
    [1.8 1.0 0.1 0.0 1.2 1.95 1.8 1.8 2.0],
    [1.9 2.0 1.0 0.0 0.1 1.50 1.5 0.4 0.1]
    },
    %'b'
    {
    [0.0 1.4 0.8 0.6 1.0 1.6 0.9 0.9 2.0],
    [1.0 2.0 1.7 0.0 0.8 0.8 0.0 0.1 0.0]
    },
    %'c'
    {
    [1.8 1.8 1.00 0.00 0.00 1.00 2.00],
    [1.40 2.00 1.80 1.00 0.00 0.00 0.60]
    },
    %'d'
    {
    [1.4 0.5 0.1 1.6 2.0 1.8 1.6 1.7 2.0],
    [0.9 1.0 0.0 0.5 2.0 2.0 0.7 0.0 0.1]
    },
    %'e'
    {
    [0.00 1.00 1.25 0.50 0.75 2.00],
    [0.75 1.00 1.75 1.75 0.00 0.75]
    },
    %'f'
    {
    [-0.40 0.80 0.40 0.00 0.00 0.40 1.00 0.00 1.20],
    [0.80 1.00 1.00 1.00 0.00 -0.60 0.00 0.80 0.60]
    },
    %'g'
    {
    [1.80 1.20 0.80 1.20 1.70 1.80 2.10 1.80 1.70 1.60 1.50 1.00 0.40 1.00 2.40],
    [1.80 2.00 1.40 1.00 1.40 1.80 2.00 1.80 1.40 1.00 0.40 0.00 0.40 0.60 0.70]
    },
    %'h'
    {
    [0.10 0.60 0.50 0.50 0.70 1.10 1.30 1.50],
    [0.40 1.00 1.30 0.00 0.50 0.10 0.00 0.10]
    },
    %'i'
    {
    [2.00 2.00 2.00 2.20 3.20],
    [2.60 1.60 0.40 0.00 0.40],
    },
    %'j'
    {
    [2.00 2.00 2.00 1.80 1.60 1.20 2.80],
    [2.40 1.60 0.00 -1.20 -1.60 0.00 1.20]
    },
    %'k'
    {
    [0.60 1.20 1.40 1.10 1.00 1.00 1.00 1.00 1.00 1.80 1.60 1.00 2.00],
    [0.60 1.10 1.40 2.00 0.40 1.00 0.60 0.00 0.40 0.90 0.60 0.40 0.00]
    },
    %'l'
    {
    [0.60 1.10 1.00 1.00 1.00 1.00 1.40],
    [0.80 1.40 2.00 1.30 0.90 0.00 0.40]
    },
    %'m'
    {
    [0.25 0.25 0.75 0.75 1.50 1.50 2.00],
    [2.00 0.50 1.50 0.75 1.80 0.20 0.50]
    },
    %'n'
    {
    [0.0 0.2 0.2 0.6 1.6 1.5 2.0],
    [1.6 1.4 0.0 1.4 2.0 1.0 0.0]
    },
    %'o'
    {
    [0.70 0.20 0.70 1.20 0.70 0.50 0.90 1.35],
    [1.00 0.50 0.00 0.50 1.00 0.70 0.60 0.70]
    },
    %'p'
    {
    [1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.20 2.20 1.80 1.00],
    [2.00 1.40 1.00 0.60 0.00 0.60 1.00 1.40 2.00 1.80 1.20 1.00]
    },
    %'q'
    {
    [1.00 0.50 0.70 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.10 1.30 1.00 1.10 1.40],
    [0.90 0.80 0.50 0.70 0.90 1.10 0.90 0.70 0.50 0.40 0.10 -0.05 0.30 0.50 0.45 0.50]
    },
    %'r'
    {
    [0.00 1.00 0.90 0.75 1.50 1.50 1.75 2.00],
    [1.00 1.75 2.00 1.75 1.50 0.50 0.00 0.50]
    },
    %'s'
    {
    [0.1 1.5 0.4 1.1 1.7 1.1 0.4],
    [1.3 1.9 1.4 1.0 0.5 0.0 0.1]
    },
    %'t'
    {
    [0.20 1.40 1.00 1.00 1.00 0.60 1.40 1.00 1.00 1.00 1.60],
    [0.80 1.40 2.00 1.40 1.00 1.00 1.00 1.00 0.60 0.00 0.40]
    },
    %'u'
    {
    [0.00 0.25 1.00 1.25 1.25 1.50 2.00],
    [2.00 0.25 0.00 1.00 2.00 0.25 0.75]
    },
    %'v'
    {
    [0.00 0.60 1.20 1.00 0.90 1.00 1.40],
    [1.00 0.00 0.80 1.00 0.80 0.70 0.60]
    },
    %'w'
    {
    [0.0 0.5 1.0 1.5 2.0 1.7 2.2],
    [2.0 0.1 1.1 0.1 2.0 1.5 1.5] 
    },
    %'x'
    {
    [0.0 0.7 0.9 0.0 2.0 1.2 1.3 2.0],
    [1.6 1.9 1.0 0.0 2.0 1.0 0.1 0.2]
    },
    %'y'
    {
    [0.00 0.60 0.70 0.80 1.20 1.30 1.20 1.16 -0.10 1.60 2.00],
    [1.60 2.00 1.60 1.00 1.20 2.00 1.20 0.00 0.20 0.60 0.60]
    },
    %'z'
    {
    [0.10 0.20 1.50 0.45 0.00 0.45 1.00 1.50],
    [0.70 1.00 1.00 0.00 0.00 0.40 0.00 0.10]
    },
    %'A'   % Uppercase letters
    {
    [0.2 0.4 1.6 3.0 4.0 4.0 3.8 1.8 1.0],
    [0.8 0.0 1.0 3.2 4.0 0.0 1.8 2.6 2.0]
    },
    %'B'
    {
    [1.0 0.0 0.6 2.0 3.2 2.0 2.0 3.2 1.0 1.0 4.0],
    [4.0 0.0 2.0 3.6 2.8 2.0 2.0 0.8 0.0 0.4 0.0]
    },
    %'C'
    {
    [3.6 3.6 2.0 0.0 0.0 2.0 4.0]
    [2.8 4.0 3.6 2.0 0.0 0.0 1.2]
    },
    %'D'
    {
    [1.0 0.0 0.2 3.0 4.0 1.6 1.2 4.0],
    [4.0 0.0 3.0 4.0 2.0 0.0 0.4 0.0]
    },
    %'E'
    {
    [3.00 2.00 0.50 2.00 0.00 2.00 4.00],
    [3.50 4.00 3.00 2.00 0.50 0.00 1.00]
    },
    %'F'
    {
    [1.00 2.00 3.33 4.00 3.33 2.00 1.66 1.00 1.66 2.33 1.66  1.33  0.00  0.66],
    [2.00 2.00 2.50 3.00 4.00 2.00 0.50 0.50 0.50 0.50 0.50 -2.00 -2.00 -1.00]
    },
    %'G'
    {
    [3.60 2.40 1.60 2.40 3.40 3.60 4.00 3.60 4.00 3.60 3.40 3.20  3.00  2.00  0.80  2.00 4.00],
    [3.40 4.00 2.20 1.00 2.20 3.40 4.00 3.40 4.00 3.40 2.20 1.00 -1.20 -2.00 -1.20 -0.80 0.10]
    },
    %'H'
    {
    [0.75 1.25 1.25 1.00 1.25 1.25 1.25 2.50 3.25 2.50 3.25 4.00],
    [3.20 4.00 2.00 2.00 2.00 0.00 2.00 2.00 4.00 2.00 0.00 0.80]
    },
    %'I'
    {
    [2.00 1.00 1.00 1.00 1.00 0.00],
    [4.00 3.20 2.00 1.20 0.60 0.00]
    },
    %'J'
    {
    [0.00 2.00 4.00 3.20 2.80 2.80 2.80 2.60 0.00 4.00],
    [3.60 3.60 3.80 4.00 3.60 2.80 2.00 0.00 0.20 1.40]
    },
    %'K'
    {
    [0.00 1.20 1.20 1.20 1.00 0.80 1.00 1.20 2.00 2.80 4.00 2.80 2.00 2.80 3.60 4.00],
    [2.80 4.00 2.80 1.20 0.00 0.40 0.00 1.20 1.40 2.00 4.00 2.00 1.40 0.80 0.00 0.40]
    },
    %'L'
    {
    [0.80 0.80 0.80 0.80 0.40 0.00 0.40 2.60 4.00],
    [4.00 2.00 1.00 0.20 0.00 0.20 0.40 0.00 0.40]
    },
    %'M'
    {
    [0.00 1.50 1.50 3.50 2.50 4.00],
    [0.00 3.60 1.00 4.00 1.00 1.50]
    },
    %'N'
    {
    [0.0 0.6 1.2 2.0 2.8 4.0],
    [0.0 2.0 3.5 0.0 2.0 4.0]
    },
    %'O'
    {
    [2.80 0.80 2.80 4.80 2.80 2.00 3.60 5.40],
    [4.00 2.00 0.00 2.00 4.00 2.80 2.40 2.80]
    },
    %'P'
    {
    [2.00 2.00 2.00 2.00 2.00 2.00 2.00 2.00 2.40 4.40 3.60 2.00],
    [4.00 2.80 2.00 1.20 0.00 1.20 2.00 2.80 4.00 3.60 2.40 2.00]
    },
    %'Q'
    {
    [6.00 5.20 3.60 0.80 2.80 6.00 3.60],
    [1.20 0.80 1.60 2.80 6.00 4.00 1.60]
    },
    %'R'
    {
    [0.00 0.00 0.80 4.00 6.80 3.20 3.20 4.80 8.00],
    [8.00 -4.00 3.20 7.20 4.80 -1.20 0.00 -6.00 -8.00]
    },
    %'S'
    {
    [3.6 3.0 1.6 2.0 3.4 2.0 0.8],
    [3.2 4.0 3.2 2.0 1.0 0.0 0.4]
    },
    %'T'
    {
    [1.60 2.00 4.00 6.00 4.80 4.00 4.00 4.00 4.00 4.00],
    [3.20 4.00 4.00 4.00 4.00 4.00 2.80 2.00 1.20 0.00]
    },
    %'U'
    {
    [0.00 1.00 1.00 2.50 2.50 3.00 3.50 4.00],
    [2.60 3.60 0.40 1.50 4.00 0.40 0.00 1.50]
    },
    %'V'
    {
    [0.00 2.40 4.80 4.00 3.60 4.00 5.60],
    [4.00 0.00 3.20 4.00 3.20 2.80 2.40]
    },
    %'W'
    {
    [0.0 1.0 2.0 3.0 4.0 3.4 4.4],
    [4.0 0.2 2.2 0.2 4.0 3.0 3.0]
    },
    %'X'
    {
    [0.0 1.4 1.8 0.0 4.0 2.4 2.6 4.0],
    [3.2 3.8 2.0 0.0 4.0 2.0 0.2 0.4]
    },
    %'Y'
    {
    [0.00 1.20 1.40 1.60 2.40 2.60 2.40 2.32 -0.20 3.20 4.00],
    [3.20 4.00 3.20 2.00 2.40 4.00 2.40 0.00 0.40 1.20 1.20]
    },
    %'Z'
    {
    [0.40 0.80 6.00 1,80 0.00 1,80 4.00 6.00],
    [2.80 4.00 4.00 0.00 0.00 1.60 0.00 0.40]
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
