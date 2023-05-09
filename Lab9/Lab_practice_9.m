%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 MATLAB LAB PRACTICE 9                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Creating Symbolic Variables - Defining rho

str = "(1 + sqrt(5))/2";
rho = sym(str);
f = rho.^2 - rho - 1;

%% Quadratic function f = ax^2+bx+c
str = "x^2 + 3*x + 2";
sym_var = sym(str);

%% The Subs Command
syms x;
f = 2*x^2 - 3*x + 1;
subs(f,2);
subs(f,x,2); # subs, old value, new value

syms x y;
f = x^2*y + 5*x*sqrt(y);
subs(f,x,3);

%% Symbolic and Numeric Conversions
t = 0.1;
#d = sym(t); % decimal form
#r = sym(rat(t)); % rational form

A = [1 0.5 1.3; 0.25 0.2 0.33];
A = sym(A);

%% Creating Symbolic Math Functions
syms x y z;
r = sqrt(x^2 + y^2 + z^2);
t = atan(y/x);
f = sin(x*y)/(x*y);

subs(r,x,2);

%% Using the Symbolic Math Toolbox
%% Derivative
syms x
f = sin(5*x)
diff(f)

g = exp(x)*cos(x)
diff(g,x) % derivative related to x
diff(diff(g))

syms x n
diff(x^n)

%% Partial Derivative
syms s t
f = sin(s*t)
diff(f,t) % partial derivative

%% Integration
syms x n
f = cos(x)
int(f)
int(x^n)
int(x^n,x)

int(sin(2*x),0,pi/2)
int(sin(2*x),x,0,pi/2)
int(x^(-1)) # log(x)

%% Simplifications
syms x
f = x^3-6*x^2+11*x-6
g = (x-1)*(x-2)*(x-3)
h = -6 + (11 + (-6 + x)*x)*x
c = x^6-1

coeffs(g) # on GNU Octave works as this
pretty(f) # prettypined forms
expand(h) # distributes products over sums and applies other identities involving
factor(c) #if f is a polynomial, express f as a product of polynomials of low


%% Solving Equations
syms a b c x
S = a*x^2 + b*x + c
pretty(solve(S))
b = solve(S,b) # if you want to solve for a specific variable

%% Solving Multivariate Equations
syms u v
eqns = [2*u + v == 0, u - v == 1];
solve(eqns)

%% Example:
# 1. Crate a function and subsitute x into 2.
syms x
f = (3*x^2 + 6*x -1)/(x^2 + x - 3)
subs(f,x,2)

# 2. Take the derivative of a unit step function
syms t
u = heaviside(t)  % Define the unit step function
du = diff(u, t)  % Result = DiracDelta(t)

# 3. Expand cos(x + y) and sin(2t)
syms x y t
cos_ex = expand(cos(x + y))
sin_ex = expand(sin(2*t))

# 4. Find the Fourier transform of sinc(x) using fourier(f) command and plot it using fplot function
syms x
f = sinc(x); # sinc function gives rectangular function
F = fourier(f);
ezplot(F), title('Example 1.4')





