#### formationProgrammerEnRPourLaDataScienceDeAAZUdemy

### Introduction
R c'est un langage de programmation et un logiciel libre qui est dédié au statistique ou data science. C'est un outil utilisé les staticiens ou la science des données, data manager, data scientiste. R est un langage de programmation interprété. C'est-à-dire des lignes de commandes qui vont être directement interprété et les résultats vont être générer directement sur notre écran. Le désavantage de R, c'est un écran noir qui va taper des lignes de commandes et donc il y a un outil qui a été développé par R studio. R studio cc'est un IDE qui va se mettre au-dessus de R et qui va permettre d'avoir une belle interface graphique et beaucoup plus simple pour ce qui est de la génération des résultats et l'analyse. R cran pour télécharger le langage. 

En tapant dans l'onglet source un code en faisant command + entrée ça le colle dans la ligne de commande et ça l'exécute et affiche le résultat. C'est dans la console qu'on executera notre code.

Dans l'onglet environment qu'on affichera les objets. Dans l'onglet à côté History qu'on retrouve les historiques de commandes.

Ensuite on a files dans lequel on va pouvoir naviguer. On a la parti plot c'est ici qu'on va afficher les graphiques. La partie package ce sont les packages installé dans R. C'est ici qu'on en a déjà plein, c'est que R s'installe avec tout un ensemble d'outil qui permet de faire beaucoup de chose avec R. Ensuite, il y a l'aide c'est important quand on commencera à utiliser les fonctions. Si je tape dans l'aide print ou dans la console ?print, je vois toute une documentation. 

> install.packages("randomForest", DEPENDANCIES=T)
essai de l'URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/randomForest_4.7-1.tgz'
Content type 'application/x-gzip' length 256755 bytes (250 KB)
==================================================
downloaded 250 KB


The downloaded binary packages are in
	/var/folders/7m/g02qtkp570n659501s43sbc80000gp/T//RtmpDkKWHM/downloaded_packages
on a donc déjà une fonction  qui s'appelle install.packages qui va installer des packages l'argument "dplyr". C'est argument obligatoire de cette fonction elle contient le nom du packet à installer et on a un argument en options

ggplot2
un package qui permet de fqire de super bequ graphique et très performant 

plotly
permet de rendre les graphiques dynamiques

### Débuter avec R
> class(3.5)
[1] "numeric"
la fonction class qui permet de dire la class du paramètre

> typeof(3.5)
[1] "double"
le fonction typeof permet de donner le type du paramètre

La class numeric contient 2 types de données les int (integer : ce sont les nombres entiers) et les double. C'est un type de donnée qui prends moins de place dans la mémoire que les doubles

> typeof(3)
[1] "double"
Le type de base est double
> typeof(as.integer(3))
[1] "integer"
Pour le transformer en integer as.integer() du nombre double.

### Variable
> monCaractere = "a"
rien ne s'affiche mais dans l'onglet en haut à droite Environnement on voit les variables avec leurs nom et leurs valeur. monCaractere est le nom du vecteur qui contient "a".

> class(monCaractere)
[1] "character"
On peut rappeler cette variable n'importe ou dans le code. Elle est de type character vue que la valeur est une string.

> monBooleen=3<1
On voit que la variable est présente dons l'onglet environnement et qu'elle vaut FALSE

> monBooleen
[1] FALSE
En appelant la variable on peut voir sa valeur

> # monvariable monCaractere
> monCaractere = "a"
Quand on tape entrer on voit le commentaire qui n'est pas interpréter et la ligne qui suit.

> monPremierNombre=10
> monDeuxiemeNombre=4
> monPremierNombre + monDeuxiemeNombre
[1] 14
L'opérateur arithmétique + parmet de faire des opérations.

> monCaractere + monCaractere
Erreur dans monCaractere + monCaractere : 
  argument non numérique pour un opérateur binaire
On ne peut pas utiliser l'opérateur arithmétique + puisque ce sont des strings

> monPremierNombre - monDeuxiemeNombre
[1] 6
L'opérateur arithmétique - permet de faire des soustractions.

> monPremierNombre / monDeuxiemeNombre
[1] 2.5
L'opérateur arithmétique / permet de faire des divisions.

> monPremierNombre ** monDeuxiemeNombre
[1] 10000
L'opérateur puissance ** permet de faire des puissances.

> monPremierNombre * monDeuxiemeNombre
[1] 40
L'opérateur * permet de faire des multiplications.

> monPremierNombre %% monDeuxiemeNombre
[1] 2
L'opérateur %% permet de récupérer le reste d'une division

### Les vecteurs
> c(1, 2, 3)
[1] 1 2 3
La on a déclarer un vecteur qui vaut 1, 2, 3. Le vecteur est ordonnée suivant comment on le déclare.

> c(3, 2, 1)
[1] 3 2 1
Il n'y a pas d'ordre numérique

> c("a", 8, 5)
[1] "a" "8" "5"
Si il y a une valeur character dans le vecteur toutes les valeur se transform en caractere.

> monVecteur = c(1, 2, 3)
Je déclare et initialise une variable contenant un vecteur de type numeric

> class(monVecteur)
[1] "numeric"
> class(c("a", 8, 5))
[1] "character"
Vérifie le type de données dans le vecteur

### Opération du vecteur

> monVecteur1 = seq(from=1, to=10)
> monVecteur1
 [1]  1  2  3  4  5  6  7  8  9 10
Permet de créer un vecteur de int de 1 jusqu'à 10.

> monVecteur2 = rep(10, times=10)
> monVecteur2
 [1] 10 10 10 10 10 10 10 10 10 10
Permet de créer un vecteur de type numeric. La fonction rep permet de répéter la valeur un nombre de fois définis.

> monVecteur1 + 1
 [1]  2  3  4  5  6  7  8  9 10 11
 L'opération a ajouté + 1 a toutes les valeurs du vecteurs.

> monVecteur1 * 10
 [1]  10  20  30  40  50  60  70  80  90 100
 L'opération a ajouté * 10 a toutes les valeurs du vecteurs.

> monVecteur1 * monVecteur2
 [1]  10  20  30  40  50  60  70  80  90 100
Il se passe la même chose parce qu'on a pas assigné le résultat au vecteur 1 et comme on multiplie le vecteur1 par le vecteur2 qui contient que des valeurs égales à 10 ça donne le même résultat.

> monVecteur2 = 10;
on réinitialise la variable à 10

> monVecteur1 / monVecteur2
 [1] 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
Toutes les variables du vecteur 1 ont été divisé par 10. Les opérations sur vecteurs sont possibles s'il n'y a qu'une valeur ou de même taille.

> monVecteur2 = c(1, 2, 3)
> monVecteur1 / monVecteur2
 [1]  1.0  1.0  1.0  4.0  2.5  2.0  7.0  4.0  3.0 10.0
Message d'avis :
Dans monVecteur1/monVecteur2 :
  la taille d'un objet plus long n'est pas multiple de la taille d'un objet plus court
Si on essait on obtient cette erreur.

> monVecteur2 = seq(from=6, to=15)
> monVecteur1 - monVecteur2
 [1] -5 -5 -5 -5 -5 -5 -5 -5 -5 -5
 On a deux vecteurs de même longeur donc on peut faire cette opération

> concatenation=c(monVecteur1, monVecteur2)
Permet de concatener donc ajouter a concaténation vecteur1 et vecteur2

### Manipuler les vecteurs grâce aux indexs

> monVecteur2
 [1]  6  7  8  9 10 11 12 13 14 15
> monVecteur2[2]
[1] 7
affiche la valeur à cette index dans le vecteur

> monVecteur2[1:3]
[1] 6 7 8
affiche les vecteurs compris entre les indexs compris entre les crochets

> monVecteur2[c(1, 6, 2)]
[1]  6 11  7
affiche les valeurs des index fournit dans la fonction c

> superieur=monVecteur2 > 8
> superieur
 [1] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[10]  TRUE
affecte à cette variable pour toutes les valeurs du vecteurs si cette condition est vérifié

> monVecteur2[superieur]
[1]  9 10 11 12 13 14 15
affiche toutes les valeurs supérieur à 8 grace à la condition plus haut. Chaque index de supérieur est soit vrai soit faux

### Qu'est ce qu'une fonction en R
> #affiche la moyenne
> mean(monVecteur2)
[1] 10.5
calcule la moyenne pour toutes les valeurs du vecteur

> ?mean
affiche la page de documentation de cette fonction

mean(x, trim = 0, na.rm = FALSE, ...)
na.rm = FALSE
permet d'éviter les valeurs qui sont null

### Utiliser les fonctions fournis par R
> length(monVecteur2)
[1] 10
permet d'affciher la taille de ce vecteur

> names(monVecteur2)
NULL
affiche les nom des valeurs de ce vecteur.
il n'y a pas de nom pour les valeurs dans ce vecteur

> names(monVecteur2)=paste("ma valeur", monVecteur2, sep=" ")
> monVecteur2
 ma valeur 6  ma valeur 7  ma valeur 8  ma valeur 9 ma valeur 10 ma valeur 11 ma valeur 12 
           6            7            8            9           10           11           12 
ma valeur 13 ma valeur 14 ma valeur 15 
          13           14           15 
permet de d'ajouter "ma valeur" en index pour le vecteur2 avec un séparateur espace

> names(monVecteur2)
 [1] "ma valeur 6"  "ma valeur 7"  "ma valeur 8"  "ma valeur 9"  "ma valeur 10"
 [6] "ma valeur 11" "ma valeur 12" "ma valeur 13" "ma valeur 14" "ma valeur 15"
 affiche les noms des clés du vecteur2

 > sort(monVecteur2)
 ma valeur 6  ma valeur 7  ma valeur 8  ma valeur 9 ma valeur 10 ma valeur 11 ma valeur 12 
           6            7            8            9           10           11           12 
ma valeur 13 ma valeur 14 ma valeur 15 
          13           14           15 
affiche mon vecteur2 trié

> ?sort
affiche la doc de la fonction

> sort(monVecteur2, decreasing = TRUE)
> sort(monVecteur2, TRUE)
ma valeur 15 ma valeur 14 ma valeur 13 ma valeur 12 ma valeur 11 ma valeur 10  ma valeur 9 
          15           14           13           12           11           10            9 
 ma valeur 8  ma valeur 7  ma valeur 6 
           8            7            6 
Avec l'option decreasing on peut trier par ordre décroissant en passant l'option a true

> rank(monVecteur2)
 ma valeur 6  ma valeur 7  ma valeur 8  ma valeur 9 ma valeur 10 ma valeur 11 ma valeur 12 
           1            2            3            4            5            6            7 
ma valeur 13 ma valeur 14 ma valeur 15 
           8            9           10 
affiche la position de clé valeur dans le vecteur

> sum(monVecteur2)
[1] 105
affiche la somme de toutes les valeurs dans ce vecteur

> min(monVecteur2)
[1] 6
permet d'afficher la valeur minimale de ce vecteur

> max(monVecteur2)
[1] 15
permet d'afficher la valeur maximale de ce vecteur

> summary(monVecteur2)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   6.00    8.25   10.50   10.50   12.75   15.00 
permet d'afficher un résumé du vecteur2
- min
- 1er quantil
- la médianne
- la moyenne
- 3eme quantil 
- max

> median(monVecteur2)
[1] 10.5
affiche la median du vecteur2

### Qu'est-ce qu'un package R ?
> library("ggplot2")
Il n'y a pas de message de chargement donc le package est installé

> search()
 [1] ".GlobalEnv"        "package:ggplot2"   "tools:rstudio"     "package:stats"    
 [5] "package:graphics"  "package:grDevices" "package:utils"     "package:datasets" 
 [9] "package:methods"   "Autoloads"         "org:r-lib"         "package:base"     
affiche tous les packages installés

### Savoir utiliser l'aide de R
> ?print
affiche dans l'onglet en bas a droite l'aide de la fonction en anglais 

> help(print)
> help("print")
c'est la deuxième fonction pour afficher l'aide. Il y a deux manière de l'utiliser

> help.start()
renvoie une page html avec des liens cliquable pour afficher l'aide de R

> help.search("mean")
permet de voir toutes les fonctions avec ce mot clé

# shortcut qui marche :
command c copier
command v coller
command + entrée ça le colle dans la ligne de commande et ça l'exécute et affiche le résultat