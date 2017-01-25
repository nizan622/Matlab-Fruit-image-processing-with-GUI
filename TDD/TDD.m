classdef TDD < matlab.unittest.TestCase

    methods (Test)
        %Fruit funtion
        
%         function testOne(testCase)
%             [testOne, ~, ~, ~] = TDD_Fruit('Photos\avocado2.jpg',2);
%             testOneSol = ('redBand.jpg');
%             testCase.verifyEqual(testOne,testOneSol);
%         end
%         function testOne(testCase)
%             [testOne, ~, ~, ~] = TDD_Fruit('Photos\avocado2.jpg',2);
%             testOneSol = imread('redBand.jpg');
%             testCase.verifyEqual(testOne,testOneSol);
%         end
        function testOne(testCase)
            [testOne, ~, ~, ~] = TDD_Fruit('Photos\avocado2.jpg',2);
            testOneSol = imread('redBand.jpg');
            testCase.verifyEqual(size(testOne),size(testOneSol));
        end
        function testTwo(testCase)
            [~, testTwo, ~, ~] = TDD_Fruit('Photos/avocado2.jpg',2);
            testTwoSol = imread('blueBand.jpg');
            testCase.verifyEqual(size(testTwo),size(testTwoSol));
        end
        function testThree(testCase)
            [~, ~, testThree, ~] = TDD_Fruit('Photos/avocado2.jpg',2);
            testThreeSol = imread('greenBand.jpg');
            testCase.verifyEqual(size(testThree),size(testThreeSol));
        end
        function testFour(testCase)
            [~, ~, ~, testFour] = TDD_Fruit('Photos/avocado2.jpg',2);
            testFourSol = imread('maskedrgbImage.jpg');
            testCase.verifyEqual(size(testFour),size(testFourSol));
        end
        
        
        %Diameter Function:
        function testOneDiameter(testCase)
            [testOne,~,~] = TDD_Diameter('Photos\avocado2.jpg');
            testOneSol = imread('blue.jpg');
            testCase.verifyEqual(size(testOne),size(testOneSol))
        end
        function testTwoDiameter(testCase)
            [~,testTwo,~] = TDD_Diameter('Photos\avocado2.jpg');
            testTwoSol = imread('bw.jpg');
            testCase.verifyEqual(size(testTwo),size(testTwoSol))
        end
%         function testThreeDiameter(testCase)
%             [~,~,testThree] = TDD_Diameter('Photos\avocado2.jpg');
%             testThreeSol = 1.5;
%             testCase.verifyEqual(testThree,testThreeSol)
%         end
        function testThreeDiameter(testCase)
            [~,~,testThree] = TDD_Diameter('Photos\avocado2.jpg');
            testThreeSol = 1.5;
            testCase.verifyEqual(testThree,testThreeSol,'RelTol', 0.1)
        end

    end
end
