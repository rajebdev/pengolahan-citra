clc;clear;close all;

fxy = [
%     4 7 2 6 9;
%     3 1 5 8 4;
%     2 5 7 9 1;
%     4 6 3 8 2;
%     6 2 1 7 9;
%     3 1 5 8 4;
%     4 6 3 8 2;
%     2 5 7 9 1;
%     4 7 2 6 9;
%     6 2 1 7 9;
%     4 4 3 5 4;
%     6 6 5 5 2;
%     5 6 6 6 2;
%     6 7 5 5 3;
%     3 5 2 4 4;
    2 5 6 10 11;
    4 8 3 4 8;
    0 0 0 8 0;
    6 10 9 2 5;
    3 8 7 1 6;
    ];

gxy = [
%      0 -1  0;
%     -1  2 -1;
%      0 -1  0;
%      0 -1  0;
%     -1  4 -1;
%      0 -1  0;
    1 1 1;
    1 -8 1;
    1 1 1;
    ];

fg = fxy;

[nBaris, nKolom] = size(fg);
[bGxy, kGxy]     = size(gxy);
count = 0;
for row=1:nBaris-bGxy+1
    for col=1:nKolom-kGxy+1
        cBaris = row;
        dTemp = 0;
        for i=1:bGxy
            cKolom = col;
            for j=1:kGxy
%                 fprintf('konv %i = %i %i %i %i\n', count, cBaris, cKolom, i,j);
                try
                    dTemp = dTemp + (fxy(cBaris, cKolom) * gxy(i,j));
                catch
                    disp "Skip";
                end
                cKolom = cKolom+1;
            end
            cBaris = cBaris+1;
        end
        if dTemp > 255
            dTemp = 255;
%         else
%             if dTemp < 0
%                 dTemp = 0;
%             end
        end
        fg(row+1, col+1) = dTemp;
       count = count + 1;
    end
end
disp fg;
disp(fg);


fgc = conv2(fxy, gxy, 'same');
disp fgc;
disp(fgc);