function [ newImg ] = powerLow( oldImg,Gamma )
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
%grayImage = convertToGray(oldImg);
newImg = double(oldImg) .^double(Gamma);
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
newImg = Constrant(newImg,255,0);
end