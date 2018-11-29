####autre exercice chnager le nommage (0000.T.numérodepage.jpg)
 cp CNAM_Clouet_95.jpg 0000.T.95.jpg
 mv CNAM_Clouet_95.jpg 0000.T.95.jpg
####
ls /home/cnumdev/httpd/htdocs/PNG/PFOLME3/

##pour faire les tests
cd 2018.11.27.15H14.19s/ 
###########################
###version mono

##exemple....0004.T.0.png
###essaie 
copier les fichiers....
cp -r   /home/cnumdev/httpd/htdocs/PNG/PFOLME3  2018.09.20.10H13.11

for i in * ; do echo cp "'$i'" "'${i/CNAM_Clouet_/ 0000.T.}'" ; done
for i in * ; do var2=$(seq -w 0001 0200) ; echo mv $i ${i/CNAM_Clouet_/$var2.T.} ; done


for i in $(seq -w 0001 1 0200) ; do var5=$(ls $i.*); echo cp $var5 $(echo $var5 |sed 's/2018/.T.95/' ) ; done 


for i in *; do for j in $(seq -w 0001 1 0200) ; do echo cp $i $(sed 's/CNAM_Clouet_/$j.95/' ) ; done 




