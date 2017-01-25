function [Fruit, FruitFail, Pixel] = Fruit(img,ImageNum)
switch ImageNum
    case 1
        redThresholdLow = 20;
		redThresholdHigh = 100;
		greenThresholdLow = 0;
		greenThresholdHigh = 255;
		blueThresholdLow = 0;
		blueThresholdHigh = 90;
    case 2
        redThresholdLow = 150;
		redThresholdHigh = 255;
		greenThresholdLow = 0;
		greenThresholdHigh = 255;
		blueThresholdLow = 0;
		blueThresholdHigh = 110;
    case 3
        redThresholdLow = 80;
		redThresholdHigh = 255;
		greenThresholdLow = 0;
		greenThresholdHigh = 200;
		blueThresholdLow = 0;
		blueThresholdHigh = 90;
    case 4
        redThresholdLow = 100;
		redThresholdHigh = 255;
		greenThresholdLow = 0;
		greenThresholdHigh = 255;
		blueThresholdLow = 0;
		blueThresholdHigh = 100;
end
% Read the image.
rgbImage = imread(img);
[~ , ~, numberOfColorBands] = size(rgbImage); 
if strcmpi(class(rgbImage), 'uint8')
	% Flag for 256 gray levels.
	eightBit = true;
else
	eightBit = false;
end
if numberOfColorBands == 1
		if isempty(storedColorMap)
			% Just a simple gray level image, not indexed with a stored color map.
			% Create a 3D true color image where we copy the monochrome image into all 3 (R, G, & B) color planes.
			rgbImage = cat(3, rgbImage, rgbImage, rgbImage);
		else
			% It's an indexed image.
			rgbImage = ind2rgb(rgbImage, storedColorMap);
			% ind2rgb() will convert it to double and normalize it to the range 0-1.
			% Convert back to uint8 in the range 0-255, if needed.
			if eightBit
				rgbImage = uint8(255 * rgbImage);
			end
		end
end 
redBand = rgbImage(:, :, 1); 
greenBand = rgbImage(:, :, 2); 
blueBand = rgbImage(:, :, 3); 
redMask = (redBand >= redThresholdLow) & (redBand <= redThresholdHigh);
greenMask = (greenBand >= greenThresholdLow) & (greenBand <= greenThresholdHigh);
blueMask = (blueBand >= blueThresholdLow) & (blueBand <= blueThresholdHigh);
WhiteObjectMask = uint8(redMask & greenMask & blueMask);
ObjectMask = uint8(redMask & greenMask & blueMask);
smallestAcceptableArea = 100;
ObjectMask = uint8(bwareaopen(ObjectMask, smallestAcceptableArea));
structuringElement = strel('disk', 4);
ObjectMask = imclose(ObjectMask, structuringElement);
ObjectMask = uint8(imfill(ObjectMask, 'holes'));
ObjectMask = cast(ObjectMask, class(redBand));
maskedImageR = ObjectMask .* redBand;
maskedImageG = ObjectMask .* greenBand;
maskedImageB = ObjectMask .* blueBand;
maskedRGBImage = cat(3, maskedImageR, maskedImageG, maskedImageB);
Pixel = sum(WhiteObjectMask(:)==1);
Fruit = img;
FruitFail = maskedRGBImage;
end