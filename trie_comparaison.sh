##trier par nom(format) de fichiers poour savoir dans quelle dossier on trouve les sous-dossiers
##trier par nom de fichiers
var_chemin1=$(ls /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs) ; echo $var_chemin1
var_chemin2=$(ls /home/cnumdev/httpd/htdocs/DEV/GIFS) ; echo $var_chemin2
var_cheminf=$(echo $var_chemin1 $var_chemin2 | tr ' ' '\n' | sort -n | uniq -d | ls * ) ; echo $var_cheminf
###verifie quelle fichier n'est pas dans la var_chemin2
echo $var_chemin1 $var_chemin2 | tr ' ' '\n' | sort -n | uniq -d | xargs echo $var_chemin1 | tr ' ' '\n' | sort -n | uniq -u

###verifie quelle fichier n'est pas dans la var_chemin1
echo $var_chemin1 $var_chemin2 | tr ' ' '\n' | sort -n | uniq -d | xargs echo $var_chemin2 | tr ' ' '\n' | sort -n | uniq -u

###verifie quelle fichier est  dans l'autre dossier(intersection de fichiers) avec un nombre de resultat à afficher
echo $var_chemin1 $var_chemin2 | tr ' ' '\n' | sort -n | uniq -d

#affiche un resultat sans les fichiers qui se trouve à la fois dans var_chemin1 et var_chemin2
echo $var_chemin1 $var_chemin2 | tr ' ' '\n' | sort -n | uniq -u


###comparaison des identifiant_dossiers avec les différents chemins
# vérifie quelles valeurs de $var1 est dans $var2 (code fiable)
for id in $var_chemin1; do echo $var_chemin2 | grep $id >/dev/null ; if [ $? == 0 ] ; then echo $id" : oui"; else echo $id" : non" ; fi ; done | grep oui | awk -F " : oui" '{print $1}'

# vérifie quelles valeurs de $var1 n'est pas dans $var2(code fiable)
for id in $var_chemin1; do echo $var_chemin2 | grep $id >/dev/null ; if [ $? == 0 ] ; then echo $id" : oui"; else echo $id" : non" ; fi ; done | grep non | awk -F " : non" '{print $1}'