function [ newImg ] = Sub( Img1,Img2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

newImg =    Img1-Img2;
[x,y,~] = size(newImg);
for i=1:x
    for j=1:y
     if newImg(i,j)<0
        newImg(i,j)=0;
    end
   end
end
end

