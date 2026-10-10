function totalReward = calculateReward(residential, business)
% Total reward for one salesperson (before the 2000 SR cap)

if residential <= 49
    r_rate = 5;
elseif residential <= 124
    r_rate = 8;
else
    r_rate = 10;
end

if business <= 49
    b_rate = 7;
elseif business <= 124
    b_rate = 10;
else
    b_rate = 12;
end

totalReward = residential*r_rate + business*b_rate;
end
