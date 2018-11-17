imageColor = imread('lena_color.png');
imageGray = rgb2gray(imageColor);

imageGray = imnoise(imageGray, 'salt & pepper', 0.3);
imageColor = imnoise(imageColor, 'salt & pepper', 0.3);
 
imageColorRed = imageColor(:,:,1);
imageColorGreen = imageColor(:,:,2);
imageColorBlue = imageColor(:,:,3);
