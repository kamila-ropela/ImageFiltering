imageColor = imread('lena_color.png');

imageGray = rgb2gray(imageColor);


% 
% imageColorRed = imageColor(:,:,1);
% imageColorBlue = imageColor(:,:,3);
% imageColorGreen = imageColor(:,:,2);

imageGray = imnoise(imageGray, 'salt & pepper', 0.3);