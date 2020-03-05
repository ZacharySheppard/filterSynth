%% Component Values
c1 = 10*10^-9;
c2 = 10*10^-9;
r1 = 3.2*10^3;
r2 = 3.2*10^3;
g1 = 1/r1;
g2 = 1/r2;
ra = 10*10^3;
rb = 10*10^3;

c3 = 25.5*10^-9;
c4 = 397.8*10^-12;
r3 = 10*10^3;
r4 = 10*10^3;
r5 = 5*10^3;

g3 = 1/r3;
g4 = 1/r4;
g5 = 1/r5;

%% Design Equations

k = 1+(rb/ra);
omega_sk = 1/sqrt(r1*r2*c1*c2);
Q_sk = 1/(3-k);
H_sk = k;

omega_mfb = 1/sqrt(r3*r4*c3*c4);
Q_mfb = omega*c3/(g3+g4+g5);
H_mfb = r3/r5;
