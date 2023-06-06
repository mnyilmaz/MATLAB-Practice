%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 Biomedical Signal Processing Quiz 2                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question 1: Obtain x1(n) = x(n)*e^0.5*n + x*(2-n)*cos(0.01*pi*n) 
%% consider x(n) = {1 (n=0),2,3,4,5,6,7,6,5,4,3,2,1} and plot x1. 

x = [1, 2, 3, 4, 5, 6, 7, 6, 5, 4, 3, 2, 1];
x1 = x*exp(0.5*n) + x*(2 - n)*cos(0.01*pi*n);

figure,
stem(n, x1);
xlabel('n'); ylabel('x1(n)'); title('Plot of x1(n)');

#############################################################################################################

%% Question 2: x(n) = y(n) - 0.6*y(n-1) determine
%% a. H(z)
syms z, v;
H = 1 - 0.6 * z^(-1);

%% b. h(n)
h = iztrans(H);

%% c. unit step response v(n) response to u(n)
u = heaviside(z)
v = conv(H,u);

figure,
stem(n, v(1:length(n)));
xlabel('n'); ylabel('v(n)'); title('Unit Step Response v(n)');


%% d. |H(e^{jw})|
num = [1]
den = [1, -0.6]

[z, p, k] = tf2zp(num, den) 
[H, w] = freqz(num, den);
mag = abs(H);
phase = angle(H);

figure,
subplot(2, 1, 1); plot(w, mag); 
title("Magnitude Response"); xlabel("Frequency"); ylabel("|H(e^{jw})|");
subplot(2, 1, 2); plot(w, phase); title("Phase Response"); xlabel("Frequency"); ylabel("Phase");

#############################################################################################################

%% Question 3: If 0 <= n <= 100 x(n) = sinc^2(n-50/2) otherwise 0
n = 0:100;
x(n >= 0 & n <= 100) = sinc((n(n >= 0 & n <= 100) - 50) / 2).^2;

%% a. Determine X(k) DFT and plot its magnitude and phase using stem function
X = fft(x);
k = 0:length(X)-1; 

hold,
subplot(4, 1, 1); stem(k, abs(X));
xlabel('k'); ylabel('|X(k)|'); title('Magnitude of DFT');

subplot(4, 1, 2); stem(k, angle(X));
xlabel('k'); ylabel('Phase'); title('Phase of DFT');

%% b. Plot the magnitude and phase of the DTFT |H(e^{jw})| (use freqz function)
[w, X_dtft] = freqz(x);

subplot(4, 1, 3); plot(w, abs(X_dtft));
xlabel('Frequency (w)'); ylabel('|H(e^{jw})|'); title('Magnitude of DTFT');

subplot(4, 1, 4); plot(w, angle(X_dtft));
xlabel('Frequency (w)'); ylabel('Phase'); title('Phase of DTFT');

%% c. Compare plots above in one plot (use hold function)
%% I've drawn plots inside a figure. Also tried to use hold function above.

#############################################################################################################

%% Question 4: x(t) = 2*e^(-0.16*t)*e^j*(t+pi/6) plot its magnitude, phase, the real part and imaginary part
%% in a single plot contains 4 subplot
t = linspace(0, 10, 1000);
x = 2 * exp(-0.16 * t) .* exp(1j * (t + pi/6));

# We haven't learned disp() function on previous lectures, also it is not required to use but useful
magnitude = abs(x);
disp(magnitude) 
phase = angle(x);
disp(phase)
real_part = real(x);
dips(real_part)
imaginary_part = imag(x);
dips(imaginary_part)

figure,
subplot(4, 1, 1); plot(t, magnitude);
xlabel('t'); ylabel('Magnitude'); title('Magnitude of x(t)');

subplot(4, 1, 2); plot(t, phase);
xlabel('t'); ylabel('Phase (radians)'); title('Phase of x(t)');

subplot(4, 1, 3); plot(t, real_part);
xlabel('t'); ylabel('Real Part'); title('Real Part of x(t)');

subplot(4, 1, 4); plot(t, imaginary_part);
xlabel('t'); ylabel('Imaginary Part'); title('Imaginary Part of x(t)');

#############################################################################################################

%% Question 5: While -2 < t < 0 x(t) = t^2 ; while 0 < t < 2 x(t) = sint and h(t) = 0.1*e^t
%% a. Plot the input x(t)
# I've tried different linspaces but probably due to GNU Octave it raised an error. So I defined as below.
t = linspace(-2, 2, 1000);
x(t >= -2 & t < 0) = t(t >= -2 & t < 0).^2;
x(t >= 0 & t <= 2) = sin(t(t >= 0 & t <= 2));

figure,
subplot(3, 1, 1); plot(t, x);
xlabel('t'); ylabel('x(t)'); title('Input Signal x(t)');

%% b. Plot the pulse response h(t)
h = 0.1 * exp(t);

subplot(3, 1, 2); plot(t, h);
xlabel('t'); ylabel('h(t)'); title('Pulse Response h(t)');

%% c. Perform the convolution y(t) = x(t) * h(t) and plot y(t)
# On documentation:  -- conv (A, B, SHAPE) (when type conv --help)
# I also tried this one with 'different' keyword result was the same. 
# But without 'same' figure did not show up.
y = conv(x, h, 'same');

subplot(3, 1, 3); plot(t, y);
xlabel('t'); ylabel('y(t)'); title('Convolution y(t)');

## Merve Nur YILMAZ
## 2021231015






