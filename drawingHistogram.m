function [ histImage ] = drawingHistogram ( Image )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

grayImage = convertToGray(Image);
[x,y] = size(grayImage);
countValues = zeros(1,255);
for i=1:x
    for j=1:y
        countValues(grayImage(i,j)) = countValues(grayImage(i,j))+1;
    end
end
histImage = bar(0:254, countValues, 'histc');

end

