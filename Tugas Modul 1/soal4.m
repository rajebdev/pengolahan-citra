clc;clear;close all;

% membaca gambar
a = imread('cameraman.tif');
% a = rgb2gray(a);
% a = a(:,:);

translasi = a;
rotasi = a;
scaling_in = zeros(size(a)*2);
scaling_out = zeros(size(a)/2);
fliping_h = a;
fliping_v = a;

skala = 2;

[nRow, nCol] = size(a);

for row=1:nRow
    for col=1:nCol
        get_pixel = a(row, col);
        translasi(row+50, col+25) = get_pixel;
        rotasi(col,nRow+1-row)= get_pixel;
        scaling_out(round(row/skala), round(col/skala)) = get_pixel;
        fliping_h(row, nCol-(col-1)) = get_pixel;
        fliping_v(nRow-(row-1), col) = get_pixel;
    end
end
for row=1:size(scaling_in,1)
    for col=1:size(scaling_in,2)
        get_pixel = a(round(row/skala), round(col/skala));
        scaling_in(row, col) = get_pixel;
    end
end

figure
subplot(2,4,1), imshow(translasi)
title("Translasi")
subplot(2,4,2), imshow(rotasi)
title("Rotasi")
subplot(2,4,3), imshow(scaling_in, [])
title("Scaling Zooim In")
subplot(2,4,4), imshow(scaling_out, [])
title("Scaling Zoom Out")
subplot(2,4,5), imshow(fliping_h)
title("Fliping Horizontal")
subplot(2,4,6), imshow(fliping_v)
title("Fliping Vertical")
subplot(2,4,8), imshow(a)
title("Asli")

% Skaling adalah mempebesar pixel dari sebuah gambar sehingga valuenya
% menjadi lebih besar



