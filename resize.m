function [ newimg ] = resize( oldimg,width,height )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
new_x = width;
new_y = height;
newimg = zeros(new_x,new_y,'uint8');
[old_x, old_y,page] = size(oldimg);
rr = new_x/old_x;
cr = new_y/old_y;
for i=1:new_x
    old_x = floor(i/rr);
    if(old_x==0)
        old_x=1;
    end
    for j=1:new_y
    old_y = floor(j/cr);
    if(old_y==0)
        old_y=1;
    end
        for k=1:page
            newimg(i,j,k) = oldimg(old_x,old_y,k);
        end
        
    end
end
end




