function [gradient] = buildgradient(x, fhandle, h)
tempx = (fhandle([x(1)-h x(2)])-fhandle([x(1)+h x(2)]))/2*h;
tempy = (fhandle([x(1) x(2)-h])-fhandle([x(1) x(2)+h]))/2*h;

% len = sqrt(tempx^2 + tempy^2);
% if len == 0
    gradient = [tempx tempy;]';
% else
%     gradient = [tempx tempy;]' *1/len;
% end
end