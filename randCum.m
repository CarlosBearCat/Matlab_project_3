function [x] = randCum(time)
%random number generator 
x = randn(1, time);
x(1) = 0; 
x = cumsum(x);

end

