clc; clear;

camImg = double(imread('cameraman.tif'));


Gx = [0 0 0; 1 -2 1; 0 0 0];
Gy = [0 1 0; 0 -2 0; 0 1 0];

fGx = imfilter(camImg, Gx);
fGy = imfilter(camImg, Gy);
G = sqrt(fGx.^2 + fGy.^2);
figure(1);
imshow([camImg uint8(fGx); uint8(G) uint8(fGy)]);