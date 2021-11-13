function [ grayImage ] = convertToGray( coloredImage )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[~,~,page] = size(coloredImage);
if page == 1
    grayImage = coloredImage;
else
    redpage = coloredImage(:,:,1);
    greenpage = coloredImage(:,:,2);
    bluepage = coloredImage(:,:,3);
    grayImage = 0.3*redpage + 0.59*greenpage + 0.11*bluepage;
end
end

