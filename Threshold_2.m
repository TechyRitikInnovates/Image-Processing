clc
clear
% f = [ 7 4 5; 3 1 2; 4 6 1; 1 1 1]
f = imread('Img_3.tif');

[row, col] = size(f);
T = 70;
for x = 1:1:row
  for y = 1:1:col
    if f(x,y) <= T
      g(x,y) = 0;
    else
      g(x,y) = 255;
    endif
  endfor
endfor

g;

figure(1), imshow(uint8(f)), title('gray scale img')
figure(2), imshow(uint8(g)), title('threshold')
