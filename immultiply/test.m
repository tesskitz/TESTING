clc
clear
% Reading the images

cat=imread('cat.jpeg');
cat1=imread('cat1.jpeg');
lenaj=imread('lenaj.jpeg');
lenaj1=imread('lenaj1.jpeg');
lenab=imread('lenabc.bmp');
lenab1=imread('lenabc1.bmp');
lenat=imread('lenat.tif');
lenat1=imread('lenat1.tif');
rect=imread('rect.jpeg');
rect1=imread('rect1.jpeg');


% Code doing the necessary operation
diary('m_immultiply-constant_cat.txt') 
catdc=immultiply(cat,2)
diary off  
diary('m_immultiply-constant_j.txt') 
lenajdc=immultiply(lenaj,2)
diary off  
diary('m_immultiply-constant_b.txt') 
lenabdc=immultiply(lenab,2)
diary off  
diary('m_immultiply-constant_t.txt') 
lenatdc=immultiply(lenat(:,:,(1:3)),2)
diary off  
diary('m_immultiply-constant_rect.txt') 
rectdc=immultiply(rect,2)
diary off
  
diary('m_immultiply-image_cat.txt') 
catdi=immultiply(cat,cat1)
diary off  
diary('m_immultiply-image_j.txt') 
lenajdi=immultiply(lenaj,lenaj1)
diary off  
diary('m_immultiply-image_b.txt') 
lenabdi=immultiply(lenab,lenab1)
diary off  
diary('m_immultiply-image_t.txt') 
lenatdi=immultiply(lenat(:,:,(1:3)),lenat1(:,:,(1:3)))
diary off  
diary('m_immultiply-image_rect.txt') 
rectdi=immultiply(rect,rect1)
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
imshow(catdc)
title('Cat jpeg image');
subplot(4,2,2)
imshow(lenajdc)
title('Lena jpeg image');


subplot(4,2,3)
imshow(lenabdc)
title('Lena bmp image');
 
subplot(4,2,4)
imshow(lenatdc(:,:,(1:3)))
title('Lena tif image');


subplot(4,2,5)
imshow(rectdc)
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







