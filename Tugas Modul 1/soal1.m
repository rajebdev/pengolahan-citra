clc;clear;close all;

srcImg = imread('buah.jpg');
R = srcImg(:,:,1);
G = srcImg(:,:,2);
B = srcImg(:,:,3);

Yellow = cat(3, R, G, B*0);
Ungu = cat(3, R, G*0, B);
Orange = cat(3, R, G*0.5, B*0);

Gray = rgb2gray(srcImg);
CitraBinner = imbinarize(Gray, 0.5);

figure,
subplot(2,3,1), imshow(Yellow)
title("ungu");
subplot(2,3,2), imshow(Ungu)
title("ungu");
subplot(2,3,3), imshow(Orange)
title("ungu");
subplot(2,3,4), imshow(Gray)
title("ungu");
subplot(2,3,5), imshow(CitraBinner)
title("ungu");