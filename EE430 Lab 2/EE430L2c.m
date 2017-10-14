% Garrett Bondoc 012835431
% Jordan Hsu 013519127
% EE430 Lab 2

A0 = 10^7;
R1 = 100;
R2 = 600;
R3 = 1100; 
OLG = [10,10^2,10^3,10^4,10^5,10^6,10^7,10^8];
wt = 10^8;
CLG1 = ((wt * R1)./(1 + R1)) ./ (sqrt(((1010 + wt)./ (1 + R1)).^2)+ OLG.^2);
CLG2 = ((wt * R2)./(1 + R2)) ./ (sqrt(((1010 + wt)./ (1 + R2)).^2)+ OLG.^2);
CLG3 = ((wt * R3)./(1 + R3)) ./ (sqrt(((1010 + wt)./ (1 + R3)).^2)+ OLG.^2);
figure
semilogx(OLG,CLG1,OLG,CLG2,OLG,CLG3)
xlabel('open loop gain')
ylabel('closed loop gain')

