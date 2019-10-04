clc;clear;close all;
% membaca gambar
a = imread('buah.jpg');

a = rgb2gray(a);
a = a(:,:);
% disp(a);
% figure, imshow(a);

%make new array image
a_add = zeros(size(a));
a_sub = zeros(size(a));
a_mul = zeros(size(a));
a_div = zeros(size(a));
[nBaris, nColom] = size(a);
% looping
for row=1:size(a, 1)
    for col=1:size(a,2)
        get_pixel = a(row, col);
        a_add(row, col) = get_pixel+212;
        a_sub(row, col) = get_pixel-212;
        a_mul(row, col) = get_pixel*5;
        a_div(row, col) = get_pixel*0.2;
    end
end
figure,
subplot(3,2,1), imshow(a, [])
title("Image Asli")
subplot(3,2,2), imshow(a_add, [])
title("Image Add")
subplot(3,2,3), imshow(a_sub, [])
title("Image Sub")
subplot(3,2,4), imshow(a_mul, [])
title("Image Mul")
subplot(3,2,5), imshow(a_div, [])
title("Image Div")