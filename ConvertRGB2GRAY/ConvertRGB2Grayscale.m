clc;clear;close all;
 
buahImg = imread('buah3.png');

R = buahImg(:,:,1);
G = buahImg(:,:,2);
B = buahImg(:,:,3);

Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);

figure, imshow(buahImg);
figure, imshow(Red);
figure, imshow(Green);
figure, imshow(Blue);

buahGray = rgb2gray(buahImg);
figure, imshow(buahGray);

buahBw = im2bw(buahGray, 0.5);
figure, imshow(buahBw);

L = graythresh(buahGray);
M = im2bw(buahGray,L);
figure, imshow(M);


