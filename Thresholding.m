function [ newImg ] = Thresholding( oldImg,smallLimit,largeLimit )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
grayImage = convertToGray(oldImg);
[x,y,~] = size(grayImage);
for i=1:x
    for j=1:y
     if grayImage(i,j)>largeLimit
        grayImage(i,j)=255;
     elseif grayImage(i,j)<smallLimit
        grayImage(i,j)=0;
    end
   end
end
newImg = grayImage;
end

