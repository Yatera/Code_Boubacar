#!/bin/bash
####création de variable=(valeur)/affichage/converssion/isolation/selection du fisrt line/selection du second caractére/suprime le dernier caractére pour afficher le resultat.


# version mono  
var0='0010.T.2.PNG.result.xml'
#
var0='0005.T.r1.PNG.result.xml'
#
var0='0128.T.058V.JPG.result.xml'
 
var1=$(cat $var0 | iconv -c -f UTF-16 -t UTF-8 | grep -Eo 'TotalCharacters="[^\"]+"' | head -1 | awk -F 'TotalCharacters="' '{ print $2 }' | sed 's/.\{1\}$//g') ; var2=$(cat $var0 | iconv -c -f UTF-16 -t UTF-8 | grep -Eo 'UncertainCharacters="[^\"]+"' | head -1 | awk -F 'UncertainCharacters="' '{ print $2 }' | sed 's/.\{1\}$//g') ; echo $var2"/"$var1

var3=$(echo "scale=4; $var2/$var1" *100 | bc) && echo $var3


# version bouclée
for var0 in $(ls) ; do var1=$(cat $var0 | iconv -c -f UTF-16 -t UTF-8 | grep -Eo 'TotalCharacters="[^\"]+"' | head -1 | awk -F 'TotalCharacters="' '{ print $2 }' | sed 's/.\{1\}$//g') ; var2=$(cat $var0 | iconv -c -f UTF-16 -t UTF-8 | grep -Eo 'UncertainCharacters="[^\"]+"' | head -1 | awk -F 'UncertainCharacters="' '{ print $2 }' | sed 's/.\{1\}$//g') ; echo $var2"/"$var1 ; var3=$(echo "scale=4; $var2/$var1" *100 | bc) ; echo $var3 ; done












####################
var3=$((var1/var2))
for i in $((var1/var2)); do echo $var3; done




#### REBUT #################

####essais
for i in $var1" "$var2 ; do $((var1/var2)); echo $i ; done


var1=$(

cat $var0
iconv -c -f UTF-16 -t UTF-8
grep -Eo 'TotalCharacters="[^\"]+"'
head -1
awk -F 'TotalCharacters="' '{ print $2 }'
sed 's/.\{1\}$//g') ; var2=$(cat $var0
iconv -c -f UTF-16 -t UTF-8
grep -Eo 'UncertainCharacters="[^\"]+"'
head -1
awk -F 'UncertainCharacters="' '{ print $2 }'
sed 's/.\{1\}$//g'



) ; echo $var2"/"$var1














