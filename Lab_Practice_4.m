%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 4                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
x = [0:0.01:2*pi];
x = linspace(0,2*pi,250); % get 250 dots between 0 and 2pi
%%hold on;  % to hold figure
%%plot(sin(x),'b--') % blue lines
%%plot(cos(x),'r--') % red lines
%%title('Sin-Cos'), xlabel('X-Label'), ylabel('Y-Label')
%%legend('Y data','Zdata');
%%hold off; % to release hold

% otherwise
%%figure,plot(x,sin(x),x,cos(x));
%%title('Sin-Cos'), xlabel('X-Label'), ylabel('Y-Label'),
%%legend('Y data','Z data');
%%grid on; % forms grid behind the plot

clc

% Example: 2D plotting with linspace
t1 = linspace(0,1,400);
t2 = linspace(1,6,400);
y1 = t1;
y2 = 1./t2; % 1/t2
t = [t1,t2];
y = [y1,y2];
%plot(t,y)
%%title('2D Plot'), xlabel('T-Label'), ylabel('Y-Label');

clc

% Subplot -> subplot(M,N,P)
% M: rows
% N: colstyle
% P: index


x1 = linspace(-2*pi,2*pi,20);
s = sin(x);
c = cos(x);
%%figure,
%%subplot(2,1,1),plot(x,s, 'b--');
%%title('Sin Graph'), xlabel('X-Label'), ylabel('Sin-Label');
%%subplot(2,1,2),plot(x,c, 'r--');
%%title('Cos Graph'), xlabel('X-Label'), ylabel('Cos-Label');

clc

%% Example: Parabol function
x = [-100:0.1:100]
p = x.^2;
%%plot(x,p, 'r--')
%%title("Parabol Graph")

clc

% Example: Exponential function
x = [-44:0.1:44]
e = exp(x)
%%plot(x,e, 'b--')
%%title("Exponential Graph")
%%grid on;

clc

% Example: Draw the garph of e^x and cosx with the required intervals
x1 = [-9:1:0];
x2 = [0:1:9];
y1 = exp(x1);
y2 = cos(x2);
x = [x1, x2];
y = [y1, y2];
%%plot(x,y, 'b--'), title("Piecewise Function")
%%grid on;

clc

% Example: x = [-2pi, 2pi]; y = sin(x) ; z = e^2sin(x)
x = linspace(-2*pi,2*pi,100);
y = sin(x);
s = 2*sin(x);
z = exp(s)
%%plot(x,y,x,z), title("Double Graph");
%%grid on;

clc

% Question 1: Discrete func
x1 = -6:1
x2 = 2:3
x3 = 4:8
y1 = zeros(size(x1)); %means 0
y2 = 2*x2 - 4;
y3 = 4 - x3;
x = [x1, x2, x3];
y = [y1, y2, y3];
%%stem(x,y)
%%stem(x,y, 'fill')
%%grid on;

clc

% Question 2
x1 = linspace(-8, -4, 1);
x2 = linspace(-4, 3, 1);
x3 = linspace(3, 8, 1);
t1 = x1;
t2 = x2.+ 2;
t3 = x3.- 2;
x = [x1, x2, x3];
t = [t1, t2, t3];
%%plot(x,t, 'b--'), title("Question 2")
%%grid on;

% Question 3
t = [0:pi/50:4*pi];
x = -sin(t) -sin(t/2);
y = cos(t) - cos(t/2);
z = -cos(t) -cos(t/2);
signal2plot(y,z,x);

figure,
%%subplot(1,3,1),plot(t,x, 'b--');
title('Graph 1')
%%subplot(1,3,2),plot(t,y, 'r--');
title('Graph 2');
%%subplot(1,3,3),plot(t,z, 'o--');
title('Graph 3');

% Sine Wave
fs = 512;      % Sampling frequency
dt = 1/fs;    % Seconds per sample
StopTime = 1; %0.25 seconds
t = (0:dt:StopTime-dt); % seconds
F = 10; %5,2 Sine wave frequency Nyquist theorem says fs must be at least F*2
data = sin(2*pi*F*t);
%%plot(data);

clc

% Summarize and Subtratction
% Screenshot taken

% Time Shifting
x = [0,1,2,3,4,5,6,7,8,9]
y = [3,2,7,1,4,0,6,9,5,8]
%%plot(-x,y)
%%plot(x+3,y);

clc

% D. Delta Function
[x, n] = delta(0,-5,5);
%%stem(n,x);

% Birim Basamak Fonk.
[x, n] = unit(0,-5,5);
%%stem(n,x);

% Example of Signal Addition 2δ[n+2]-δ[n-4]
d1 = delta(2, -5, 5);
d2 = delta(-4, -5, 5);
x = 2.*d1 - d2;
stem(x); title("2δ[n+2]-δ[n-4]"), xlabel("X"), ylabel("Y")
grid on;
