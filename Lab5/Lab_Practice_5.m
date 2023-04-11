%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 5                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Example: Delta sequence
n = [0:10];
x = (0.9).^n;
%stem(n,x,'p','Filled')

% Example: Complex-valued exponential sequence
n = [0:10];
x = exp((2+3j)*n);
%stem(n,x,'g','Filled')

clc

%% Signal Addition
% Example: X[n] = 2δ[n + 2] − δ[n − 4], −5 ≤ n ≤ 5
n = [-5:5];
x = 2*delta(2,-5,5) - delta(-4,-5,5);
%figure
%stem(n,x);
%title("X[n] = 2δ[n + 2] − δ[n − 4], −5 ≤ n ≤ 5"); xlabel("X"); ylabel("Y");

% Example: x[n]= n[u[n]−u[n−10]]+10e−0.3(n−10)(u[n−10]−u[n−20]) 0 ≤ n ≤ 20.
n = [0:20];
x1 = n.*(unit(0,0,20) - unit(-10,0,20));
x2 = 10*exp(-0.3*(n-10)).*(unit(-10,0,20) - unit(-20,0,20));
x = x1 + x2;
%subplot(3,1,1); stem(n,x1); title('x1');
%subplot(3,1,2); stem(n,x2); title('x2');
%subplot(3,1,3); stem(n,x); title('x[n]= n[u[n]−u[n−10]]+10e−0.3(n−10)(u[n−10]−u[n−20])');
%xlabel("n"); ylabel("x(n)");

clc

%% Signal Shifting
n = [0:10];
x = (0.9).^n;
%figure,
%subplot(3,1,1), stem(n,x,'p','Filled');
%axis([-15 15 0 1]), title('x[n]');

%[x1,n1] = sigshift(x,n,-5);
%subplot(3,1,2), stem(n1,x1,'p','filled');
%axis([-15 15 0 1]), title('x[n-5]');

%[x2,n2] = sigshift(x,n,5);
%subplot(3,1,3), stem(n2,x2,'p','filled');
%axis([-15 15 0 1]), title('x[n+5]');

clc

%% Example: x(n) = {1, 2, 3 ,4, 5, 6, 7, 6, 5, 4, 3, 2, 1} and δ[n] = 3 | x1(n) = 2*x(n − 5) − 3*x(n + 4)
n = [-2:10];
x = [1, 2, 3 ,4, 5, 6, 7, 6, 5, 4, 3, 2, 1];

%figure,
%subplot(2,2,1);
%stem(n,x), title('x[n]');
[x_1,n_1] = sigshift(x,n,5);

%subplot(2,2,2);
%stem(n_1,x_1), title('x[n − 5]');
[x_2,n_2] = sigshift(x,n,-4);

%subplot(2,2,3);
%stem(n_2,x_2),  title('x[n + 4]');
[x1,n1] = sigadd(2*x_1,n_1, -3*x_2,n_2);

%subplot(2,2,4);
%stem(n1,x1), title(' x1(n) = 2x[n − 5] − 3x[n + 4]');

clc

%% Sigfold Function

n = [0:10];
x = (0.9).^n;

%figure,
%subplot(2,1,1);
%stem(n, x, 'p', 'Filled'), title('x[n]');
%[z,y] = sigfold(x,n);

%subplot(2,1,2);
%stem(y,z,'p','Filled'), title('x[-n]');

%% Drawing Square Wave from Sine Waves
% x(t) = sin(2πt) + 1/3(sin(6πt)) + 1/5(sin10πt) = sin(2πt) + 1/2(sin4πt) + 1/3(sin(6πt));  0 <= t <= 1

%% Approach 1:
%t = 0:0.01:1; N = length(t);
%xt = zeros(1,N);
%  for n = 1:N
%    temp = 0;
%    for k = 1:2:5
%      temp = temp + (1/k)*sin(2*pi*k*t(n));
%    end
%  xt(n)= temp;
%end
%figure, plot(t,xt);

%% Approach 2:
%t = 0:0.01:1;
%xt = zeros(1,length(t));
%for k = 1:2:5
%  xt = xt + (1/k)*sin(2*pi*k*t);
%end
%figure, plot(t,xt);

%% Approach 2:
%t = 0:0.01:1; k = 1:2:5;
%xt = (1./k)*sin(2*pi*k'*t);
%figure, plot(t,xt),title('Sin Function')

clc

% Example: x2[n] = x[3 − n] + x[n]*x[n − 2]
n = [-2:10];
x = [1, 2, 3, 4, 5, 6, 7, 6, 5, 4, 3, 2, 1];

figure,
subplot(3,1,1);
stem(n,x), title('x[n]');

[x1,n1] = sigfold(x,n);
subplot(3,1,2);
stem(n1,x1), title('x[-n]');

[x2,n2] = sigshift(x1,n1,-3);
subplot(3,1,3);
stem(n2,x2),  title('x[-n + 3]');

figure,
subplot(3,1,1);
stem(n,x), title('x[n]');

[x3,n3] = sigshift(x,n,-2);
subplot(3,1,2);
stem(n3,x3), title('x[n − 2]');

[x4,n4] = sigmult(x,n,x3,n3);
subplot(3,1,3);
stem(n4,x4),  title('x[n]*x[n − 2]');

figure,
[x5,n5] = sigadd(x2,n2,x4,n4);
stem(n5,x5), title('x2[n] = x[3 − n] + x[n]*x[n − 2]');






