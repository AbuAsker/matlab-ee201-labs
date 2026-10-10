function cost = shippingCost(W, distance, type)
% Air cargo cost. type: 1 = miscellaneous goods, 2 = containers

if distance <= 1000
    switch type
        case 1      % miscellaneous goods
            if W <= 50
                rate = 100;
            elseif W <= 200
                rate = 200;
            else
                rate = 300;
            end
        case 2      % containers
            if W <= 50
                rate = 150;
            elseif W <= 200
                rate = 250;
            else
                rate = 350;
            end
        otherwise
            error('Invalid cargo type');
    end
    cost = rate * W;
else
    cost = 10*W + 5*log(distance);
end
end
