function uzaklik = manhattan(veri, katsayi)
    global KNN_VERI_SETI
    
    satir = size(KNN_VERI_SETI, 1);
    uzaklik = zeros(1,satir);
    
    for index=1:satir
        uzaklik(index) = sum( (abs(KNN_VERI_SETI(index, :) - veri)) .* katsayi);
    end
end