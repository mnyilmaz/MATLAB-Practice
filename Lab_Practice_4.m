%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 4                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
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

x = linspace(-pi,pi,20);
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
plot(x,e, 'b--')
title("Exponential Graph")
grid on;

% Example
