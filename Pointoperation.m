RGB = imread('rose.jpg');
I = rgb2gray(RGB);

%Increase contrast 50%
contrast1 = I*1.5;
%Decrease contrast 50%
contrast2 = I*0.5;

%Increase brightness
brightness1 = I+50;
%Decrease brightness
brightness2 = I-50;

%Inverting image
Invert=255-I;

%Threshold
%The threshold is normalized to the range [0, 1] 
level = graythresh(I);
level= 0.498; %0.498 equal to 127 
Threshold = imbinarize(I,level);

%Show picture
imshow(I)
title('Original image')
figure
subplot(2,3,1)
imshow(contrast1)
title('Increasing contrast 50%')

subplot(2,3,2)
imshow(contrast2)
title('Decreasing contrast 50%')

subplot(2,3,3)
imshow(brightness1)
title('Increasing brigthness')

subplot(2,3,4)
imshow(brightness2)
title('Decreasing brigthness')

subplot(2,3,5)
imshow(Invert)
title('Inverting image')

subplot(2,3,6)
imshow(Threshold)
title('Thresholding image')