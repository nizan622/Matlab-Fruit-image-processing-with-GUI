function sum = CalcFruit(imgPixel, MaskPixel, ImageNum)
Temp = (MaskPixel * 100)/imgPixel;
    switch ImageNum
        case 2
            if(Temp >= 85)
                sum = true;
            else
                sum = false;
            end
        case 3
            if(Temp >= 85)
                sum = true;
            else
                sum = false;
            end
        case 4
            if(Temp >= 75)
                sum = true;
            else
                sum = false;
            end
        case 5
            if(Temp >= 85)
                sum = true;
            else
                sum = false;
            end
    end
end