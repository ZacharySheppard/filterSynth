%%component Values


c1 = 9.71*10^-9;
c2 = 9.94*10^-9;
r1 = 3.27*10^3;
r2 = 3.28*10^3;
g1 = 1/r1;
g2 = 1/r2;
ra = 9.93*10^3;
rb = 9.90*10^3;

w = 1:100e6;

k = 1+(rb/ra);

num = k/(c1*c2*r1*r2);

b = ((g1+g2)/c1) + ((1-k)/(r2*c2));
c = 1/(c1*c2*r1*r2);

Ts1 =       num ./ ...
      (w.^2 + b*w + c);
  
semilogx(Ts1)
grid on