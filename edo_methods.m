## 1 - Método de Euler


< f = @(t,y) y; ## f, tn, t0 , h e yn(1) variam de acordo com o problema

tn = 0.4;
t0 = 0;
h = 0.01;
n = (tn - t0)/h;
yn = zeros(1,n);
yn(1) = 1; ##  yn(1) = y0
t = zeros(1,n);
t(1) = t0;

for i = 1:n 
        yn(i + 1) = yn(i) + h*f(t(i),yn(i));
        t(i+1) = t(i) + h;
end > 


## 2 - Método de Runge-Kutta 2° ordem (Euler Melhorado)


< f = @(t,y) 0.04*y; ## f, tn, t0 , h e yn(1) variam de acordo com o problema

tn = 1;
t0 = 0;
h = 0.1;
n = (tn - t0)/h;
yn = zeros(1,n);
yn(1) = 1000; ##  yn(1) = y0
t = zeros(1,n);
t(1) = t0;


for i = 1:n 

        yn(i + 1) = yn(i) + h*f(t(i),yn(i));
        t(i+1) = t(i) + h;

end >



## 3 - Método de Runge-Kutta 4° ordem 


< f = @(t,y) 0.04*y; ## f, tn, t0 , h e yn(1) variam de acordo com o problema

tn = 1;
t0 = 0;
h = 0.1;
n = (tn - t0)/h;
yn = zeros(1,n);
yn(1) = 1000;
t = zeros(1,n);
t(1) = t0; ##  yn(1) = y0

s1 = 0
s2 = 0;
s3 = 0;
s4 = 0;

for i = 1:n 

        s1 = f(t(i),yn(i));
        s2 = f(t(i) + h/2, yn(i) + (h/2)*s1);
        s3 = f(t(i) + h/2, yn(i) + (h/2)*s2);
        s4 = f(t(i) + h, yn(i) + h*s3);
        yn(i + 1) = yn(i) + h*(s1 + 2*s2 + 2*s3 + s4)/6;
        t(i+1) = t(i) + h;

