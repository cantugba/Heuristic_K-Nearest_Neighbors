# SezgiselKNN-HeuristicKNN

### Veri Madenciliği dersi uygulama projesidir. Yapılan çalışmada Sezgisel KNN ve Sezgisel YSA yöntemlerinin sınıflandırma performansları değerlendirilmiştir.

Sınıflandırma, veri madenciliğinin önemli bir parçasıdır. Sınıflandırma kavramı, basitçe bir veri kümesi üzerinde tanımlı olan çeşitli sınıflar arasında veriyi dağıtmaktır.
Sınıflandırma algoritmaları, verilen eğitim kümesinden bu dağılım şeklini öğrenirler ve daha sonra sınıfının belirli olmadığı test verileri geldiğinde doğru şekilde
sınıflandırmaya çalışırlar.Veri kümesi üzerinde verilen bu sınıfları belirten değerlere etiket ismi verilir ve gerek eğitim gerekse test sırasında verinin sınıfının belirlenmesi
için kullanılırlar. Sınıflandırma alanında birçok yöntem ve algoritma geliştirilmiştir. Bu yöntemler arasında en yaygın kullanılan algoritmalardan bir tanesi k- en yakın komşu 
(k-nn) algoritmasıdır. Genel olarak k-nn, sınıflandırma sırasında çıkarılan özelliklerden, sınıflandırılmak istenen yeni bireyin daha önceki bireylerden k tanesine olan yakınlığına
bakılmasıdır.

K-NN algoritmasında komşulara olan uzaklık hesaplamasında bağımsız değişkenlerin etki oranının daima 1 alınması ve YSA ağırlıkların bulunması için kullanılan geleneksel 
algoritmalar,  yerel optimum tuzaklarına takılabilmektedirler.  Bu nedenle yüksek doğruluk oranı gösteremeyebilirler. YSA ve K-NN de en iyi değerlerinin bulunması bir optimizasyon 
problemidir. Literatürde optimizasyon alanında sıklıkla kullanılan ve özellikle karmaşık problemlerde kabul edilebilir çözümler bulabilen meta sezgisel algoritmalar ile
YSA ve K-NN modellerinde ağırlıkların en uygun değerlerinin bulunmasında kullanılabilir. Bu çalışmada  Sezgisel Algoritma olarak SOS (Symbiosis Organisms Search) algoritması 
kullanılmıştır. 

Sezgisel k-nn,  k- en yakın komşu algoritması ve sezgisel arama algoritmalarının teknikleri ile hibrit bir yapı oluşturularak geliştirilmişbir yöntemdir.
Bu çalışmada  Sezgisel Algoritma olarak SOS (Symbiosis Organisms Search) algoritması kullanılmıştır. 

KNN ve YSA performanslarını değerlendirmek için UCI makine öğrenme deposundan 2 veri seti alınmıştır. Veri setlerinin özellikleri:

#### 1. Electrical Grid Stability Simulated: 
- Toplam Veri Seti : 6000 
- Nitelik Sayısı : 13
- Etiket Sayısı : 2
- Etiket : 0,1
- 0-> 3833 tane
- 1-> 2161 tane

#### 2. Avila Data Set: 
- Toplam Veri Seti : 3509 
- Nitelik Sayısı : 10
- Etiket Sayısı : 6
- Etiket : 1,2,3,4,5,6
- 1->1640 tane
- 2-> 105 tane
- 3-> 294 tane
- 4-> 1019 tane
- 5-> 239 tane
- 6-> 212 tane

1 nolu veri setinin 1-2000 arası YSA ve KNN ağırlıklarının bulunmasında, 2001-4000 arası performans değerlendirmesinde ve 4001-6000 arası KNN’de sınıflandırma yapılmak 
üzere bölünmüştür. 

2 nolu veri setinin 1001-2000 arası YSA ve KNN ağırlıklarının bulunmasında, 2001-3509 arası performans değerlendirmesinde ve 1-1000 arası KNN’de sınıflandırma yapılmak üzere
bölünmüştür. 

KNN ve YSA ağırlıklarının bulunmasında Simbiyotik Organizmalar Arama Algoritması(SOS Algorithm) kullanılmıştır. 
Maksimum iterasyon sayısı (1.000 * problem boyutu) + 80.000 olarak belirlenmiştir. Hazırlanan modeller 4 kez çözümlenmiştir ve en düşük hataya sahip model seçilmiştir.
