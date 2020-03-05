%% Component Values
close all

c1 = 25.5*10^-9;
c2 = 397.8*10^-12;
r1 = 10*10^3;
r2 = 10*10^3;
r3 = 5*10^3;

g1 = 1/r1;
g2 = 1/r2;
g3 = 1/r3;

%% Design Equations
%Design Equations for Rauch LPF
omega = 1/sqrt(r1*r2*c1*c2);
Q = omega*c1/(g1+g2+g3);
H = r1/r3;

%% Transfer Function Generation
w = 1:1e6;     %frequency range

Ts =                H*omega^2 ./ ...
     ( (1i*w).^2 + (omega/Q).*(1i*w) + omega^2);
 
%% Magnitude and Phase Plot
figure(1);
semilogx(abs(Ts))
hold on
grid on
xlabel('Frequency (rad/s)')
ylabel('Magnitude (|T(jw)|')
title('Magnitude Plot for Rauch LPF')

figure(2);
semilogx(angle(Ts)*180/pi)
hold on
grid on
xlabel('Frequency (rad/s)')
ylabel('Phase Angle (degeres)')
title('Phase Angle Plot for Rauch LPF')
%% Step Response 

syms T(s) F(t)
T(s) =       H*omega^2 ./ ...
      (s.*((s).^2 + (omega/Q).*(s) + omega^2));
  
%% Transient Response
F(t) = ilaplace(T(s));
figure(3);
time = 0:0.00001:0.001;
transient = double(F(time));
plot(time,transient)
xlabel('Time (s)')
ylabel('Magnitude (|T(t)|')
title('Transient Step Response Plot for Rauch LPF')


