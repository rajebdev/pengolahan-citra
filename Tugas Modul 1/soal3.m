clc;clear;close all;
% membaca gambar
citra_1 = imread('buah.jpg');
citra_2 = imread('buah2.jpg');

%mengubah menjadi gray
citra_gray_1 = rgb2gray(citra_1);
citra_gray_2 = rgb2gray(citra_2);

% mengubah menjadi biner
citra_biner_1 = imbinarize(citra_gray_1);
citra_biner_2 = imbinarize(citra_gray_2);

% menggunakan operasi boolean
citra_or = or(citra_biner_1, citra_biner_2);
citra_and = and(citra_biner_1, citra_biner_2);
citra_not_1 = not(citra_biner_1);
citra_not_2 = not(citra_biner_2);


figure,
subplot(3,2,1), imshow(citra_1)
title("Image Asli 1")
subplot(3,2,2), imshow(citra_2)
title("Image Asli 2")
subplot(3,2,3), imshow(citra_or)
title("Image OR")
subplot(3,2,4), imshow(citra_and)
title("Image AND")
subplot(3,2,5), imshow(citra_not_1)
title("Image NOT 1")
subplot(3,2,6), imshow(citra_not_2)
title("Image NOT 2")