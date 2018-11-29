###chemins vers les dossiers à océrisés....
cd /home/cnumdev/httpd/htdocs/test/test_echantillon_images/documents_a_oceriser/
cd eng/mono/apres_1801
cd eng_fre_ger_ita/mono/apres_1801
cd eng_fre_ger_spa/mono/apres_1801
cd fre/mono/apres_1801
cd fre_eng_ger/mono/apres_1801
cd fre_ger/mono/apres_1801
cd fre_ita/mono/apres_1801
cd fre_spa/mono/apres_1801
cd ger/mono/apres_1801
cd ita/mono/apres_1801
cd lat/mono/apres_1801
cd spa/mono/apres_1801

###trie tri_selection avec 'grep'
cat 1.html | grep href | grep sresrech.cgi
###'awk' pour ne prendre que l'identifiant des dossiers à océrirés
cat 1.html | grep href | grep sresrech.cgi | awk -F '?' '{ print $2 }'
cat 1.html | grep href | grep sresrech.cgi | awk -F '?' '{ print $2 }'| awk -F '/' '{ print $1 }'

########################chemin vers les documents à oceriser(first step)
cd /home/cnumdev/httpd/htdocs/test/test_echantillon_images/documents_a_oceriser
#eng
var0='eng' ###on declare la variable(liée à la langue) suivi du code(second step)
var1=$(cat /home/cnumdev/httpd/htdocs/test/test_echantillon_images/documents_a_oceriser/$var0/tout.html | grep href | grep sresrech.cgi | awk -F '?' '{ print $2 }'| awk -F '/' '{ print $1 }'| sort | uniq ) ; echo $var1

##recherche et trie par identifiant des fichers (langues) dans le server
##ocr_fait
var0='lat'

#4langues_fait
var0='eng_fre_ger_ita'

#4langues_fait
var0='eng_fre_ger_spa'

#3langues_fait
var0='fre_eng_ger'

#2langues_fait
var0='fre_ger'

#2langues_fait
var0='fre_ita'

#2langues_fait
var0='fre_spa'

##ger_fait
var0='ger'

###ita_fait
var0='ita'

#############
###dossier genere contenant les dossiers de langues
cd /home/yaterab/2018.11.12.13H32.55s
#############
####ces codes permettent d'avoir les dossiers avec leurs chemins pour les différentes formats(third step)
for i in $var1 ; do ls -d /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs/$i ; done
for i in $var1 ; do ls -d /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/png/$i ; done
#############
#####recherche par dossier pour avoir les chemins
for i in $var1 ; do find /home/cnumdev/httpd/htdocs/ORIGS -type d -name $i ; done
for i in $var1 ; do find /home/cnumdev/httpd/htdocs/ORIGS_DIFFUSION -type d -name $i ; done
for i in $var1 ; do find /home/cnumdev/httpd/htdocs/PNG -type d -name $i ; done



