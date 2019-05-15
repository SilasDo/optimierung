function [ xfin ] = bergsteiger( xstart, fhandle , m)
xnew = xstart;

r1 = [0.1;0];
richtung=cell(m);
crichtung=[0 0];
for i=1:m
    alpha=(2*pi/m)*i;
    richtung{i}=([cos(alpha) -sin(alpha);sin(alpha) cos(alpha)]*r1)';
end

while true
    xold = xnew;

    temp = fhandle(xnew);
    for i=1:length(richtung)
        if fhandle(xnew+richtung{i}) < temp
        temp = fhandle(xnew+richtung{i});
        crichtung = richtung{i};
        end
    end
    xnew = xnew +crichtung;
    if fhandle(xnew) >= fhandle(xold)
        break;
    end
end
xfin = xold;
end