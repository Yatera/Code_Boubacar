######
################extraction du largeur et de la hauteur.
#chemin du fichier/dossier version mono
cd /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs/P980.78
# largeur de l'image. extraction de données largeur x hauteur 
identify 0011.T.0.tif | awk -F ' ' '{print $3}' | awk -F 'x' '{print $1}'
# hauteur de l'image
identify 0011.T.0.tif | awk -F ' ' '{print $3}' | awk -F 'x' '{print $2}'
#######################
#chemin du fichier/dossier. j'ai passer le code dans une variable (version mono)
cd /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs/12C14.1
# largeur de l'image. extraction de données largeur x hauteur 
var1=$(identify *.tif| awk -F ' ' '{print $3}' | awk -F 'x' '{print $1}')
# hauteur de l'image
var2=$(identify *.tif | awk -F ' ' '{print $3}' | awk -F 'x' '{print $2}')
###################


####(version bouclée) pour récupèrer la lageur et la hauteur des fichiers
cd /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs/12C14.1
cd /home/cnumdev/httpd/htdocs/DEV/GIFS/12C14.1
for i in $(ls) ; do var_taille=$(identify $i | awk -F ' ' '{print $3}') ;  largeur=$(echo $var_taille |  awk -F 'x' '{print $1}') ; hauteur=$(echo $var_taille |  awk -F 'x' '{print $2}'); echo "largeur:$largeur" "hauteur:$hauteur" ; done


####version bouclée pour récupèrer le lageur et le hauteur des fichiers tifs
cd /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs/12C14.1
for i in $(ls) ; do var_taille=$(identify $i | awk -F ' ' '{print $3}') ;  largeur=$(echo $var_taille |  awk -F 'x' '{print $1}') ; hauteur=$(echo $var_taille |  awk -F 'x' '{print $2}'); echo "largeur:$largeur" "hauteur:$hauteur" ; done

####version bouclée pour récupèrer le lageur et le hauteur des fichiers gifs
cd /home/cnumdev/httpd/htdocs/DEV/GIFS/12C14.1
for i in $(ls) ; do var_taille=$(identify $i | awk -F ' ' '{print $3}') ;  largeur=$(echo $var_taille |  awk -F 'x' '{print $1}') ; hauteur1=$(echo $var_taille |  awk -F 'x' '{print $2}'); echo "largeur:$largeur" "hauteur:$hauteur1" ; done


###le bon code pour extraire les largeurs des deux fichiers(tif,gif)
##création de variables
var_ident='12C14.1' # var_ident='4KY3.1'
var_chemin='/home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs'
var_chemin_gif='/home/cnumdev/httpd/htdocs/DEV/GIFS'
var_fichier='0016' # var_fichier='0022' # var_fichier='0030'
##verson mono pour afficher la largeur du tiff
var_larg=$(identify $var_chemin/$var_ident/$var_fichier.* | awk -F ' ' '{print $3}' | awk -F 'x' '{print $1}') ; echo $var_larg
##verson mono pour afficher la largeur du gif
var_larg1=$(identify $var_chemin_gif/$var_ident/$var_fichier.* | awk -F ' ' '{print $3}' | awk -F 'x' '{print $1}') ;  echo $var_larg1
##verson calcule mono pour afficher le resultat avec 9 chiffre aprés le virgule
result=$(printf '%.9f\n' $(echo "$var_larg1/$var_larg" | bc -l))  ;  echo $result


									###les rebuts(test)

#####mettre le resultat de comparaison dans une variabe pour faire une boucle.....avec le code pour extraire les largeurs (test)
var_cheminf=$() ; echo $var_cheminf

for i in $(echo $var_chemin1 $var_chemin2 | tr ' ' '\n' | sort -n | uniq -d | ls * ); do var_taille=$(identify $i | awk -F ' ' '{print $3}') ;  largeur=$(echo $var_taille |  awk -F 'x' '{print $1}') ; hauteur1=$(echo $var_taille |  awk -F 'x' '{print $2}'); echo "largeur:$largeur" "hauteur:$hauteur1" ; done



####version de boubacar pour afficher les deux resultats sans calcule...
for i in $(cd /home/cnumdev/httpd/htdocs/lien_symbo/par_identifiant/origs/12C14.1
for i in $(ls) ; do var_taille=$(identify $i | awk -F ' ' '{print $3}') ;  largeur=$(echo $var_taille |  awk -F 'x' '{print $1}') ; echo "largeur:$largeur" ; done); do echo $i $j; head ; done

for j in $(cd /home/cnumdev/httpd/htdocs/DEV/GIFS/12C14.1
for i in $(ls) ; do var_taille=$(identify $i | awk -F ' ' '{print $3}') ;  largeur=$(echo $var_taille |  awk -F 'x' '{print $1}') ; echo "largeur:$largeur" ; echo "largeur1:$i" ;  done); do echo $j; head ; done
# result=$(($var_larg1/ $var_larg)) ; echo $result

