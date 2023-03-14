%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 2                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Addition and Subtraction

matrix_1 = [1,2,3; 4,5,6; 7,8,9]
matrix_2 = [1 2 3; 4 5 6; 7 8 9]
matrix_3 = [1,2,3; 4,5,6]
% sum = matrix_1 + matrix_3 -> due to lack of column at matrix_3 summarize is unavailable

sum_1_2 = matrix_1 + matrix_2
sum_10 = matrix_1 + 10 % adds 10 to every element
sub_10 = matrix_2 - 10 % subtratcs 10 from every element

% Transpose
T = [1,2,3,4 ; 5,6,7,8 ; 9,10,11,12]
T_res = T.'

%L = [1+i 2 +2i; 1+i 2+2i]
%L1 = L.'

%L1 = [1+i 2 +2i; 1+i 2+2i]
%L2 = L.'

% Multiplication

a = [1,5]
b = [3 2] % b' --> (2x1)
res = a.*b % matrix
res_1 = b.*a % col and row counts must be equal, matrix dimensions must agree
res_2 = a*b' % 13 --> 1x3 + 2x5 = 13

% Dot Multiplication
dot1 = [1,2;3,4]
dot2 = [1, 1/2; 1/3,1/4]
d_res = dot1.*dot2

% Matrix and Vector Multiplication
mv1 = [1 2 3; 4 5 6; 7 8 9]
mv2 = [10; 2; 5]
mv_res = mv1*mv2 % [10*1 + 2*2 + 5*3][10*4 + 2*5 + 5*6][10*7 + 2*8 + 5*9]

% Matrix and Matrix Multiplication

m1 = [1 2 3; 4 5 6; 7 8 9]
m2 = [1,2,3,4 ; 5,6,7,8 ; 9,10,11,12]
m_res = m1*m2 % working
%m_res1 = m2*m1  % not working due to matrix error

% Concatenation
a = [1 2; 3 4]
b = [a , a]
c = [a ; a]
d = [a.*2 a+5; b]

%  2   4   6   7  %
%  6   8   8   9  %
%  1   2   1   2  %
%  3   4   3   4  %
clc

% Repmat
x = [7 8; 9 10]
xr = repmat(x, 1, 2) % row = 1; col = 2 (one x by the row and additional 1 column)
xc = repmat(x, 3, 1)

% Example 1
z = zeros(5);
o = ones(5);
x = [z o;o z]
r = repmat(x, 2, 2) % 4x4 black and white
%imshow(x) % quite small image as chess table
imshow(r)
