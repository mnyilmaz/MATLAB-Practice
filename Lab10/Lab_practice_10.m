%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 10                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Example 1: Let x1(n) = -b^nu(-n-1), 0 < |b| < infinite
syms a n b z x
% assume (n, 'integer')
% assume (abs(a)>0)
% assume (abs(a/z)<1)

x = a^n;
x(n) = (a^{n});
pretty(ztrans(x,n,z)); % get z transform

y = (-b).^(n);
pretty(ztrans(y,n,z));

f = x + y;
pretty(ztrans(f,n,z))

x2 = (b^n)*x(n); % sample shifting
pretty(ztrans(x2,n,z))

% Convolution property of Z transform
% Example 2: x1(z) = 2 + 3z^-1 + 4z^-2 and x2(z) = 3+ 4z^-1 + 5z^-2 + 6z^-3, determine x3(z) = x1(z)x2(z) use conv function in matlab

x1_coeffs = [2, 3, 4];
x2_coeffs = [3, 4, 5, 6];

x3_coeffs = conv(x1_coeffs, x2_coeffs)

% with symbolic toolbox
syms z;

x1_z = 2 + 3*z^(-1) + 4*z^(-2);
x2_z = 3 + 4*z^(-1) + 5*z^(-2) + 6*z^(-3);

x3_z = simplify(x1_z * x2_z) % or use expand to simplfy result


% Example 3: x1(z) = 2 + 3z^-3 + 4z^-4 and x2(z) = 3 + 4z^-1 determine x3(z) = x1(z)x2(z) use conv function in matlab
x1_coeffs = [2, 0, 0, 3, 4]; % katsayılar yoksa 0 olarak eklemen gerekli
x2_coeffs = [3, 4];

x3_coeffs = conv(x1_coeffs, x2_coeffs)

% with symbolic toolbox
syms z;

x1_z = 2 + 3z^-3 + 4z^-4;
x2_z = 3 + 4z^-1;

x3_z = simplify(x1_z * x2_z) % or use expand to simplfy result

% Example 4: Kind of ınverse Z transform
b = [0, 0, 0, 0.25, -0.5, 0.0625]; % numerator
a = [1, -1, 0.75, -0.25, 0.0625]; % denominator

[xz,n] = delta(0, 0, 7);
figure, stem(n,xz), title('original')

% computing the first 8 samples of the sequence x(n)
% corresponding to X(z)

xfilter = filter(b, a, xz); % check sequence
figure, stem(n, xfilter), title('by filter')

% Verification
x = [(n-2).*(1/2).^(n-2).*cos(pi*(n-2)/3)].*unit(2, 0, 7);
figure, stem(n, x), title('regular')

% Example 5: Inversion of Z transform using residues
num = [0, 1]; % numerator
den = [3, -4, 1]; % denominator

[r, p, k] = residuez(num, den) %  r (residues), p (poles), and k (direct terms)
[num1 den1] = residuez(r, p, k)

disp("Residues:");
disp(r);
disp("Poles:");
disp(p);
disp("Direct Terms:");
disp(k);

% with symbolic toolbox
syms z;
X_z = z/(3*z^2 - 4*z + 1);

p = roots(sym2poly(3*z^2 - 4*z + 1));

disp("Poles:");
disp(p);

x_n = iztrans(X_z);
pretty(x_n);

figure;
zplane(0, double(p));

% Related to GNU Octave
syms z;
X_z = z/(3*z^2 - 4*z + 1);

den = [3, -4, 1];
p = roots(den);

disp("Poles:");
disp(p);

figure;
zplane([], p);
title("Pole-Zero Plot");
xlabel("Real Part");
ylabel("Imaginary Part");












