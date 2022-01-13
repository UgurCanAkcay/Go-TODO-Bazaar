#!/bin/bash

while [ 1 ]
do
var=$(zenity --list \
    --height=400 \
    --width=600 \
    --title="Go TODO BAZAAR" \
    --text="Uygulamada Yapmak Istediginiz Islemi Seciniz!!" \
    --column="Islem" --column="Aciklama" \
Alinacaklar "Bazaardan Alinacaklari Ekler" \
AlinacaklariAra "Bazaar Listesinde Arama Yapar" \
AlinacaklariGor "Bazaardan Alinacaklari Listeler" \
Alindi "Bazaardan Alinanlari Siler" \
Exit "Programi Sonlandirir!" )

i=0

if [ $var == "Alinacaklar" ]
then
	i=1
	add=$(zenity --entry --width=350 --height=250 --title=""Bazaardan Alinacaklar"" --text="Bazaardan Alinacaklari Giriniz : ")
	if [ $? = 0 ]
	then
	zenity --info --width=450 --height=300 --text="$add isimli alinacak basariyla eklenmistir."
		echo $add >> alinacaklar.txt
	else
		zenity --info --width=350 --height=250 --text="$add isimli alinacak basariyla eklenememistir."
	fi
fi

if [ $var == "AlinacaklariAra" ]
then
	i=1
	ara=$(zenity --entry --width=350 --height=250 --title="Alinacaklari Ara" --text="Alinacak nesnenin adini giriniz : ")
	if [ $? == 0 ]
        then
		kontrol=$(cat alinacaklar.txt | grep -w $ara)
		if [ $? == 0 ]
		then
			zenity --info --width=350 --height=250 --text "$ara Alinacak nesne listede bulundu!"
			
		else
			zenity --info --width=350 --height=250 --text "$ara Alinacak nesne listede bulunamadi!"
		fi
	else
		zenity --info --width=350 --height=250 --text "Arama Yapilamadi"	
	fi

fi

if [ $var == "AlinacaklariGor" ]
then
	i=1
	gor=$(cat alinacaklar.txt)
	zenity --text-info --filename=alinacaklar.txt
fi

if [ $var == "Alindi" ]
then
	i=1
        sil=$(zenity --entry --width=350 --height=250 --title="Nesne Alindi" --text="Alinan nesnenin adi giriniz : ")
        if [ -z "$sil" ]
	then
		zenity --info --width=350 --height=250 --text "Silme Islemi Gerceklesemedi!"
	else
		kontrol=$(cat alinacaklar.txt | grep -w $sil)
		if [ $? == 1 ]
		then
			zenity --info --width=350 --height=250 --text "$sil Adlı Nesne Bazaar Listesinde Bulunmamaktadir"
		else 
	
			grep -v -w $sil  alinacaklar.txt > tmpfile && mv tmpfile alinacaklar.txt
			zenity --info --width=350 --height=250 --text="$sil Adli nesne silinmistir."
		fi
	fi
	
		
fi

if [ $var == "Exit" ]
then		
	zenity --question \
  	--title="Question" \
  	--width=250 --height=150\
  	--text="Bazaardan ayrilmak istedigine emin misin?"
  	if [ $? = 0 ]; then
  	zenity --info --width=250 --height=150 --text="Bazaardan Ayrildin."
  	exit
  	fi

elif [ $i == 0 ]
then
	zenity --question \
  	--title="Soru" \
  	--width=250 --height=150\
  	--text="Bazaardan ayrilmak istedigine emin misin?"
  	if [ $? = 0 ]; then
  	zenity --info --width=250 --height=150 --text="Bazaardan Ayrildin."
  	exit
  	fi
fi

done
