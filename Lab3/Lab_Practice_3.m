%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 3                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Example: Draw the matrix down below

%   0 1 0 1 0 1   %
%   1 0 1 0 1 0   %
%   0 1 0 1 0 1   %
%   1 0 1 0 1 0   %
%   0 1 0 1 0 1   %
%   1 0 1 0 1 0   %
%   0 1 0 1 0 1   %

a = [0 1; 1 0]
b = repmat(a,4,3)

% Example: Draw the concatanated matrix down below
        %A%                 %B%
%   1 0 0 0 0   %    %  0 0 0 0 1   %
%   0 1 0 0 0   %    %  0 0 0 1 0   %
%   0 0 1 0 0   %    %  0 0 1 0 0   %
%   0 0 0 1 0   %    %  0 1 0 0 0   %
%   0 0 0 0 1   %    %  1 0 0 0 0   %

A = eye(5,5)
B = A(end:-1:1,:)
C = [A,B]

% Example: Form a function that adds and subtracts two given matrices

x = [1 2; 3 4]
y = [5 6; 7 8]
[add, sub] = addandsub(x, y)

clc

% Matlab Inbuilt Math Functions

k = [12 8 3; 10 5 6; 4 2 9]
vec = k(:); %convert matrix into vector

% Max
mx = max(max(k)) % without double max it will display the row with the max number
mxvec = max(vec)
[m, i] = max(k) % m = max variable column, i = index values
col = max(k(:,2)) % get column's max value = 8
row = max(k(2,:)) % get row's max value
all = max(k,[],2) % get all the max values of the rows 12, 10, 9

% Min
mn = min(max(k)) % max = 12, 8, 9 and min of it is 8
col = min(k(:,1)) % get colum's min value (1st col)
all = min(k,[],2) % get all the min values of the rows 3, 5, 2

% Sort
s1 = sort(k) % sort column by column 
s2 = sort(k(:)) % sort as vector

clc

% Real Img