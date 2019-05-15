function [xfin] = gradientenabstiegsverfahren(xstart, fhandle,m, epstol)
schritt = 0.1;

x = xstart;
k = 1;

while laenge(buildgradient(x,fhandle,schritt)) > epstol && k < m
    tmp = buildgradient(x,fhandle,schritt);
    x = x + (schritt * (tmp*1/laenge(tmp)))';
    k = k + 1;
end
xfin = x;
end

function [x] = laenge(tmp)
l=0;
for i=1:length(tmp)
    l=l+tmp(i)^2;
end
x=sqrt(l);
end