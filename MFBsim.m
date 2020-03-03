%%component Values

c1 = 28.1*10^-9;
c2 = 402*10^-12;
r1 = 10*10^3;
r2 = 10*10^3;
r3 = 4.62*10^3;

g1 = 1/r1;
g2 = 1/r2;
g3 = 1/r3;


w = 1:1e6;


num = -(r1/r3)*(1/(c1*c2*r1*r2));

b = (g1+g2+g3)/c1;
c = 1/(r1*r2*c2*c1);

Ts1 =       num ./ ...
      (w.^2 + b*w + c);
  
semilogx(-Ts1)
grid on