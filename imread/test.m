clc
clear
% Reading the images
% Following images are 16X16
diary('m_imread_cat.txt') 
cat_jpeg=imread('cat.jpeg')
diary off  
diary('m_imread_j.txt') 
lena_jpeg=imread('lenaj.jpeg')
diary off  
diary('m_imread_b.txt') 
lena_bmp=imread('lenab.bmp')
diary off  
diary('m_imread_t.txt') 
lena_tif=imread('lenat.tif')
diary off  
diary('m_imread_rect.txt') 
rect_jpeg=imread('rect.jpeg')
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
imshow(cat_jpeg)
title('Cat Jpeg Image');
subplot(4,2,2)
imshow(lena_jpeg)
title('Lena jpeg img');


subplot(4,2,3)
imshow(lena_bmp)
title('Lena bmp Image');
subplot(4,2,4)
imshow(lena_tif(:,:,(1:3)))
title('Lena tif Image');


subplot(4,2,5)
imshow(rect_jpeg)
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







