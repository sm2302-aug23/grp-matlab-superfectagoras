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
    [1.8 1.0 0.1 0.0 1.2 1.95 1.8 1.8 2.0], % done
    [1.9 2.0 1.0 0.0 0.1 1.50 1.5 0.4 0.1]
    },
    %'b'
    {
    [0.0 1.4 0.8 0.6 1.0 1.6 0.9 0.9 2.0],
    [1.0 2.0 1.7 0.0 0.8 0.8 0.0 0.1 0.0]
    },
    %'c'
    {
    [0.90 0.90 0.50 0.00 0.00 0.50 1.00],
    [0.70 1.00 0.90 0.50 0.00 0.00 0.30]
    },
    %'d'
    {
    [1.4 0.5 0.1 1.6 2.0 1.8 1.6 1.7 2.0],
    [0.9 1.0 0.0 0.5 2.0 2.0 0.7 0.0 0.1]
    },
    %'e'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'f'
    {
    [-0.10 0.40 0.20 0.00 0.00 0.20 0.50 0.00 0.60],
    [0.40 0.50 1.00 0.50 0.00 -0.30 0.00 0.40 0.30]
    },
    %'g'
    {
    [0.90 0.60 0.40 0.60 0.85 0.90 1.05 0.90 0.85 0.80 0.75 0.50 0.20 0.50 1.20], % done
    [0.90 1.00 0.70 0.50 0.70 0.90 1.00 0.90 0.70 0.50 0.20 0.00 0.20 0.30 0.35]
    },
    %'h'
    {
    [0.10 0.60 0.50 0.50 0.70 1.10 1.30 1.50],
    [0.40 1.00 1.30 0.00 0.50 0.10 0.00 0.10]
    },
    %'i'
    {
    [0.50 0.50 0.50 0.55 0.80], % done but dot i left
    [0.65 0.40 0.10 0.00 0.10]
    },
    %'j'
    {
    [0.50 0.50 0.50 0.45 0.40 0.30 0.70], % done but dot j left
    [0.60 0.40 0.00 -0.30 -0.40 0.00 0.30]
    },
    %'k'
    {
    [0.30 0.60 0.70 0.55 0.50 0.50 0.50 0.50 0.50 0.90 0.80 0.50 1.00], % done
    [0.30 0.55 0.70 1.00 0.20 0.50 0.30 0.00 0.20 0.45 0.30 0.20 0.00]
    },
    %'l'
    {
    [0.30 0.55 0.50 0.50 0.50 0.50 0.70],
    [0.40 0.70 1.00 0.65 0.45 0.00 0.20]
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
    [0.50 0.50 0.50 0.50 0.50 0.50 0.50 0.50 0.60 1.10 0.90 0.50], % done
    [1.00 0.70 0.50 0.30 0.00 0.30 0.50 0.70 1.00 0.90 0.60 0.50]
    },
    %'q'
    {
    [1.00 0.50 0.70 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.10 1.30 1.00 1.10 1.40], % done
    [0.90 0.80 0.50 0.70 0.90 1.10 0.90 0.70 0.50 0.40 0.10 -0.05 0.30 0.50 0.45 0.50]
    },
    %'r'
    {
    [0.00 1.00 0.90 0.75 1.50 1.50 1.75 2.00],
    [1.00 1.75 2.00 1.75 1.50 0.50 0.00 0.50]
    },
    %'s'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'t'
    {
    [0.10 0.70 0.50 0.50 0.50 0.30 0.70 0.50 0.50 0.50 0.80], % done
    [0.40 0.70 1.00 0.70 0.50 0.50 0.50 0.50 0.30 0.00 0.20]
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
    [2.0 0.1 1.1 0.1 2.0 1.5 1.5] % using rescale 
    },
    %'x'
    {
    [0.0 0.7 0.9 0.0 2.0 1.2 1.3 2.0],
    [1.6 1.9 1.0 0.0 2.0 1.0 0.1 0.2] % using rescale
    },
    %'y'
    {
    [0.00 0.30 0.35 0.40 0.60 0.65 0.60 0.58 -0.05 0.80 1.00],
    [0.80 1.00 0.80 0.50 0.60 1.00 0.60 0.00 0.10 0.30 0.30]
    },
    %'z'
    {
    [0.10 0.20 1.50 0.45 0.00 0.45 1.00 1.50],
    [0.70 1.00 1.00 0.00 0.00 0.40 0.00 0.10]
    },
    %'A'   % Uppercase letters
    {
    [0.2 0.4 1.6 3.0 4.0 4.0 3.8 1.8 1.0],
    [0.8 0.0 1.0 3.2 4.0 0.0 1.8 2.6 2.0] % hope i plot them right 
    },
    %'B'
    {
    [1.0 0.0 0.6 2.0 3.2 2.0 2.0 3.2 1.0 1.0 4.0],
    [4.0 0.0 2.0 3.6 2.8 2.0 2.0 0.8 0.0 0.4 0.0]
    },
    %'C'
    {
    [0.90 0.90 0.50 0.00 0.00 0.50 1.00],
    [0.70 1.00 0.90 0.50 0.00 0.00 0.30]
    },
    %'D'
    {
    [1.0 0.0 0.2 3.0 4.0 1.6 1.2 4.0],
    [4.0 0.0 3.0 4.0 2.0 0.0 0.4 0.0]
    },
    %'E'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'F'
    {
    [0.30 0.60 1.00 1.20 1.00 0.60 0.60 0.50 0.30 0.50 0.70 0.50 0.40 0.00 0.20],
    [0.80 0.80 0.90 1.00 1.20 0.90 0.80 0.50 0.50 0.50 0.50 0.50 0.00 0.00 0.20]
    },
    %'G'
    {
    [0.90 0.60 0.40 0.60 0.85 0.90 1.05 0.90 0.85 0.80 0.75 0.50 0.20 0.50 1.20], % done - rescalex2 (follow sister's)
    [0.90 1.00 0.70 0.50 0.70 0.90 1.00 0.90 0.70 0.50 0.20 0.00 0.20 0.30 0.35]
    },
    %'H'
    {
    [0.30 0.50 0.50 0.40 0.50 0.50 0.50 1.00 1.30 1.00 1.50 1.60],
    [0.80 1.00 0.50 0.50 0.50 0.00 0.50 0.50 1.00 0.50 0.00 0.20]
    },
    %'I'
    {
    [0.52 0.50 0.50 0.50 0.50 0.45],
    [1.00 0.70 0.50 0.30 0.00 0.05]
    },
    %'J'
    {
    [0.00 0.50 0.60 0.60 0.50 0.50 0.50 0.45 0.40 0.30 0.70],
    [0.30 0.60 0.70 1.00 0.80 0.40 0.00 -0.30 -0.40 0.00 0.30]
    },
    %'K'
    {
    [0.20 0.50 0.50 0.50 0.45 0.40 0.45 0.50 0.70 0.90 1.20 0.90 0.70 0.90 1.10 1.20], % done
    [0.70 1.00 0.70 0.30 0.00 0.10 0.00 0.30 0.35 0.50 1.00 0.50 0.35 0.20 0.00 0.10]
    },
    %'L'
    {
    [0.50 0.50 0.50 0.50 0.20 0.00 0.20 1.00 1.40], % done
    [1.30 1.00 0.50 0.10 0.00 0.10 0.20 0.00 0.20]
    },
    %'M'
    {
    [0.00 1.00 1.00 2.50 2.50 3.00 3.50 4.00],
    [2.60 3.60 0.40 1.50 4.00 0.40 0.00 1.50]
    },
    %'N'
    {
    [0.0 0.6 1.2 2.0 2.8 4.0],
    [0.0 2.0 3.5 0.0 2.0 4.0]
    },
    %'O'
    {
    [0.70 0.20 0.70 1.20 0.70 0.50 0.90 1.35], %done - rescalex2
    [1.00 0.50 0.00 0.50 1.00 0.70 0.60 0.70]
    },
    %'P'
    {
    [0.50 0.50 0.50 0.50 0.50 0.50 0.50 0.50 0.60 1.10 0.90 0.50], % done - rescalex2 (follow sister's)
    [1.00 0.70 0.50 0.30 0.00 0.30 0.50 0.70 1.00 0.90 0.60 0.50]
    },
    %'Q'
    {
    [1.50 1.30 0.90 0.20 0.70 1.50 0.90], % done
    [0.30 0.20 0.40 0.70 1.50 1.00 0.40]
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
    [0.40 0.50 1.00 1.50 1.20 1.00 1.00 1.00 1.00 1.00], % done
    [0.80 1.00 1.00 1.00 1.00 1.00 0.70 0.50 0.30 0.00]
    },
    %'U'
    {
    [1.50 0.50 0.00 0.50 1.50 1.75 1.50 1.75 2.50],
    [1.75 1.50 0.50 0.00 0.25 0.75 1.75 0.75 0.00]
    },
    %'V'
    {
    [0.00 0.60 1.20 1.00 0.90 1.00 1.40], % done - rescalex2
    [1.00 0.00 0.80 1.00 0.80 0.70 0.60]
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
    [0.00 0.30 0.35 0.40 0.60 0.65 0.60 0.58 -0.05 0.80 1.00], % done - rescalex2
    [0.80 1.00 0.80 0.50 0.60 1.00 0.60 0.00 0.10 0.30 0.30]
    },
    %'Z'
    {
    [0.10 0.20 1.50 0.45 0.00 0.45 1.00 1.50],
    [0.70 1.00 1.00 0.00 0.00 0.40 0.00 0.10]
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
