function [testOne, testTwo, testThree, testFour] = Fruit(img,ImageNum)
switch ImageNum
    case 2
        redthreshold = 10;
        greenThreshold = 255;
        blueThreshold = 90;
    case 3
        redthreshold = 150;
        greenThreshold = 255;
        blueThreshold = 110;
    case 4
        redthreshold = 80;
        greenThreshold = 200;
        blueThreshold = 90;
    case 5
        redthreshold = 100;
        greenThreshold = 255;
        blueThreshold = 100;
end
% Read the image.
rgbImage = imread(img);
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
testTwo = blueBand;
testOne = redBand;
testThree = greenBand;
% Threshold each color band.
redMask = (redBand > redthreshold);
greenMask = (greenBand < greenThreshold);
blueMask = (blueBand < blueThreshold);
% Combine the masks to find where all 3 are "true."
redObjectsMask = uint8(redMask & greenMask & blueMask);
maskedrgbImage = uint8(zeros(size(redObjectsMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* redObjectsMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* redObjectsMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* redObjectsMask;
testFour = maskedrgbImage;
numOfPixels = 0;
[row,col] = size(redObjectsMask);
for i = 1:row
    for j = 1:col
        if redObjectsMask(i,j) == 1
            numOfPixels = numOfPixels + 1;
        end
    end
end
% Fruit = maskedrgbImage;
end
