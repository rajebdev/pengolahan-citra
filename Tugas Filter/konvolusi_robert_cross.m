clc; clear;

camImg = double(imread('cameraman.tif'));


Gx = [1 0; 0 -1];
Gy = [0 1; -1 0];

fGx = imfilter(camImg, Gx);
fGy = imfilter(camImg, Gy);
G = sqrt(fGx.^2 + fGy.^2);
figure(1);
imshow([camImg uint8(fGx); uint8(G) uint8(fGy)]);