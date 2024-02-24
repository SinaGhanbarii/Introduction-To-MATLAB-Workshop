function [P_sat] = AntoineP(A,B,C,T)
X = A - B/(T+C);
P_sat = 10^X;
end