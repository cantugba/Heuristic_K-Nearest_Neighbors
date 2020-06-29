function hata = KNN(katsayi, komsuSayisi, distanceFormul, oylamaTuru)
    global KNN_VERI_SINIFLARI
    global DOGRULAMA_VERI_SETI
    global SINIF_SAYISI
    global DOGRULAMA_VERI_SETI_SINIFLARI 
   
    fonksiyon = chooseDistance(distanceFormul);
    hata = 0;
    siniflar = zeros(1,SINIF_SAYISI);
    
    satir = size(DOGRULAMA_VERI_SETI, 1);
    
    for i=1:satir
        uzaklik = fonksiyon(DOGRULAMA_VERI_SETI(i,:), katsayi);
        [siraliUzaklik, neighborClasses] = sort(uzaklik);
        
        for j=1:komsuSayisi
           indeks =  neighborClasses(j);
           if oylamaTuru == 1 % normal
               siniflar(KNN_VERI_SINIFLARI(indeks)) = 1 + siniflar(KNN_VERI_SINIFLARI(indeks));
           else
               siniflar(KNN_VERI_SINIFLARI(indeks)) = siniflar(KNN_VERI_SINIFLARI(indeks)) + ( 1 / (siraliUzaklik(j)^2));
           end
        end

       [~, neighborClasses] =  max(siniflar);
       
       
       if DOGRULAMA_VERI_SETI_SINIFLARI(i) ~= neighborClasses
           hata = hata + 1 ;
       end
     siniflar(1:SINIF_SAYISI) = 0;
    end
   
end

