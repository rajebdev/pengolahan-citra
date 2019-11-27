clc; clear;

camImg = imread('cameraman.tif');

GaussianFilter = fspecial('gaussian', [9, 9], 5); 

result = imfilter(camImg, GaussianFilter, 'same');

figure(1);
imshow([camImg result]);