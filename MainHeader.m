clear
clc
Path;

komsuSayisi = [16 7];

uzaklikFormulIndex = [1 2];
uzaklikFormulAdlari = ["oklid", "manhattan"]; % excele yazd�rmada, excel ad� i�in kullan�l�yor

algorithms = {'sos_boyutAzalt'}; % �al��t�r�lacak algoritmalar

dataExcellFileName = [ "Data_for_UCI_named", "avila"];