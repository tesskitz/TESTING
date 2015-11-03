clc
clear
% Reading the images

cat=imread('cat.jpeg')
lenaj=imread('lenaj.jpeg')
lenab=imread('lenabc.bmp')
lenat=imread('lenat.tif')
rect=imread('rect.jpeg')

% Code doing the necessary operation
diary('m_rgb2ntsc_cat.txt') 
catn=rgb2ntsc(cat)
diary off  
diary('m_rgb2ntsc_j.txt') 
lenanj=rgb2ntsc(lenaj)
diary off  
diary('m_rgb2ntsc_b.txt') 
lenanb=rgb2ntsc(lenab)
diary off  
diary('m_rgb2ntsc_t.txt') 
lenant=rgb2ntsc(lenat(:,:,(1:3)))
diary off  
diary('m_rgb2ntsc_rect.txt') 
rectn=rgb2ntsc(rect)
diary off  


%{
Displaying the original image and the altered image and saving it.
Two codes are used, 1 for 16X16 images and other for lenna
The concept is same but the saving and display is done differently as the
lenna are much bigger images compared to color or GRAY.

When using one block make sure to comment te other. 
%}

% Block code for 16X16
{ 
subplot(4,2,1)
imshow(catn)
title('Cat Jpeg Image');
subplot(4,2,2)
imshow(lenanj)
title('Lena jpeg img');


subplot(4,2,3)
imshow(lenanb)
title('Lena bmp Image');
subplot(4,2,4)
imshow(lenant(:,:,(1:3)))
title('Lena tif Image');


subplot(4,2,5)
imshow(rectn)
title('Rect Jpeg Image');


%Saving the image
%Name of the file: Matlab_functionname used 

}

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







