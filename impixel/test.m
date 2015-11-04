clc
clear
% Reading the images

c = [1 2 3];
r = [1 2 3];
cat=imread('cat.jpeg');
lenaj=imread('lenaj.jpeg');
lenab=imread('lenabc.bmp');
lenat=imread('lenat.tif');
rect=imread('rect.jpeg');



% Code doing the necessary operation

diary('m_impixel-image_cat.txt') 
catdi=impixel(cat,c,r)
diary off  
diary('m_impixel-image_j.txt') 
lenajdi=impixel(lenaj,c,r)
diary off  
diary('m_impixel-image_b.txt') 
lenabdi=impixel(lenab,c,r)
diary off  
diary('m_impixel-image_t.txt') 
lenatdi=impixel(lenat(:,:,(1:3)),c,r)
diary off  
diary('m_impixel-image_rect.txt') 
rectdi=impixel(rect,c,r)
diary off  


%{
Displaying the original image and the altered image and saving it.
Two codes are used, 1 for 16X16 images and other for lenna
The concept is same but the saving and display is done differently as the
lenna are much bigger images compared to color or GRAY.

When using one block make sure to comment te other. 
%}



% Block code used for lenna 
%{
figure;
subplot(2,1,1)
imshow(A_jpeg)
title('Jpeg Image');
subplot(2,1,2)
imshow(B_jpeg)
title('Altered img');
savefig('Matlab_jpeg_lenna.jpeg')

figure;
subplot(2,1,1)
imshow(A_png)
title('PNG Image');
subplot(2,1,2)
imshow(B_png)
title('Altered img');
savefig('Matlab_png_lenna.jpeg')

figure;
subplot(2,1,1)
imshow(A_bmp)
title('BMP Image');
subplot(2,1,2)
imshow(B_bmp)
title('Altered img');
savefig('Matlab_bmp_lenna.jpeg')

figure;
subplot(2,1,1)
imshow(A_tif(:,:,(1:3)))
title('TIFF Image');
subplot(2,1,2)
imshow(B_tif)
title('Altered img');
savefig('Matlab_tif_lenna.jpeg')
%}







