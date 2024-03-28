clc;
clear;
f1 = double(imread('Img_3.tif'));
[row, col] = size(f1);

for x = 1:1:row
  for y = 1:1:col
    f(x,y) = f1(x,y) * (-1) ^ (x+y);
    endfor
  endfor
F = fft2(f);
figure(1), imshow(uint8(f1)), title('Orignal Image')
figure(2), imagesc(log(1+abs(F))), title('Magnitude Spectrum')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


D0 = 35;
for u =1:1:row
  for v = 1:1:col
    D(u,v) = sqrt((u-(row/2))^2 + (v-(col/2))^2);
    if D(u,v) <= D0
      H(u,v) = 1;
     else
      H(u,v) = 0;
    endif
  endfor
endfor
figure(3), imshow(uint8(D)), title('Distance Image')
figure(4), imshow(H), title('Filter')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(5), mesh(H)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

G =F.*H;
g = ifft2(G);
figure(6), imshow(uint8(abs(g)))
