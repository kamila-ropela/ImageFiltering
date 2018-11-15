clear;
ReadImage;
n = CountSizeOfMask( imageGray );

[w, h] = size(imageGray);

imageAfterFiltr = CountMedianFiltr( n, w, h, imageGray); 

secondFiltr = CountMedianFiltr( n, w, h, imageAfterFiltr); 
subplot(1,3,1), imshow(imageGray)
subplot(1,3,2), imshow(imageAfterFiltr)
subplot(1,3,3), imshow(secondFiltr)
