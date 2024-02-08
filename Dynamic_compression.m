clc;
clear;
f = imread('Img_3.tif');
u1 = max(max(f))
l1 = min(min(f))

F = abs(fft2(f));
u2 = max(max(F))
l2 = min(min(F))

figure(1); imshow(uint8(f));
figure(2); imagesc(fftshift(F));
figure(3); imagesc(fftshift(log(1+F)));

