classdef Testing < matlab.unittest.TestCase

    methods (Test)
        
        function testCalcFruit(testCase)
            actSolution = CalcFruit(46083,44161,2);
            expSolution = true;
            testCase.verifyEqual(actSolution,expSolution);
        end
        function testDiameterOutput(testCase)
            actSolution = Diameter('avocado2.jpg');
            expSolution = 1;
            testCase.verifyGreaterThanOrEqual(actSolution,expSolution);
        end
        function testSizeInPixels(testCase)
            actSolution = SizeInPixels('avocado2.jpg');
            expSolution = 40000;
            testCase.verifyGreaterThanOrEqual(actSolution,expSolution);
        end
    end
end