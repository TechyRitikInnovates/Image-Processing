clc
clear
##f = [3 3 3 3 255 3 3 255; ...
##   3 255 3 3 3 3 3 3; ...
##   3 3 3 3 255 3 3 3; ...
##   255 3 3 3 3 3 3 3; ...
##   201 0 201 201 201 201 201 201; ...
##   201 201 201 201 201 201 201 201; ...
##   201 201 201 201 201 0 201 201; ...
##   0 201 201 201 201 201 201 0];

f1 = imread('Img_3.tif');
f = imnoise(f1, 'salt & pepper', 0.09);
[row, col] = size(f);
g = f;

for x=2:1:row-1
  for y= 2:1:col-1;
    temp=[f(x-1,y-1) f( x-1,y) f( x-1,y+1)...
            f(x,y-1) f( x,y) f( x,y+1) ...
           f(x+1,y-1) f( x+1,y) f( x+1,y+1)];
    temp1 = sort(temp);
g(x,y) = temp1(5);
  endfor
 endfor

 figure(1), imshow(uint8(f1))
 figure(2), imshow(uint8(f))
 figure(3), imshow(uint8(g))
