function Coe = Coe_Calc(F1, F2, B)
% Friction coefficient of a belt: F1 = F2*exp(mu*B), B in RADIANS
Coe = log(F1/F2) / B;
end
