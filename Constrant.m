function [ newImg ] = Constrant( oldImg,newMax,newMin )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
grayImage = convertToGray(oldImg);
vectorImg = grayImage(:);
oldMin = min(vectorImg);
oldMax = max(vectorImg);
%newImg = ( (grayImage - oldMin) * 255 )/(oldMax - oldMin);
newImg = ( ( (oldImg - oldMin) / (oldMax - oldMin) ) * (newMax - newMin) ) + newMin;
%newImg = zeros(x,y);
[x,y,~] = size(oldImg);
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

