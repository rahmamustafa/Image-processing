function [ newImg ] = imgNegative( Img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

newImg =    255-Img;
[x,y,~] = size(newImg);
for i=1:x
    for j=1:y
     if newImg(i,j)<0
        newImg(i,j)=0;
    end
   end
end
end

