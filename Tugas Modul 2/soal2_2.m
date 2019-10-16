clc;clear;close all;

fxy = [
    4 7 2 6 9;
    3 1 5 8 4;
    2 5 7 9 1;
    4 6 3 8 2;
    6 2 1 7 9;
    ];

[nBaris, nKolom] = size(fxy);

fkk = zeros(size(fxy));

for row=1:nBaris
    for col=1:nKolom
        e = exp(1);
        pangkat = -sqrt(-1)*2*pi*((row-1)*(row-1)/nBaris + (col-1)*(col-1)/nKolom);
        e_pangkat = e^pangkat;
%         e_pangkat = exp(pangkat);
        tempFkk = fxy(row, col)*e_pangkat;
        fkk(row, col) = tempFkk;
    end
end

fkk
