function [ hataDegeri ] = boyutAzaltCalculate( esitDeger, katsayi, komsuSayisi, distanceFormul, oylamaTuru )
    global KNN_VERI_SETI
    global DOGRULAMA_VERI_SETI
    global NITELIK_SAYISI
    
    silinecekIndexler = katsayi<esitDeger;
    silinecekKolonSayisi = sum(silinecekIndexler);
    if silinecekKolonSayisi == NITELIK_SAYISI
        hataDegeri = inf;
    else 
        old_KNN_VERI_SETI = KNN_VERI_SETI;
        old_DOGRULAMA_VERI_SETI = DOGRULAMA_VERI_SETI;

        katsayi(silinecekIndexler) = [];
        KNN_VERI_SETI(:,silinecekIndexler) = [];
        DOGRULAMA_VERI_SETI(:,silinecekIndexler) = [];

        hataDegeri =  KNN(katsayi, komsuSayisi, distanceFormul, oylamaTuru);
        hataDegeri = hataDegeri - (2 * silinecekKolonSayisi);

        KNN_VERI_SETI = old_KNN_VERI_SETI;
        DOGRULAMA_VERI_SETI = old_DOGRULAMA_VERI_SETI;

    end
end