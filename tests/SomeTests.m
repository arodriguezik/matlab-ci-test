classdef SomeTests < matlab.unittest.TestCase
    % SomeTests contains a set of some simple tests
    %   1) Check that the result is above the minimum input value
    %   2) Check that the result is below the maximum input value
    %   3) Check that the result is within the input range
    %   4) Check that the result has the correct size
    %   5) Check that the function is valid for negative numbers
    methods(TestClassSetup)
        % Shared setup for the entire test class
    end

    methods(TestMethodSetup)
        % Setup for each test
    end

    methods(Test)
        % Test methods
        function testGreaterThan(testCase)
            minval = 5;
            maxval = 9;
            result = randomnumber(6, 4, minval, maxval);
            testCase.verifyTrue(all((result >= minval), 'all'))
        end

        function testLessThan(testCase)
            minval = 8;
            maxval = 21;
            result = randomnumber(3, 2, minval, maxval);
            testCase.verifyTrue(all((result <= maxval), 'all'))
        end

        function testWithin(testCase)
            minval = 5;
            maxval = 9;
            result = randomnumber(6, 4, minval, maxval);
            testCase.verifyTrue(all((result >= minval) & (result <= maxval), 'all'))
        end

        function testSize(testCase)
            result = randomnumber(3, 2, 3, 6);
            testCase.verifySize(result, [3, 2]);
        end

        function testWithinNegative(testCase)
            minval = -18;
            maxval = -6;
            result = randomnumber(6, 4, minval, maxval);
            testCase.verifyTrue(all((result >= minval) & (result <= maxval), 'all'))
        end
    end

end