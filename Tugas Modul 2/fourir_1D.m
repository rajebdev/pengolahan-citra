clc;clear;close all;

fx = [2 3 4 4];

[b, N] = size(fx);

FX = zeros(size(fx));
 
for u=0:N-1
    fu = 0;
    for x=0:N-1
        tmp = fx(x+1) * (cos(2*pi*u*x/N) - i*sin(2*pi*u*x/N));
        fu = fu + tmp;
    end
    fu = fu / N;
    FX(u+1) = fu;
end
 
FX

[b, N] = size(fx);

FZ = zeros(size(fx));
 
for u=0:N-1
    fur = 0;
    fui = 0;
    for x=0:N-1
        tmpr = fx(x+1) * cos(2*pi*u*x/N);
        tmpi = fx(x+1) * sin(2*pi*u*x/N);
        fur = fur + tmpr;
        fui = fui + tmpi;
    end
    fur = fur / N;
    fui = fui / N;
    fu = sqrt(fur^2 + fui^2);
    FZ(u+1) = fu;
end
 
FXEVAL = FZ;
FXEVAL