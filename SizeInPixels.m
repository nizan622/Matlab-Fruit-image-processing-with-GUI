function SizeInPixels = SizeInPixels(img)
    obj = imread(img);
    blue = obj(:,:,3);
    bw = imbinarize(blue);
    se = strel('disk',7);
    bw = imopen(bw,se);
    numOfPixels = 0;
    [row,col] = size(bw);
    for i = 1:row
        for j = 1:col
            if bw(i,j) == 0
                numOfPixels = numOfPixels + 1;
            end
        end
    end
%     disp(numOfPixels)
    SizeInPixels = numOfPixels;
end