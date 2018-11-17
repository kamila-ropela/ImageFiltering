clear;
ReadImage;
nR = CountSizeOfMask( imageColorRed );
nG = CountSizeOfMask( imageColorGreen );
nB = CountSizeOfMask( imageColorBlue );

[w, h] = size(imageColorRed);

imageAfterFiltrRed = CountMedianFiltr( nR, w, h, imageColorRed); 
imageAfterFiltrGreen = CountMedianFiltr( nG, w, h, imageColorGreen);
imageAfterFiltrBlue = CountMedianFiltr( nB, w, h, imageColorBlue);

imageAfterFiltr = cat(3, imageAfterFiltrRed, imageAfterFiltrGreen, imageAfterFiltrBlue);

subplot(1,2,1), imshow(imageColor)
subplot(1,2,2), imshow(imageAfterFiltr)