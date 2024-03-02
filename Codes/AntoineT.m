function [T_sat] = AntoineT(A,B,C,P)
T_sat = B/(A - log10(P)) - C;
end