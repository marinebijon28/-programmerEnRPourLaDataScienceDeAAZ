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

### Qu'est-ce qu'une matrice en R ?
Les vecteurs sont une sorte de tableau a une dimension. Une matrice c'est un tableau a 2 dimensions. IL y aura plusieurs colonnes et plusieurs lignes. Les matrices ne peut contenir que deux types de données soit numeric soit character

> notes=sample(1:20, 15)
> notes
 [1] 16  9  2 13 14 11  5  4 12  7 10  1 17  6  3
> matrix(notes, ncol=3, nrow=5)
     [,1] [,2] [,3]
[1,]   16   11   10
[2,]    9    5    1
[3,]    2    4   17
[4,]   13   12    6
[5,]   14    7    3
on initialise un vecteur qu'on passe en paramètre à la matrice avec on nombre de colonnes de 3 et 5 lignes. La matrice se remplit par colonne.

> matrix(notes, ncol=3, nrow=5, byrow = TRUE)
     [,1] [,2] [,3]
[1,]   16    9    2
[2,]   13   14   11
[3,]    5    4   12
[4,]    7   10    1
[5,]   17    6    3
byrow TRUE permet de remplir par ligne la matrice

> notes2=c(sample(1:20, 10), "a", "b", "c", "d", "e")
> notes2
 [1] "7"  "2"  "14" "1"  "5"  "8"  "6"  "12" "16" "3"  "a"  "b"  "c"  "d"  "e" 
 Créer un vecteur de character, pour avoir des valeur character, il faut une valeur entre "" dans le vecteur.

> matrix(notes2, ncol=3, nrow=5, byrow = TRUE)
     [,1] [,2] [,3]
[1,] "7"  "2"  "14"
[2,] "1"  "5"  "8" 
[3,] "6"  "12" "16"
[4,] "3"  "a"  "b" 
[5,] "c"  "d"  "e" 
Dans les matrices ont peut avoir qu'un seul type de données.

# colnames() et rownames()
Quand on travaille sur les matrices nous avons une section dans environnement un nouvelle ligne séparées des autres variables. une ligne data ou on peut voir les matrice et cliquez sur le nom de la variable afin d'afficher la matrice.

> colnames(notesDesEleves)=c("SVT", "Mathématiques", "Français")
> notesDesEleves
     SVT Mathématiques Français
[1,]  16            11       10
[2,]   9             5        1
[3,]   2             4       17
[4,]  13            12        6
[5,]  14             7        3
On peut voir que notre colsname est présent

> rownames(notesDesEleves)=c("Jean", "Léa", "Thomas", "Julien", "Zoé")
> notesDesEleves
       SVT Mathématiques Français
Jean    16            11       10
Léa      9             5        1
Thomas   2             4       17
Julien  13            12        6
Zoé     14             7        3
On voit qu'on a nos rownames, on voit que cest une matrice de note d'élèves. Dans environnement on voit qu'on a un tableau et qu'on peut trier.

### Accéder aux éléments d'une matrice
> notesDesEleves[1,]
          SVT Mathématiques      Français 
           16            11            10 
le premier indice à gauche est pour les lignes. SI je ne mets que le premier indice on affiche la première ligne et comme on ne met pas de valeur à droite. Il va afficher toutes les colonnes.

> notesDesEleves[,1]
  Jean    Léa Thomas Julien    Zoé 
    16      9      2     13     14 
Si on veut afficher que la première colonne. Je mets rien à gauche et je met lindex 1 à gauche. C'est les notes de SVT pour tous les élèves.

> notesDesEleves[1,2]
[1] 11
Maintenant, si je veux lees notes de Jean en mathématique. Je vais afficher la première ligne et la deuxième colonne.

> notesDesEleves[1,c(2, 3)]
Mathématiques      Français 
           11            10
affiche les colonnes de 2 et 3
> notesDesEleves[1,2:3]
Mathématiques      Français 
           11            10 
Je veux afficher la note de mathématique et en français. J'affiche les colonnes de 2 à 3.

> notesDesEleves["Thomas", "Français"]
[1] 17
On peut afficher la valeure en utilisant les colonnes et les lignes.

> notesDesEleves[c("Léa", "Thomas"), "Français"]
   Léa Thomas 
     1     17 
On peut afficher plusieurs valeurs en précisant dans un vecteur

### Modifier une matrice
> notesDesEleves[c("Léa", "Thomas"), "Français"]=c(15, 10)
> notesDesEleves
       SVT Mathématiques Français
Jean    16            11       10
Léa      9             5       15
Thomas   2             4       10
Julien  13            12        6
Zoé     14             7        3
Comme on modifie les valeurs, il faut bien respecter l'ordre des valeurs

> notes
 [1] 16  9  2 13 14 11  5  4 12  7 10  1 17  6  3
> notes[3]=15
> notes
 [1] 16  9 15 13 14 11  5  4 12  7 10  1 17  6  3
On veut modifier la valeur d'un vecteur

### Opérations sur les matrices
> notes2=c(rep(0.5, times=5), rep(1, times=5), rep(0.9, times=5))
> notes2
 [1] 0.5 0.5 0.5 0.5 0.5 1.0 1.0 1.0 1.0 1.0 0.9 0.9 0.9 0.9 0.9
> matriceDesNotes = matrix(notes2, ncol=3, nrow=5)
> matriceDesNotes
     [,1] [,2] [,3]
[1,]  0.5    1  0.9
[2,]  0.5    1  0.9
[3,]  0.5    1  0.9
[4,]  0.5    1  0.9
[5,]  0.5    1  0.9

> notesDesEleves * matriceDesNotes
       SVT Mathématiques Français
Jean   8.0            11      9.0
Léa    4.5             5     13.5
Thomas 1.0             4      9.0
Julien 6.5            12      5.4
Zoé    7.0             7      2.7
On peut faire des opérations avec des autres matrices

> notesDesEleves + matriceDesNotes
        SVT Mathématiques Français
Jean   16.5            12     10.9
Léa     9.5             6     15.9
Thomas  2.5             5     10.9
Julien 13.5            13      6.9
Zoé    14.5             8      3.9

> notesDesEleves / matriceDesNotes
       SVT Mathématiques  Français
Jean    32            11 11.111111
Léa     18             5 16.666667
Thomas   4             4 11.111111
Julien  26            12  6.666667
Zoé     28             7  3.333333

> rowSums(notesDesEleves)
  Jean    Léa Thomas Julien    Zoé 
    37     29     16     31     24 
On connaît la somme des notes de chaque élèves 

> colSums(notesDesEleves)
          SVT Mathématiques      Français 
           54            39            44 
Calcul la somme des notes par matières

> rowMeans(notesDesEleves)
     Jean       Léa    Thomas    Julien       Zoé 
12.333333  9.666667  5.333333 10.333333  8.000000 
C'est la moyenne de chaque élèves dans toutes les matières

> colMeans(notesDesEleves)
          SVT Mathématiques      Français 
         10.8           7.8           8.8 
La moyenne des élèves par matière


### Exercice : manipuler une matrice
install.packages("Stat2Data")
Dans Stat2Data, il y a jeu de données test

> library("Stat2Data")
charge le package

> matricePrixCheval=as.matrix(HorsePrices[, -c(1,5)])
créer une matrice à partir d'une matrice en enlévant la première et la dernière ligne

> rownames(matricePrixCheval)=HorsePrices[,1]
nommes les lignes avec l'id du cheval au lieu d'avoir une colonne ID

> colnames(matricePrixCheval)=c("Prix", "Age", "Taille")
permet de nommer les colonnes de la matrice

> matricePrixCheval[,3]= matricePrixCheval[,3] * 0.1016
Je sais qu'un hand fait 0.1016 mètres. On va multiplier la troisième colonne par 0.1016

> matricePrixCheval[,1]= matricePrixCheval[,1] * 0.86
Je sais qu'un hand fait 0.86 euros . On va multiplier la première par 0.86

> dim(matricePrixCheval)
[1] 50  3
donne le nombre de lignes et de colonnes

> summary(matricePrixCheval)
      Prix            Age            Taille     
 Min.   :  946   Min.   : 0.50   Min.   :1.448  
 1st Qu.:12900   1st Qu.: 4.00   1st Qu.:1.626  
 Median :21500   Median : 6.00   Median :1.676  
 Mean   :23082   Mean   : 7.11   Mean   :1.659  
 3rd Qu.:34185   3rd Qu.: 8.00   3rd Qu.:1.702  
 Max.   :51600   Max.   :20.00   Max.   :1.753  
                                 NA's   :3     
recapitulatif des colonnes de la matrice

> matricePrixCheval=na.omit(matricePrixCheval)
enlever des lignes NA (qui n'ont pas de valeur)

> matricePrixCheval[matricePrixCheval[,1] == 946, ]
   Prix     Age  Taille 
946.000  19.000   1.651 
affiche toutes les ligne du cheval avec la plus petite taille. Récupérer par le prix qui est sur la première colonne.

> matricePrixCheval[matricePrixCheval[,1] == 946, ]=c(2500, 19, 1.651)
Change la ligne avec le cheval avec la plus petite taille

> matricePrixCheval[matricePrixCheval[,1] == 2500, ]
    Prix      Age   Taille 
2500.000   19.000    1.651 
Affiche la ligne modifier avec la nouvelle valeur

> matricePrixCheval[matricePrixCheval[,1] > 23082, ]
     Prix Age Taille
97  32680   3 1.7018
156 34400   5 1.7272
184 30100   8 1.6510
88  30100   5 1.6764
35  34400   7 1.7018
148 38700   3 1.6002
102 38700   6 1.7018
96  41280   6 1.6764
31  30100   5 1.6510
234 28380   4 1.6764
141 25800   8 1.7018
63  43000   6 1.7018
4   38700  14 1.7272
57  38700   5 1.6764
38  43000   7 1.7526
2   43000   8 1.6764
248 33540  11 1.7526
13  23650   5 1.6256
232 51600  13 1.7018
152 43000   4 1.6764
36  25800   9 1.6764
249 34400   7 1.7526
afficher toutes les valeur qui sont supérieure a la moyenne

> colMeans(matricePrixCheval[matricePrixCheval[,3] > 1.6, ])
       Prix         Age      Taille 
25101.90476     8.02381     1.67640 
fait la moyenne des chevaux plus grand qu'un 1.6



# shortcut qui marche :
command c copier
command v coller
command + entrée ça le colle dans la ligne de commande et ça l'exécute et affiche le résultat