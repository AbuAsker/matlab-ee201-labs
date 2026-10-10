function F = calculate_force(choice, W)
% Force needed to start moving weight W: F = mu * W

switch choice
    case 1
        mu = 0.2;    % metal on metal
    case 2
        mu = 0.35;   % wood on wood
    case 3
        mu = 0.4;    % metal on wood
    case 4
        mu = 0.7;    % rubber on concrete
    otherwise
        disp('Error: choose a number from 1 to 4');
        mu = 0;
end

F = mu * W;
end
