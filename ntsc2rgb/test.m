clc
clear
% Reading the images

cat=imread('cat.jpeg');
catn=rgb2ntsc(cat);
lenaj=imread('lenaj.jpeg');
lenajn=rgb2ntsc(lenaj);
lenab=imread('lenabc.bmp');
lenabn=rgb2ntsc(lenab);
lenat=imread('lenat.tif');
lenatn=rgb2ntsc(lenat(:,:,(1:3)));
rect=imread('rect.jpeg');
rectn=rgb2ntsc(rect);

% Code doing the necessary operation
diary('m_ntsc2rgb_cat.txt') 
catr=ntsc2rgb(catn)
diary off  
diary('m_ntsc2rgb_j.txt') 
lenajr=ntsc2rgb(lenajn)
diary off  
diary('m_ntsc2rgb_b.txt') 
lenabr=ntsc2rgb(lenabn)
diary off  
diary('m_ntsc2rgb_t.txt') 
lenatr=ntsc2rgb(lenatn)
diary off  
diary('m_ntsc2rgb_rect.txt') 
rectr=ntsc2rgb(rectn)
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
imshow(catr)
title('Cat Jpeg Image');
subplot(4,2,2)
imshow(lenajr)
title('Lena jpeg img');


subplot(4,2,3)
imshow(lenabr)
title('Lena bmp Image');
subplot(4,2,4)
imshow(lenatr(:,:,(1:3)))
title('Lena tif Image');


subplot(4,2,5)
imshow(rectr)
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







