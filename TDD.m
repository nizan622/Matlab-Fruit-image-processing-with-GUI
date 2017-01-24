classdef TDD < TestCase
    methods
        function this = TDD(Fruit)
            this = this@TestCase(FruitFuncs);
        end
    end
end