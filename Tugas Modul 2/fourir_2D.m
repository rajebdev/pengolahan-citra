clc;clear;close all;

fxy = [2 3 4 4;
      1 2 3 4
      ];

[M, N] = size(fxy);

FXY = zeros(size(fxy));
 
for u=0:M-1
    for v=0:N-1
        fuv = 0;
        for x=0:M-1
            for y=0:N-1
                rumus = fxy(x+1,y+1) * exp(-2 * j * pi * (u*x/M + v*y/N));
                fuv = fuv + rumus;
            end
        end
        fuv = fuv/(M*N);
        FXY(u+1, v+1) = fuv;
    end
end
 
FXY