image = imread ('rini.jpg');
MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',60);
BB=step(MouthDetect,image);
figure,
imshow(image);
hold on;
for i = 1:size(BB,1)
rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','b');
end
title('Deteksi Mulut');
hold off;