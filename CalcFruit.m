function [sum, percent] = CalcFruit(imgPixel, MaskPixel, ImageNum)
    if ((imgPixel==0)||(MaskPixel==0)||(MaskPixel>imgPixel))
        sum = false;
        percent = 0;
    else
        percent = (MaskPixel * 100)/imgPixel;
        switch ImageNum
            case 1
                if(percent >= 75)
                    sum = true;
                else
                    sum = false;
                end
            case 2
                if(percent >= 90)
                    sum = true;
                else
                    sum = false;
                end
            case 3
                if(percent >= 85)
                    sum = true;
                else
                    sum = false;
                end
            case 4
                if(percent >= 85)
                    sum = true;
                else
                    sum = false;
                end
        end
    end
end

