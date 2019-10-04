clc;clear;close all;

asli = imread('cameraman.tif');

hasil_1 = fft(asli);
hasil_2 = ifft(asli);

figure
subplot(2,2,1), imshow(asli)
title('Gambar Asli')
subplot(2,2,3), imshow(real(hasil_1))
title('Gambar Hasil fft')
subplot(2,2,4), imshow(real(hasil_2))
title('Gambar Hasil ifft')


% dikarenakan fungsi fft merupakan fungsi bawaan dari matlab menjadikan
% fungsinya cepat cepat saja. namun beberapa terasa agak lama sedikit.
% dikarenakan laptop saya insyaAllah bisa mecukupi. namun akan terasa
% lumayan lambat ketika dijalankan di laptop yang low end.