clear, clc
syms t 
C_A = (2*t^3-5*t^2+3*t)/(t^2+2*t+1);

rate = diff(C_A);
disp('The rate of Equation is: ')
disp(rate)

Cons_A = int(C_A);
disp('The total amount of reactant A consumed or produced is: ')
disp(Cons_A)

desired_rate = subs(rate,t,4.5);
disp('The reaction rate at t=4.5 min in mol/lit/s is:')
disp(desired_rate)

bounds = [0 5];
desired_cons = subs(Cons_A,t,bounds(2)) - subs(Cons_A,t,bounds(1));
disp('The total amount reactant A consumed or produced from 0 to 5 min is:')
disp(desired_cons)

figure
ezplot('(2*t^3-5*t^2+3*t)/(t^2+2*t+1)')
xlim([0 7])
ylim([0 7])
xlabel('t (min)')
ylabel('Concentration of A')
grid on
title('')