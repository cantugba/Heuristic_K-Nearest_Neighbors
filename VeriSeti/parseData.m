function [] = parseData(file, hamDataIndex, dogrulamaIndex)

    global KNN_VERI_SETI % KNN'IN sýnýflamdýrmada kullanacaðý data
    global KNN_VERI_SINIFLARI % KNN'IN sýnýflamdýrmada kullanacaðý datanýn sýnýflarý

    global DOGRULAMA_VERI_SETI % Sýnýflandýrma yapýlacak veri seti 
    global DOGRULAMA_VERI_SETI_SINIFLARI % Sýnýflandýrma yapýlacak veri seti'nin sýnýflarý

    global SINIF_SAYISI
    global NITELIK_SAYISI

  [data, dataSiniflari] = excellVeriOku(file);   
  
  KNN_VERI_SETI = data(hamDataIndex,:);
  KNN_VERI_SINIFLARI = dataSiniflari(hamDataIndex,:);
  
  
  DOGRULAMA_VERI_SETI = data(dogrulamaIndex, :);
  DOGRULAMA_VERI_SETI_SINIFLARI = dataSiniflari(dogrulamaIndex, :);
  
  NITELIK_SAYISI = size(KNN_VERI_SETI, 2);
  
  cLabel = unique(DOGRULAMA_VERI_SETI_SINIFLARI);
  cCount = histc(DOGRULAMA_VERI_SETI_SINIFLARI, cLabel);
  
  SINIF_SAYISI = size(cCount, 1);

end

function [data, dataSiniflari] = excellVeriOku(dosyaAdi)
    data = xlsread(strcat(dosyaAdi,'.xlsx'), 'data');
    dataSiniflari = xlsread(strcat(dosyaAdi,'.xlsx'), 'class');
end


