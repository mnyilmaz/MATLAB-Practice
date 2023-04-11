%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 6                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Complex-Valued Signal

a = -3 + 4j;
rl = real(a);
im = imag(a);
ab = abs(a);
ang = (180/pi)*angle(a);

% Example: x(n) = e^(-0.1 + j0.3)n  ;  -10< n < 10
n = [-10:1:10];
alpha = -0.1 + 0.3j;
x = exp(alpha*n);

figure,
subplot(2,2,1);
stem(n,real(x)), title('Real Part');

subplot(2,2,2);
stem(n,imag(x)), title('Imaginary Part');

subplot(2,2,3);
stem(n,abs(x)), title('Magnitude Part');

subplot(2,2,4);
stem(n,angle(x)), title('Phase Part');

%% Sample Summation
% It adds alll sample values of x(n) between n1 and n2

x = [10 10 10 10 10];
y = sum(x(:));

% a different approach
y = 0;
for n = 1:length(x)
    y = y + x(n);
end

%% Sample Summation
% It multiplies alll sample values of x(n) between n1 and n2
y = prod(x);


%% Signal Energy
% Example: if -4 <= n <= 4 cos(πn) otherwise 0, find the energy of this signal
n = [-4:4];
x = sqrt(abs(cos(pi*n)));
result = sum(x(:))

