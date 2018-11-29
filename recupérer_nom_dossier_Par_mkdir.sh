####code pour recupérer et copier le nom des dossier dans un répertoire.
mkdir 'le nom dossier' ###juste pour copier les dossiers avec leurs noms sans le contenu.
var1=$(ls /home/cnumdev/httpd/htdocs/test/test_echantillon_images/documents_a_oceriser) ; echo $var1
for i in $var1 ; do echo mkdir $i ; done ##juste afficher la cmd
for i in $var1 ; do mkdir $i ; done  ##execute la cmd