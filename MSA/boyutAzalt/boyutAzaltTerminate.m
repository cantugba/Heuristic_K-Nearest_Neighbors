function [globalMin, lowerBand, upperBand, numberDimension, maximumEpoc, population] = boyutAzaltTerminate()
    population = 50;
    tolerance = 0;
    globalMin = 0;
    lowerBand = 0;
    upperBand = 1;
    numberDimension = 1;
    maximumEpoc = (1000*numberDimension); 
    globalMin = globalMin + tolerance;
end
