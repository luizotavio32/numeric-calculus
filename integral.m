##  trapezium method

f = @(x) 1/sqrt(x);

a = 2;
b = 14;
n = 6;

h = (b - a)/n;
m = (b - a)/h;

x = zeros(1, n + 1);

x(1) = a;

for i = 2: n + 1
    x(i) = x(i - 1) + h;
end

integral = f(x(1)) + f(x(n + 1));

for i = 2 : m
 if mod(i,2) == 1
    integral = integral + 2*f(x(i));
 else
    integral = integral + 4*f(x(i));
 end
end

result = integral * h/3;

% n = 4 -> 4,6764
% n = 6 -> 4,6615

##  simpson method

f = @(x) (x^4) - 3*(x^3) + 2*(x^2) - 3;

a = -2;
b = 5;
n = 30;

h = (b - a)/n;
x = zeros(1,n + 1);
x(1) = a;

for i = 2: n +1
    x(i) = x(i - 1) + h;
end

integral = f(x(1)) + f(x(n + 1));

for i = 2 : n
    integral = integral + 2*f(x(i));
end

result = integral * h/2;