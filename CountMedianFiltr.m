function [ imageAfter ] = CountMedianFiltr( n, w, h, imageBefore )

imageHelp=  imread('lena_color.png');
imageAfter = rgb2gray(imageHelp);

tab = [];
tab(1,10)=0;

for i=4:h-2
    for j=4:h-2
        
         tab(1,1)=imageBefore(i-1, j-1);
         tab(1,2)=imageBefore(i, j-1);
         tab(1,3)=imageBefore(i+1, j-1);
         tab(1,4)=imageBefore(i-1, j);
         tab(1,5)=imageBefore(i, j);
         tab(1,6)=imageBefore(i+1, j);
         tab(1,7)=imageBefore(i-1, j+1);
         tab(1,8)=imageBefore(i, j+1);
         tab(1,9)=imageBefore(i+1, j+1);
        
        imageAfter(i,j) = median(tab);
    end;
end;

end

