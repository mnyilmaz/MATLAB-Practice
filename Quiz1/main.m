%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 Biomedical Signal Processing Quiz 1                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question 1:
%% A. Sort
id = [2, 0, 2, 1, 2, 3, 1, 0, 1, 5]
vec = id(:);
sorted = sort(id)

%% B. Find Min
mn = min(max(id))
mnvec = min(vec)

%% C. Find Max
mx = max(max(id))
mxvec = max(vec)

%% D. Plot Cont. Signal
y =[1:10];
plot(y,id), title('Continious'); xlabel("id"); ylabel("Y");

%% E. Plot Disc. Signal
stem(y,id), title('Discrete'); xlabel("id"); ylabel("Y");

%% F. Show D and E as Sub

figure,
subplot(2,1,1), plot(y,id), title('Continious'); xlabel("id"); ylabel("Y");
subplot(2,1,2), stem(y,id), title('Discrete'); xlabel("id"); ylabel("Y");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question 2:
% y = cos(x) + sin(x) + x.^1/2
% x one by one -100, 100
x = [-100:100];
y = cos(x) + sin(x) + x.^(1/2);
figure,
plot(x,y), title('Question 2'); xlabel("X"); ylabel("Y");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question 3:
%% sin -> -20, 5
%% t^2 + 6t + 8 -> -5,5
%% -2t + 13 -> 5 ,8

t1 = linspace(-20,5,1);
t2 = linspace(-5,5,1);
t3 = linspace(5,8,1);

x1 = sin(t1);
x2 = t2.^2 .+ 6.*t2 .+ 8;
x3 = -2.*t3 .+ 13;
x = [x1, x2, x3];
t = [t1, t2, t3];

figure,
plot(x,t), title('Question 3'), xlabel("X"), ylabel("T");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question 4:
% x[n] = 0.9n(u[n] - (1.5)delta[n-11]) between 0 and 50 included

n = [0:50];
x1 = 0.9.*n.*(unit(0,0,50) - 1.5*delta(-11,0, 50));
stem(n, x1), title('Question 4'); xlabel("x[n]"); ylabel("n");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question 5:
% Plot the sine wave
t = linspace(0,2,0.1)
fs = 250;                % Sampling frequency
dt = 1/fs;               % Seconds per sample
StopTime = 1;            % 0.25 seconds
t1 = (0:dt:StopTime-dt); % seconds
F = 3;                   % 5,2 Sine wave frequency Nyquist theorem says fs must be at least F*2
data = sin(2*pi*F*t);
