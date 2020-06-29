function [fonksiyon] = chooseDistance(selectKey)
    names = {@oklid, @manhattan};
    [~, sutun] = size(names);
    key = 1:sutun;
    fonksiyonMap = containers.Map(key,names);   
    fonksiyon = fonksiyonMap(selectKey);
end
