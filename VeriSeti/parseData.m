function [] = parseData(file, hamDataIndex, dogrulamaIndex)

    global KNN_VERI_SETI % KNN'IN s�n�flamd�rmada kullanaca�� data
    global KNN_VERI_SINIFLARI % KNN'IN s�n�flamd�rmada kullanaca�� datan�n s�n�flar�

    global DOGRULAMA_VERI_SETI % S�n�fland�rma yap�lacak veri seti 
    global DOGRULAMA_VERI_SETI_SINIFLARI % S�n�fland�rma yap�lacak veri seti'nin s�n�flar�

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


