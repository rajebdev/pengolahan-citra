clc; clear;

camImg = double(imread('cameraman.tif'));

Gx = [-1 1; -1  1];
Gy = [ 1 1; -1 -1];

fGx = imfilter(camImg, Gx);
fGy = imfilter(camImg, Gy);
G = sqrt(fGx.^2 + fGy.^2);
figure(1);
imshow([camImg uint8(fGx); uint8(G) uint8(fGy)]);
xG = G;yG = G;zG = G;
xG(xG<15)=0;xG(xG>=15)=255;
yG(yG<25)=0;yG(yG>=25)=255;
zG(zG<35)=0;zG(zG>=35)=255;
figure(2);
imshow([uint8(G) uint8(xG); uint8(yG) uint8(zG)]);