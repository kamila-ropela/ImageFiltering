function [ n ] = CountSizeOfMask( image )

[w, h] = size(image);

n=3;

pixelX = (w/2)-1;
pixelY = (h/2)-1;


while (true)
    sizeOfMask = n*n;

    tab=[];
    tab(1,sizeOfMask)=0;
    t=1;

    for i=pixelX : pixelX+n-1
        for j=pixelY : pixelY+n-1
        
            tab(1,t) = image(i,j);
            t = t+1;
        end;
    end;

    minValue = min(tab);
    maxValue = max(tab);

    medianValue = median(tab);

    a1 = medianValue - minValue;
    a2 = medianValue - maxValue;
    
    if(a1>0) || (a2<0)
        break;
    else
        n = n+2;
    end;
        
end;



end

