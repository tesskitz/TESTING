clc
clear
% Reading the images

cat=imread('cat.jpeg');
catl=rgb2lab(cat);
lenaj=imread('lenaj.jpeg');
lenajl=rgb2lab(lenaj);
lenab=imread('lenabc.bmp');
lenabl=rgb2lab(lenab);
lenat=imread('lenat.tif');
lenatl=rgb2lab(lenat(:,:,(1:3)));
rect=imread('rect.jpeg');
rectl=rgb2lab(rect);

% Code doing the necessary operation
diary('m_lab2double_cat.txt') 
catr=lab2double(catl)
diary off  
diary('m_lab2double_j.txt') 
lenajr=lab2double(lenajl)
diary off  
diary('m_lab2double_b.txt') 
lenabr=lab2double(lenabl)
diary off  
diary('m_lab2double_t.txt') 
lenatr=lab2double(lenatl)
diary off  
diary('m_lab2double_rect.txt') 
rectr=lab2double(rectl)
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







