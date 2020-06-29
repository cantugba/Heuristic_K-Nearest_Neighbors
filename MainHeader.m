clear
clc
Path;

komsuSayisi = [16 7];

uzaklikFormulIndex = [1 2];
uzaklikFormulAdlari = ["oklid", "manhattan"]; % excele yazdýrmada, excel adý için kullanýlýyor

algorithms = {'sos_boyutAzalt'}; % çalýþtýrýlacak algoritmalar

dataExcellFileName = [ "Data_for_UCI_named", "avila"];