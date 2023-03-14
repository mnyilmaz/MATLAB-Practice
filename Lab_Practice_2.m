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
%imshow(r)

% Extraction a Sub-Matrix
R = 1:2:10 % start : increment : end
R_rev = 10:-2:1 % start : increment : end

X = [1,2,3; 4,5,6; 7,8,9]
X1 = X(1,1:3) % get X's 1st row and columns 1 to 3
X2 = X(1:2,2:3) % row 1 to 2; column 2 to 3
X3 = X(1:2,:) % row 1 to 2; all columns
X4 = X(3,1:2) % 3rd row; columns 1 to 2
X5 = X(1:3,2)
X6 = X(2:3, 1:3)
X7 = X(end,end) % X(3,3)
X8 = X(1, 3:-1:1) % get first row reversed
X9 = X(2:3, 3:-1:1) % get last 2 rows reversed
X10 = X(3:-2:1,1) % rows reversed
X11 = X(1:3,end:-1:1)

V = X(:) % [1 x end] vector matrix

% Matrix Division
A = [1 2; 1 3]
B = [2 2; 2 2]
C = A./B
D = A/B
E = A.^2
F = A.^3
G = A.^(1/2)

S = [9 4; 16 64]
S = sqrt(S)

clc
clear all
% Logical Operators | Boolean Results 1 - 0
and =  1&1
or = 1|0
less = 5 < 10
less_eq = 5 <= 10
i = 5 % assignment
if_eq = i == 6 % is equal
if_n_eq = i ~= 5 % is not equal to

% Example 2
j = 4;

if j == 4
  j = 27
else
    j * 11
end

% Functions - function file must be in the current directory
func = subof2(10,5) % 10 - 5  = 5
sc = 4;
vec = [1:4:44]
[result] = mult(sc, vec)
