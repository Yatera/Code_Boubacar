####autre exercice chnager le nommage (0000.T.numérodepage.jpg)
ls /home/cnumdev/httpd/htdocs/PNG/PFOLME3/
##pour faire les tests
cd 2018.11.27.15H14.19s/ 
###########################
###version mono
cp CNAM_Clouet_95.jpg 0000.T.95.jpg
mv CNAM_Clouet_95.jpg 0000.T.95.jpg
##exemple....0004.T.0.png

###copier les fichiers....
cp -r   /home/cnumdev/httpd/htdocs/PNG/PFOLME3  2018.09.20.10H13.11

###essaie code qui permet de changer le nom de fichier blablabl.jpg en  0000.P.jpg 
###ca marcheeeee
var=0 ; for i in $(ls -v) ;do let "var=var+1" ; echo  mv "$i"  "${i/CNAM_Clouet_/"$(printf "%04d\n" "$var")".P.}" ; done  #le bon code







####code pour changer le nom de fichier sauf que là j'ai ajouté un 0 avant ma $var
let "var=var+1" ###permet l'incrementation
for i in * ; do let "var=var+1"; echo cp "$i" "${i/CNAM_Clouet_/0"$var".P.}" ; done


###code qui permet de changer le nom de fichier blablabl.jpg en  1116.P.96.jpg avec une incrementation à quatre chiffre
let "var=var+1" ###permet l'incrementation
for i in *; do let "var=var+1"; echo cp "$i"  "${i/./"$(printf "%04d\n" "$var")".P.}" ; done ###bon code


###essaie code qui permet de changer le nom de fichier avec incrementation 
for i in $(ls -r *) ; do let "var=var+1" ; echo cp "'$i'" "'${i/CNAM_Clouet_/P.}'" | echo cp "$i"  "${i/CNAM_Clouet_/"$(printf "%04d\n" "$var")".P.}" ; done

var1=$(for i in $(ls *|  awk -F '.' '{ print $2}'); do echo .$i ; done); echo $var1

for i in $var1 ; do let "var=var+1" ; echo mv "$i"  "${i/./"'$(printf "%04d\n" "$var")'.'$(printf "%03d\n" "$var")'".P.}"; done

for i in $var1 ; do let "var=var+1" ; echo mv "$i"  "${i/./"'$(printf "%04d\n" "$var")'.'$(printf "%03d\n" "$var")'".P.}"; done


###bon chemin sauf que faut le retravailler
var1=$(ls *.jpg| awk -F '.' '{ print $2}'); echo $var1 
for i in $var1 ; do let "var=var+1" ; echo mv "$i"  "${i/jpg/"$(printf "%04d\n" "$var")"."$var".P.jpg}"; done ##c'est bon (à modifier selon les besoins)

/home/cnumdev/httpd/htdocs/ORIGS/EXPOS/EXPOS_2009_ACRPP_CONGRES_DELEGATION_OUV_LOT4/CONGRES/8XAE475





############################################################################################################
##autre manière de faire de..jp
cd /home/cnumdev/httpd/htdocs/PNG/PFOLME3/2018.11.29.PFOLME3

for i in $var5 ; do echo mv $i $(echo $i | sed 's/CNAM_Clouet_//') ; done | head

mv x.jpg 140.jpg

for i in $(ls | awk -F '.' '{print $1}') ; do j=$(printf "%03d\n" "$i") ; echo mv $i.jpg $j.jpg.new_file ; done

# renommer les fichiers r▒sultats
ls *.new_file | awk -F ".new_file" '{ print "mv " $0 " " $1}' #|sh

# on supprime le 003.jpg "CNAM_Clouet_78 est identique ▒ CNAM_Clouet_3" car identique ▒ 078.jpg
rm 003.jpg
# d▒placer le 140 en 003
mv 140.jpg 003.jpg

j=0 ; for i in $(ls) ; do let "j++" ; k=$(printf "%04d\n" "$j") ; echo mv $i $k".P."$(echo $i | sed 's/^0*//') ; done | head

mv 0050.P.50.jpg 0049.P.49.jpg.new_file
mv 0049.P.49.jpg 0050.P.50.jpg.new_file
ls *.new_file | awk -F ".new_file" '{ print "mv " $0 " " $1}' #|sh
 