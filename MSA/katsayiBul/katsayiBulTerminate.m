function [globalMin, lowerBand, upperBand, numberDimension, maximumEpoc, population] = katsayiBulTerminate()
    global NITELIK_SAYISI
    population = 50;
    tolerance = 0;
    globalMin = 0;
    lowerBand = zeros(1,NITELIK_SAYISI);
    upperBand = ones(1, NITELIK_SAYISI);
    numberDimension = NITELIK_SAYISI;
    maximumEpoc = (1000*numberDimension) + 80000; 
    globalMin = globalMin + tolerance;
end
