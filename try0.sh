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
	add=$(zenity --entry \
		     --title=""Bazaardan Alinacaklar"" \
		     --text="Bazaardan Alinacaklari Giriniz : " \
		     --width=350 \
		     --height=250 )
	if [ $? = 0 ]
	then
	zenity --info \
	       --text="$add isimli alinacak basariyla eklenmistir." \
	       --width=450 \
	       --height=300 
		echo $add >> alinacaklar.txt
	else
		zenity --info \
		       --text="$add isimli alinacak basariyla eklenememistir." \
		       --width=350 \
		       --height=250
		       
	fi
fi

if [ $var == "AlinacaklariAra" ]
then
	i=1
	ara=$(zenity --entry \
		     --title="Alinacaklari Ara" \
		     --text="Alinacak nesnenin adini giriniz : " \
		     --width=350 \
		     --height=250 )
	if [ $? == 0 ]
        then
		kontrol=$(cat alinacaklar.txt | grep -w $ara)
		if [ $? == 0 ]
		then
			zenity --info \
			       --text "$ara Alinacak nesne listede bulundu!" \
			       --width=350 \
			       --height=250 \
		else
			zenity --info \
			       --text "$ara Alinacak nesne listede bulunamadi!" \
			       --width=350 \
			       --height=250      
		fi
	else
		zenity --info \
		       --text "Arama Yapilamadi" \
		       --width=350 \
		       --height=250 \
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
        sil=$(zenity --entry \
	             --title="Nesne Alindi" \
		     --text="Alinan nesnenin adi giriniz : " \
	             --width=350 \
		     --height=250 )
        if [ -z "$sil" ]
	then
		zenity --info \
		       --text "Silme Islemi Gerceklesemedi!" \
		       --width=350 \
		       --height=250 
	else
		kontrol=$(cat alinacaklar.txt | grep -w $sil)
		if [ $? == 1 ]
		then
			zenity --info \
			       --text "$sil Adlı Nesne Bazaar Listesinde Bulunmamaktadir" \
			       --width=350 \
			       --height=250 
		else 
			grep -v -w $sil  alinacaklar.txt > tmpfile && mv tmpfile alinacaklar.txt
			zenity --info \
			       --text="$sil Adli nesne silinmistir." \
			       --width=350 \ 
			       --height=250 
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
