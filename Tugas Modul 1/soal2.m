clc;clear;close all;
% membaca gambar
a = imread('buah.jpg');
disp(a);
% figure, imshow(a);

% Menggunakan Method bawaan
% menambah 128 pada setiap pixel citra
b = imadd(a,128);
% disp(b);
figure, imshow(b);

%nilai intensitas a pada b100c230
c = a(100,230);
% disp("C = "+c);

% mengurangi 128 pada setiap pixel citra
d = imsubtract(b, 128);
% d = uint8(double(c)-128);
% disp(d);
figure, imshow(d);

%mengalikan citra b dengan 0.5 menjadi e
e = immultiply(b, 0.5);
figure, imshow(e);

%membagi citra b dengan 0.5 menjadi f
f = imdivide(b, 2);
figure, imshow(f);

