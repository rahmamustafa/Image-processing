function [ newImg ] = Brightness( oldImg,offset )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
newImg = oldImg+offset;
[x,y,~] = size(newImg);
for i=1:x
    for j=1:y
     if newImg(i,j)>255
        newImg(i,j)=255;
     elseif newImg(i,j)<0
        newImg(i,j)=0;
    end
   end
end

end

