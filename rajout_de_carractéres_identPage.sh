###changement et rajout de carractéres
#cd /home/cnumdev/httpd/htdocs/ORIGS/FRANCOEUR/4KY3.1
cd ~/2018.10.29.11H10.39s/4KY3.1
001P001.JPG
0001P001JPG
0001.P001.JPG
####rajout de caractères 001P001.jpg=0001P001  version mono
sed 's/P/.P/'
####rajout de caractères 001P001.jpg=0001P001  version mono avec mv(copi)
echo mv $i $(echo "0"$i)

####rajout de caractères 001P001.jpg=0001P001  version mono
echo 0053.P.053.JPG| sed 's/0/00/' | sed 's/P/.P/'

#chemin du fichier/dossier(dossier genere)
cd ~/2018.10.29.11H10.39s/4KY3.1

####rajout de caractères avec sed... 001P001.JPG=0051.P051.JPG(ne prend que en compte les typages p)
for i in $(ls | sed 's/0/00/' | sed 's/P/.P/') ; do echo $i ; done

#chemin du fichier/dossier(dossier genere)
cd ~/2018.10.29.11H10.39s/4KY3.1
####rajout de caractères avec sed... 001P001.JPG=0051.P051.JPG (la bonne solution  qui prend en compte les typages p,t...)
for i in $(ls) ; do echo mv $i $(echo $i| awk -F '' '{print "0"$1 $2 $3 "." $4 "."$5 $6 $7 $8 $9 $10 $11 }'); done