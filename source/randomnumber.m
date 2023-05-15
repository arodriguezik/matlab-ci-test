function result = randomnumber(size1, size2, minvalue, maxvalue)
%UNTITLED Generate a random number
result = minvalue + (maxvalue - minvalue)*rand(size1, size2);
end