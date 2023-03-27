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
%[add, sub] = addandsub(x, y)
