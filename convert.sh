####CONVERTISSEUR DE FORMAT
###chemin des fichier/chemin des fichiers tests
cd /home/cnumdev/httpd/htdocs/DEV/solr_not_entry3/boubacar_test
cd 2018.11.27.15H14.19s/

##cette version permet de convertir à l'unité
##version mono
convert test.jpg test1.png 

###cette version est une boucle
###version bouclée pour observer le result 
for i in *.png ; do echo convert "$i" "${i%.*}.jpg" ; done 

###version bouclée pour effectuer la transformation
for i in *.png ; do convert "$i" "${i%.*}.jpg" ; done 

###boucle pour faire des séquences(de 0296 à 0625)
for i in $(seq -w 0296 1 0625) ; do var5=$(ls $i.*); echo convert "$var5" "${var5%.*}.png" ; done ###bon code

####à finir avec le sed pour remplacer le tiff
for i in $(seq -w 0296 1 0625) ; do var5=$(ls $i.*); echo convert $var5 $(echo $var5 |sed 's/tif/jpg/' ) ; done 


						



								#Rebut
###boucle pour voir si ca marche d'une autre maniére
for i in *.png ; do convert "$i" "${i%.*}.jpg" ; done ###version bouclée pour effectuer la transformation

for i in $(seq 296 1 625) ; do echo $i ; done ###ce code des chiffres par séquences de 296 à 625...

for i in $(seq -w 0296 1 0625) ; do ls $i.*; done ###ce code affiche les fichiers de 296 à 625..




########################### autre exercice changer le nommage des fichiers (0000.T.numérodepage.jpg)

ls /home/cnumdev/httpd/htdocs/PNG/PFOLME3/
cd 2018.11.27.15H14.19s/ ##pour faire les tests


###########################