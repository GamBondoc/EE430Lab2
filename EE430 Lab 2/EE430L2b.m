% Garrett Bondoc 012835431
% Jordan Hsu 013519127
% EE430 Lab 2

R1 = 10 * 10^3;
R2 = 10;
C1 = 0.1 * 10^-6;
C2 = 100 * 10^-6;
x = linspace(0,10,4);
gain = (R2*C2) / (1 + (R1*C1));
gain = [gain,gain,gain,gain]
% myFunc = feedback(gain,1)
% p = pole(myFunc)
% z = zero(myFunc)
figure
plot(x,abs(gain))
figure
plot(x,angle(gain))