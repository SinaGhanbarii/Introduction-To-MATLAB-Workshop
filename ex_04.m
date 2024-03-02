clear, clc
a = 3.592;
b = 0.04267;
R = 0.082054;
P =12;
T = 315.6;

Coeff = [P, -(b*P+R*T), a, -b];
answer = roots(Coeff);
disp(answer)