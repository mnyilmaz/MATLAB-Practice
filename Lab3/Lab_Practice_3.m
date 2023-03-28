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
mat = [1+i, 1+2i, 1+3i]
rl = real(mat)
img = imag(mat)

clc

% Abs
a = abs(-5) % equals 5
b = abs(3+6i) % equals 6.7082

clc

% Round
r = round(7.6) % equals 8
rr = round(4576.168391274) % equals 4576

clc

% Log
L = log(exp(1)) %ln(e^1)
L1 = log10(20) % equals 1.3010 (ten based log)

clc

% Length
A = [1 2 4 5; 45 12 6 5]
len = length(A) % length of max dimension (row or col which one is greater)

clc

% Triu and Tril
A = [1 2 3; 4 5 6; 7 8 9]
tu = triu(A) % upper triangle
tl = tril(A) % lower triangle

clc

% Plotting
x = [0 1 2 3 4];
y =[3 2 4 8 1]; % 3 at 0; 2 at 1; 4 at 2; 8 at 3; 1 at 4
%plot(x,y) % draws a plot according to data's (continious signal)
%title('Plotting') % naming
%xlabel('X-Label'), ylabel('Y-Label')
%stem(x,y) % discrete time signal

clc

% Magic Plotting
mg = magic(4); % sum of rows and columns are equal
%figure, plot(mg)

clc

% Example: Plot the signal with plot and stem
% y = x^2 + x^3
% x = [0,5]

x = [0:0.1:5] % between 0 and 5 increase with 0.1
y = x.^3 + x.^2
%plot(x,y)
%title('Plot Example') % naming
%xlabel('X-Label'), ylabel('Y-Label')
%stem(x,y)

% Example: 2D plotting, plot sin(x) and cos(x) over [0, 2pi] with different colors
x = [0:0.01:2*pi]
%%hold on;
%%plot(sin(x),'*b')
%%plot(cos(x),'g:')
%%title('Sin-Cos'), xlabel('X-Label'), ylabel('Y-Label')
%%legend('Y data','Zdata');
%%hold off;

% otherwise
figure,plot(x,sin(x),x,cos(x));
title('Sin-Cos'), xlabel('X-Label'), ylabel('Y-Label'),
legend('Y data','Zdata');
grid on;
