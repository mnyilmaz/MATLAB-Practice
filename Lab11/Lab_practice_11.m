%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 11                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Example: Use tf2zp function
num = [1,0,4*sqrt(2)];
den = [1, -0.9*sqrt(2),0.64];

[r, p, k] = residuez(num, den)  %  r (residues), p (poles), and k (direct terms)
[z,p,k] = tf2zp(num,den)
#[num1 den1] = residuez(r, p, k)

Mp = (abs(p))
Ap = (angle(p))./pi

[delta_n, n] = delta(0,0,6)
x = filter(num,den,delta_n)
figure,
stem(n,x), title('by filter')

x1 = ((0.8).^n).*(cos(pi*n/4)+2*(sin(pi*n/4))
figure,
stem(n,x1), title('regular')

% with symbolic toolbox
syms x,z;
X_z = (1 + 0.4*sqrt(2)*(z^-1))/(1 - 0.8*sqrt(2)*(z^-1) + 0.64*sqrt(z^-2));
pretty(x);
iztrans(X_z);
y = iztrans(X_z, z, n);
double(y);

#den = [1, -0.8, 0.64];
#p = roots(den)
#disp("Poles: ")
#disp(p)

figure;
zplane([], p);
title("Pole-Zero Plot");
xlabel("Real Part");
ylabel("Imaginary Part");

%% Example: y(n) = 0.9(n-1) + x(n) -> Find H(z), zeroes and poles, plot |H(e^(jw))|(magnitude) and |<H(e^(jw))|(angle)
%% and determine impulse response h(n)
num = [1]
den = [1, -0.9]

% Finding zeroes and poles
[z, p, k] = tf2zp(num, den) %  z (zeroes), p (poles), and k (gain)

% Plotting magnitude and phase response
[H, w] = freqz(num, den);
mag = abs(H);
phase = angle(H);

figure;
subplot(2, 1, 1);
plot(w, mag);
title("Magnitude Response"); xlabel("Frequency (rad/sample)"); ylabel("|H(e^{jw})|");

subplot(2, 1, 2);
plot(w, phase);
title("Phase Response"); xlabel("Frequency (rad/sample)"); ylabel("Phase (rad)");

%% Example: Find the partial fraction of following expression
X_z = (4 - (7/4)*z^-1 + (1/4)*z^-2) / (1 - (3/4)*z^-1 + (1/8)*z^-2)
num = [4, -7/4, 1/4]
den = [1, -3/4, 1/8]

[r, p, k] = residuez(num, den)
disp("Residues:"); disp(r);
disp("Poles:"); disp(p);
disp("Direct Term:"); disp(k);

% Example: Find poles and zeros of the following pulse transfer function and plot them onto the z-plane

num = [2.25, -2.1, -3.95, -1.6, -0.2]
den = [4, -2.96, 0.8, -0.1184, -0.0064]
[z,p,k] = tf2zp(num,den)

figure;
zplane(z, p);
title("Pole-Zero Plot"); xlabel("Real Part"); ylabel("Imaginary Part")



