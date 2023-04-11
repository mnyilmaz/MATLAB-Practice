clc
clear all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 1                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = 6; % scalar

d2 = 0.5; % double

row = [1, 2, 3] % row vector
b = [3 4 5]
col = [6; 7; 8] % column vector

% using ; hides line while compiling, unvisible on command window

matrix = [1 2 3 ; 4 5 6]; % matrix

%    1   2   3    %
%    4   5   6    %

find = matrix(2,3) % equals to 3 not like c first is 1 not 0
find1 = matrix(1) % equals to 1 (1st index)
find2 = matrix(2) % equals to 4 (2nd index)
find3 = matrix(3) % equals to 2 (3rd index)
find4 = matrix(4) % equals to 5 (4th index)
find5 = matrix(5) % equals to 3 (5th index)
find6 = matrix(6) % equals to 6 (6th index)

% Example 1
new_matrix = [4 10 1; 8 1.2 9; 7.2 5 7]
find_9 = new_matrix(8)
find_alt_9 = new_matrix(2,3)

%%%% Special Matrix %%%%

% Zeros
z = zeros(400, 400); % forms a matrix 400x400 filled with zeros
new_z = zeros(10); % gives a matrix 10x10

figure,imshow(z) %-> shows matrix as figure - filled with black

% Ones
o = ones(400,400); % forms a matrix 400x400 filled with ones
figure,imshow(o) %-> shows matrix as figure - filled with white

% Eye
e = eye(20,5) % forms a diagonal matrix

% Example 2
ex_z = zeros(40,60);
ex_e = eye(20,5);

% Example 3
b = zeros(200); % black
w = ones(200); % white
comb = [b, w ; w b]; % output: [black white ; white black]
figure,imshow(comb)

% Example 4
diag = eye(400,200);
figure,imshow(diag);
