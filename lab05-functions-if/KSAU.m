function KSAU(highSchool, qudrat, tahsili)
% Admission check for KAU and KFUPM

kau_score   = highSchool*0.50 + qudrat*0.30 + tahsili*0.20;
kfupm_score = highSchool*0.15 + qudrat*0.60 + tahsili*0.25;

can_kau   = kau_score   >= 80;
can_kfupm = kfupm_score >= 85;

fprintf('Your average for KAU is: %.2f\n', kau_score);
fprintf('Your average for KFUPM is: %.2f\n', kfupm_score);

if can_kau && can_kfupm
    disp('You can apply for both KAU and KFUPM');
elseif can_kau
    disp('You can apply for KAU');
elseif can_kfupm
    disp('You can apply for KFUPM');
else
    disp('You can''t apply for both universities');
end
end
