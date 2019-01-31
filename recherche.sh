#chemin du fichier
cd /home/cnumdev/httpd/htdocs/ORIGS/EXPOS/EXPOS-LOTS-3/
var1="8XAE277-1.1 8XAE277-1.2 8XAE277-1.3 8XAE277-1.4 8XAE277-1.5 8XAE277-1.6 8XAE277-1.7 8XAE277-1.8 8XAE277-2.1 8XAE277-3.1 8XAE277-3.2 8XAE277-3.3 8XAE277-3.4 8XAE277-3.5 8XAE277-3.6 8XAE277-3.7 8XAE277-3.8 8XAE277-3.9 8XAE277-3.10 8XAE277-3.11 8XAE277-3.12 8XAE277-4.1 8XAE277-4.2 8XAE277-4.3 8XAE277-4.4 8XAE277-4.5 8XAE277-4.6 8XAE277-4.7 8XAE277-4.8 8XAE277-4.9 8XAE277-4.10 8XAE277-4.11 8XAE277-4.12 8XAE277-5.1 8XAE277-6.1 8XAE277-6.2 8XAE277-6.3 8XAE277-6.4 8XAE277-6.5 8XAE277-7.1 8XAE277-7.2 8XAE277-7.3 8XAE277-8.1 8XAE277-8.2 8XAE277-8.3 8XAE277-9.1 8XAE277-10.1 8XAE277-10.2 8XAE277-10.3 8XAE277-10.4 8XAE277-10.5 8XAE277-10.6 8XAE277-10.7 8XAE277-10.8 8XAE277-11.1 8XAE277-11.2 8XAE277-11.3 8XAE277-12.1 8XAE277-12.2 8XAE277-12.3 8XAE277-12.4 8XAE277-12.5 8XAE277-12.6 8XAE277-13.1 8XAE277-13.2 8XAE277-13.3 8XAE277-13.4 8XAE277-13.5 8XAE277-13.6 8XAE277-13.7 8XAE277-13.8 8XAE277-14.1";

#juste un echo
for i in $var1; do echo $i ; done 

#chemin du fichier
cd /home/cnumdev/httpd/htdocs/ORIGS/EXPOS/EXPOS-LOTS-3/
#fonction qui compte le nombre de fichiers dans chaque idnetifiant
for i in $var1; do echo $i ; ls $i | wc -l ; done

#chemin des GIFS
cd /home/cnumdev/httpd/htdocs/DEV/GIFS
#fonction qui compte le nombre de fichiers dans chaque idnetifiant

for i in $var1; do echo $i; ls /home/cnumdev/httpd/htdocs/ORIGS/EXPOS/EXPOS-LOTS-3/$i | wc -l ; ls /home/cnumdev/httpd/htdocs/DEV/GIFS/$i | wc -l; done

################################rebut 

var2=$(cd /home/cnumdev/httpd/htdocs/ORIGS/EXPOS/EXPOS-LOTS-3/
#fonction qui compte le nombre de fichiers dans chaque idnetifiant
for i in $var1; do echo $i ; ls $i | wc -l ; done ); echo $var2

var3=$(cd /home/cnumdev/httpd/htdocs/DEV/GIFS
#fonction qui compte le nombre de fichiers dans chaque idnetifiant
for i in $var1; do echo $i ; ls $i | wc -l ; done); echo $var3

for i in $var2 $var3; do echo $i ; done

for i in $var1 ; do echo $i ; ls $i | wc -l ; done


#############################################################################fichiers
##fait
22
50
###on parle de coton dans les gifs en plus le nommage n'est pas le même...
cd C:\Users\yaterab\Desktop\fichier_gif\8XAE277-4.1\ 
### parle de laine
cd C:\Users\yaterab\Desktop\fichier_jpeg\8XAE277-4.1\  4.4 
 
#####################################################################################
##fait
18
48
###on parle de "les filles et  tissus de lin"
cd C:\Users\yaterab\Desktop\fichier_gif\8XAE277-4.2\
###on parle de "les châles
cd C:\Users\yaterab\Desktop\fichier_jpeg\8XAE277-4.2\ 4.5

#####################################################################################
##fait
36
40
###on parle de "les filles et tissus de laine peignée"
cd C:\Users\yaterab\Desktop\fichier_gif\8XAE277-4.3\
###on parle de dentelles et de tulles
cd C:\Users\yaterab\Desktop\fichier_jpeg\8XAE277-4.3\ 4.6

#####################################################################################
##fait
218
22
###on parle de "les filles et  tissus de laine gardée"
cd C:\Users\yaterab\Desktop\fichier_gif\8XAE277-4.4\
###on parle de raport sur les accéssoires du vêtements
cd C:\Users\yaterab\Desktop\fichier_jpeg\8XAE277-4.4\ 4.7

#####################################################################################
#####fait
50
18
###on parle de rapport sur les châlets
cd C:\Users\yaterab\Desktop\fichier_gif\8XAE277-4.5\
###on parle de raport sur les filles et le tissus de coton
cd C:\Users\yaterab\Desktop\fichier_jpeg\8XAE277-4.5\ 4.1

#####################################################################################
###fait
48
36
###on parle de rapport sur les dentelles et tulles 
cd C:\Users\yaterab\Desktop\fichier_gif\8XAE277-4.6\
###on parle de raport sur les filles et le tissus de lin
cd C:\Users\yaterab\Desktop\fichier_jpeg\8XAE277-4.6\ 4.2


#####################################################################################
###fait
40
218
###on parle de rapport sur les accéssoires du vêtement
cd C:\Users\yaterab\Desktop\fichier_gif\8XAE277-4.7\
###on parle de raport sur les filles et le tissus de laine peignée
cd C:\Users\yaterab\Desktop\fichier_jpeg\8XAE277-4.7\ 4.3


#####################################################################################











