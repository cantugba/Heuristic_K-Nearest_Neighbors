MainHeader;

for algorithmIndex = 1 : length(algorithms)
    algorithm = str2func(char(algorithms(algorithmIndex)));
    for dataIndex = 2 : 2
        parseData(dataExcellFileName(dataIndex), 1:1000, 1001:2000);
        for uzaklikFormul = 1 : 2
            for runIndex = 1 : 4 
                  [bestSolution, bestFitness, iter] = algorithm(komsuSayisi(uzaklikFormul), uzaklikFormulIndex(uzaklikFormul), 2);
                  bestAgirlik(:, runIndex) = bestSolution;
                  bestHata(runIndex) = bestFitness;
                  algorithmIter(runIndex) = iter;
            end  
            xlswrite(strcat(func2str(algorithm),'_', uzaklikFormulAdlari(uzaklikFormul), '.xlsx'), bestHata, "Hata");
            xlswrite(strcat(func2str(algorithm),'_', uzaklikFormulAdlari(uzaklikFormul), '.xlsx'), algorithmIter, "Iter");
            xlswrite(strcat(func2str(algorithm),'_', uzaklikFormulAdlari(uzaklikFormul), '.xlsx'), bestAgirlik, "Agirlik");
        end
    end
end