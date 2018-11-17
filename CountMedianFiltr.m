function [ imageAfter ] = CountMedianFiltr( n, w, h, imageBefore )

imageHelp=  imread('lena_color.png');
imageAfter = rgb2gray(imageHelp);

tab = [];
tab(1,10)=0;

tab1 = [];
tab1(1,6)=0;

tab2 = [];
tab2(1,4)=0;

for i=2:h-1
    for j=2:h-1
        
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


tab2(1,1)=imageBefore(1,1);
tab2(1,2)=imageBefore(1,2);
tab2(1,3)=imageBefore(2,1);
tab2(1,4)=imageBefore(2,2);

imageAfter(1,1) = median(tab2);


tab2(1,1)=imageBefore(w-1,h-1);
tab2(1,2)=imageBefore(w-1,h);
tab2(1,3)=imageBefore(w,h-1);
tab2(1,4)=imageBefore(w,h);

imageAfter(w,h) = median(tab2);


tab2(1,1)=imageBefore(w-1,1);
tab2(1,2)=imageBefore(w,1);
tab2(1,3)=imageBefore(w-1,2);
tab2(1,4)=imageBefore(w,2);

imageAfter(w,1) = median(tab2);


tab2(1,1)=imageBefore(1,h-1);
tab2(1,2)=imageBefore(2,h-1);
tab2(1,3)=imageBefore(1,h);
tab2(1,4)=imageBefore(2,h);

imageAfter(1,h) = median(tab2);



for i=2:w-1
    tab1(1,1)=imageBefore(i-1,1);
    tab1(1,2)=imageBefore(i,1);
    tab1(1,3)=imageBefore(i+1,1);
    tab1(1,4)=imageBefore(i-1,2);
    tab1(1,3)=imageBefore(i,2);
    tab1(1,4)=imageBefore(i+1,2);

    imageAfter(i,1) = median(tab1);
end;


for i=2:w-1
    tab1(1,1)=imageBefore(i-1,h-1);
    tab1(1,2)=imageBefore(i,h-1);
    tab1(1,3)=imageBefore(i+1,h-1);
    tab1(1,4)=imageBefore(i-1,h);
    tab1(1,3)=imageBefore(i,h);
    tab1(1,4)=imageBefore(i+1,h);

    imageAfter(i,h) = median(tab1);
end;


for j=2:h-1
    tab1(1,1)=imageBefore(w-1,j-1);
    tab1(1,2)=imageBefore(w-1,j);
    tab1(1,3)=imageBefore(w-1,j+1);
    tab1(1,4)=imageBefore(w,j+1);
    tab1(1,3)=imageBefore(w,j);
    tab1(1,4)=imageBefore(w,j+1);

    imageAfter(w,j) = median(tab1);
end;


for j=2:h-1
    tab1(1,1)=imageBefore(1,j-1);
    tab1(1,2)=imageBefore(1,j);
    tab1(1,3)=imageBefore(1,j+1);
    tab1(1,4)=imageBefore(2,j-1);
    tab1(1,3)=imageBefore(2,j);
    tab1(1,4)=imageBefore(2,j+1);

    imageAfter(1,j) = median(tab1);
end;

end

