clear
clc
Path;
global NITELIK_SAYISI 
uzaklikFormulIndex = [1 2];
uzaklikFormul = ["oklid", "manhattan"];
dataName = [ "liverDisorders", "avila", "ionosphere"];
 for dataIndex = 1 : 1
     parseData(dataName(dataIndex), 1:100, 101:345);
     for uzaklikIndex = 1: 2
         for oylamaIndex= 1 : 2
            for komsuIndex = 1: 30
                hata(komsuIndex) = KNN(ones(1, NITELIK_SAYISI), komsuIndex, uzaklikFormulIndex(uzaklikIndex), oylamaIndex);
             end
            [deger, index]= min(hata);
            xlswrite( strcat(dataName(dataIndex),'_', uzaklikFormul(uzaklikIndex), num2str(oylamaIndex), '.xlsx'), deger, 'Hata');
            xlswrite( strcat(dataName(dataIndex),'_', uzaklikFormul(uzaklikIndex), num2str(oylamaIndex), '.xlsx'), index, 'KomsuSayisi');
         end

     end

   
 end