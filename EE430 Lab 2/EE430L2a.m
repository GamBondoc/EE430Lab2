% Garrett Bondoc 012835431
% Jordan Hsu 013519127
% EE430 Lab 2

R1 = 0.5 * 10^3;
R2 = 100 * 10^3;
A = [10^2,10^4, 10^6, 10^8];
CLG_theo = 1 + (R2/R1);
CLG_exp = CLG_theo ./ (1 + (CLG_theo) ./ A);
percErr = abs((CLG_exp - CLG_theo)./CLG_theo);
figure
semilogx(A,[CLG_theo,CLG_theo,CLG_theo,CLG_theo])
xlabel('open loop gain')
ylabel('theoretical closed loop gain')
figure
semilogx(A,CLG_exp)
xlabel('open loop gain')
ylabel('experimental closed loop gain')
figure
semilogx(A,percErr)
xlabel('open loop gain')
ylabel('percent error of CLG theo and CLG exp')

