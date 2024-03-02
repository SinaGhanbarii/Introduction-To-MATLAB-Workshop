clear, clc
x = [0 2 3 4 6 8 10]; % m
rho = [4 3.95 3.89 3.8 3.6 3.41 3.3]; % gr/cm3
A = [100 103 106 110 120 133 150]; % m2

f = 0.1 * A.*rho;
mass = trapz(x,f);
disp(['The mass of bar in kg is: ', num2str(mass)])