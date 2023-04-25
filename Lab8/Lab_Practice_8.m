%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 8                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Sampling Rate Example 1
% Set time vector and frequency for "continious-time" sinusoid

tMax = 5;
t = 0:0.0001:tMax;
f = 1;

% Set sampling rate for sampled sinusoid
fs = 10 % sampling frequency
tSamp = 0:1/fs:tMax;

% Form "continious" and sampled signals
xCont = cos(2*pi*f*t);
xSamp = cos(2*pi*f*tSamp)

figure;
hold on;
set(gca, 'fontsize', 14)
plot(t, xCont, 'b', 'linewidth', 2);
stem(tSamp, xSamp, 'ko', 'linewidth', 2);
hold off;


%% Sampling Rate Example 2
f = 60;
tMin = -0.05;
tMax = 0.05;
t = linespace(tMin, tMax, 400);
x_c = cos(2*pi*f*t);
figure, plot(t,x_c), title('Cosine signal in time domain'), xlabel('t (seconds)');

f1 = linspace(0, 60, 400);
X1 =
figure, plot(f1, magX);

% Sampling with 800 Hz
T = 1/800;
nMin = ceil(tMin/T);
nMax = floor(tMax/T);
n = nMin:nMax;
X2 = cos(2*pi*)
plot(t, x_c);
hold on;


%% Fast Fourier Transform
% FFT manages to reduce the complexity of computing the DFT

% Example 1: Plot the cosine wvae with three different frequencies and sampling frequency of fs = 1000 Hz
fs = 1000;
T = 1/fs;
StopTime = 1;
t = 0:T:StopTime-T;
x1 = cos(2*pi*5*t);
x2 = cos(2*pi*10*t);
x3 = cos(2*pi*15*t);

figure;
subplot(3,1,1),plot(t,x1, 'b--'), title('50 Hz');
subplot(3,1,2),plot(t,x2, 'r--'), title('100 Hz');
subplot(3,1,3),plot(t,x3, 'g--'), title('150 Hz');

% Example 2: Find the sum of sinusoidal signals at 50, 100 and 150 frequencies
fs = 1000;
T = 1/fs;
StopTime = 1;
t = 0:T:StopTime-T;
y = sin(2*pi*5*t) + 2*cos(2*pi*10*t) + 3*sin(2*pi*15*t);
y1 = fft(y); % fast fourier transform of function y

figure;
subplot(2,1,1),plot(t,y, 'b'), title('Sum of sinusoidal signals at 5, 10 and 15 frequencies');
subplot(2,1,2),plot(t,y1, 'b'), title('FFT of Y');

% Example 3: Plot the given signal and add random noise
n = [0:127];
x = sin((2*pi*n)/20);
noisySignal = x + rand(size(n));
x1 = abs(fft(noisySignal));
x2 = x1;
x2(1:4) = 0;
x2(14:116) = 0;
x3 = ifft(x2);

figure,
subplot(4,1,1),plot(n,x, 'b'), title('Original Signal');
subplot(4,1,2),plot(n,x1, 'r'), title('Noisy Signal');
subplot(4,1,3),plot(n,x2, 'b'), title('Filtered Signal');
subplot(4,1,4),plot(n,x3, 'r'), title('IFFT of Filtered Signal');



