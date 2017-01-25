function [testOne,testTwo,testThree] = Diameter(img)
    obj = imread(img);
    lambda = 15/1848;
    row = -1;
    startcol = -1;
    finishcol = -1;
    blue = obj(:,:,3);
    testOne = blue;
    bw = imbinarize(blue);
    testTwo = bw;
    se = strel('disk',5);
    bw = imopen(bw,se);
    [rows,cols] = size(bw);
    for j = 1:cols
        for i = 1:rows
            if bw(i,j) == 0
                row = i;
                startcol = j;
                break;
            end
        end
        if (startcol ~= -1)
            break;
        end
    end
    for i = row:rows        
        for j = startcol:cols
            if bw(i,j) == 1
                finishcol = j;
                break;
            end
        end
        if (finishcol ~= -1)
            break;
        end
    end
    testThree = (finishcol-startcol)*lambda;
end
