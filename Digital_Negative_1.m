clc
clear
%f = [ 3 4 7; 6 5 0; 2 2 1; 1 5 7; 0 1 2]

f = imread('Img_3.tif');

[row, col] = size(f);
for x = 1:1:row
  for y = 1:1:col
    %g(x,y) = 7 - f(x,y);
    g(x,y) = 255 - f(x,y);
  endfor
endfor

g;

figure(1), imshow(uint8(f))
figure(2), imshow(uint8(g))

