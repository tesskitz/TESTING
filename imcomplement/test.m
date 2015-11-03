clc
clear
% Reading the images

cat=imread('cat.jpeg');
lenaj=imread('lenaj.jpeg');
lenab=imread('lenabc.bmp');
lenat=imread('lenat.tif');
rect=imread('rect.jpeg');



% Code doing the necessary operation

diary('m_imcomplement-image_cat.txt') 
catdi=imcomplement(cat)
diary off  
diary('m_imcomplement-image_j.txt') 
lenajdi=imcomplement(lenaj)
diary off  
diary('m_imcomplement-image_b.txt') 
lenabdi=imcomplement(lenab)
diary off  
diary('m_imcomplement-image_t.txt') 
lenatdi=imcomplement(lenat(:,:,(1:3)))
diary off  
diary('m_imcomplement-image_rect.txt') 
rectdi=imcomplement(rect)
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
imshow(catdi)
title('Cat jpeg image');
subplot(4,2,2)
imshow(lenajdi)
title('Lena jpeg image');


subplot(4,2,3)
imshow(lenabdi)
title('Lena bmp image');
 
subplot(4,2,4)
imshow(lenatdi(:,:,(1:3)))
title('Lena tif image');


subplot(4,2,5)
imshow(rectdi)
title('Rect jpeg image');


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







