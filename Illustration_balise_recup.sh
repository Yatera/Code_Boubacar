			###Code servant à recupèrer les balise Illustration dans un/les fichiers xml



##version mono avec le chemin, dans le dossier on fait juste un grap de par le nom de la balise+ *extension pour avoir comme resultat (0006.T.r2.xml)
cd /home/cnumdev/httpd/htdocs/DEV/ocr/xml_ocr/8XAE148
grep -l '<Illustration ID="' *.xml


##version bouclée avec le chemin, dans le dossier on fait juste un grap de par le nom de la balise+ *extension pour avoir le même resultat mais sur l'ensemble des dossier du repertoire.
cd /home/cnumdev/httpd/htdocs/DEV/ocr/xml_ocr
for i in $(ls) ; do grep -l '<Illustration ID="' $i/*.xml ; done
