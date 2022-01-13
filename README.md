
# ~Go~ TODO ~Bazaar~
**Bash script ve Zenity kütüphanesiyle kodlanmis bir programdir.**

![main](https://user-images.githubusercontent.com/51748845/149223029-2a2b81b4-ef8c-4c70-b259-eeb184713cc5.gif)


## Nasıl Kurulur&Nasıl Çalıştırılır?
Uygulama arayüzü zenity ile programlandığından bilgisayarınızda zenity kurulu olmalıdır.
Kurulum için aşağıdaki komutu kullanabilirsiniz.
```sudo apt-get install zenity```

Projeye çalıştırabilme yetkisi vermek için:
``` chmod +x try0.sh```

Ardından çalıştırmak için 
```./try0.sh```

## Özellikleri
•Ana menüden istediğimiz seçeneğe çift tıklayarak ya da seçtikten sonra OK butonunu kullanabilirsiniz.

•Database e erişme

**Alinacaklar** --> "Bazaardan Alinacaklari Ekler"

**Alinacaklari Ara**  --> "Bazaar Listesinde Arama Yapar"

**Alicanaklari Gor** --> "Bazaardan Alinacaklari Listeler"

**Alindi** --> "Bazaardan Alinanlari Siler"

**Exit** --> "Programi Sonlandirir!

![main](https://user-images.githubusercontent.com/51748845/149372368-9c87c088-cd50-40c2-9afd-40bedc8677f1.png)
## Alinacaklar

![main](https://user-images.githubusercontent.com/51748845/149372373-1e0d38e8-a0dc-47aa-8b0b-1189a8a24d75.png)

![main](https://user-images.githubusercontent.com/51748845/149372382-ff6731ca-1406-48af-b937-abe7b037f1a2.png)

• Ana menüden **Alinacaklar** kısmına tıkladığımızda ekrana bazaardan alınacakları ekleyeceğimiz bir ekran karşılıyor.

• Eklenecek nesneyi yazdıkdan sonra OK tuşuna basarak ana menüye geri dönüş sağlanıyor.

## AlinacaklariAra

![main](https://user-images.githubusercontent.com/51748845/149372387-a6f574c6-d821-4e46-a5e4-0736238ba74a.png)
  
![main](https://user-images.githubusercontent.com/51748845/149372395-0f2d8e00-9b2f-4da4-9309-14f6acd20112.png)
![main](https://user-images.githubusercontent.com/51748845/149374721-5ec70a3b-8406-4fa6-a6af-5952e7db6f12.png)

• Girilen değerin database de bulunma durumu kontrol edilir. Datebasede mevcut ise bulunduğuna dair ekrana mesaj çıkar.

• Databasede aranan ürün mevcut değil ise bir hata mesajı verir. OK butonu ile ana menüye dönüş yapabilirsiniz.

## AlicanaklariGor

![main](https://user-images.githubusercontent.com/51748845/149372407-e41c728d-42c2-44cc-8804-27b643adb3fc.png)

• Databasedeki tüm alınacak bazaar nesnelerini gösterir.

## Alindi

![main](https://user-images.githubusercontent.com/51748845/149372412-9512a9ea-b293-486c-a93e-b26b5a37490c.png)

![main](https://user-images.githubusercontent.com/51748845/149372415-75fe6961-1375-44f5-8f13-663c81209451.png)
![main](https://user-images.githubusercontent.com/51748845/149374717-b8baa667-5902-4f33-a55c-91f7cf7c5355.png)

• Ana menüden Alindi kısmına tıkladığımızda bizi bir data girişi yapabilceğimiz ekran karşılar.

• Girilen değerin database de bulunma durumu kontrol edilir. Datebasede mevcut ise silinir. Bilgilendirme ekranı ile silinen ürün belirtilir.

• Girilen veri database de bulunmuyorsa bulunmadıgına yönelik mesaj verir.

• Her iki durumda da OK butonu ile ana menüye dönüş yapabilirsiniz.

## Exit

![main](https://user-images.githubusercontent.com/51748845/149372421-3c8e7576-c3ce-4b97-8af0-992e27f10e08.png)

![main](https://user-images.githubusercontent.com/51748845/149372425-d6af5ac9-6759-4c43-a8e8-81a0b127a991.png)

• Uygulamadan çıkmaya karar verdiğinizde menüden seçerek uygulamadan ayrılabilirsiniz.

• Çıkarken emin misiniz diye sorarak olası yanlış tıklamaların önüne geçilmesi sağlanmıştır.


## YouTube Linki

[Linke](https://youtube.com) tıklayarak projenin anlatımını izleyebilirsiniz.


## Kullanılan Teknolojiler
• Zenity  Kütüphanesi (GUI)

• Bash Script

##

•Linux Araçları ve Kabuk Programlama Donem Projesi icin hazırlanmıstır.

•**"2) Shell Script kullanılarak basit bir TODO List uygulaması yapılacak. Veritabanı olarak text file kullanılacak. Ne kadar çok özellik varsa o kadar fazla puan alırsınız."**  maddesi secilmistir  ve bu bağlamda proje bir Pazar (Bazaar) Uygulaması olarak geliştirilmiştir. Farklı özellikler eklenerek pazar alışverişi yaparken tüm ihtiyaçları karşılayacak şekilde hazırlanmıştır.
