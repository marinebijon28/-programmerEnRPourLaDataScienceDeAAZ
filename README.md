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

### dataframes en R
## Qu'est-ce qu'un dataframe R
> data.frame(c(18,26,54,78), c(56, 84, 76, 62), c("M", "F", "M", "F"), c(TRUE, TRUE, TRUE, FALSE))
  c.18..26..54..78. c.56..84..76..62. c..M....F....M....F..
1                18                56                     M
2                26                84                     F
3                54                76                     M
4                78                62                     F
  c.TRUE..TRUE..TRUE..FALSE.
1                       TRUE
2                       TRUE
3                       TRUE
4                      FALSE
se remplit par colonne un vecteur par colonne
on a mit des caractères et contrairement à la matrice ça ne met pas tous en caractères. chaque colonne garde bien son type et de type différent

## colnames() et rownames()
>colnames(monDataFrame)=c("Age", "Poids", "Sexe", 'Ma valeur booléenne')
nom des colonnes

>rownames(monDataFrame)=c("Jean", "Zoé", "Lucas", 'Chloé')
nom des lignes

## importation de données
> dataIris=read.table("iris.csv", header =TRUE, sep=',', row.names = 1);
nom du fichier. si y a un header dans le fichier. comment les lignes sont séparé. on veut que la première colonne deviennent les nom de ligne

>read.csv("iris.csv", row.names = 1)
 pareil permet d'ouvrir plus facilement un fichier csv

>data("iris")
charge les données du package iris
>ls()
affiche les packages

## exportation de données
>write.table(dataIris, file="iris2.csv", sep=',', row.names = TRUE)
Ècrit un csv par rapport une dataframe. Le nom de fichier. On précise le type de séparateur. On garde le nom de ligne et il garde le nom du header du tableau

>write.csv(dataIris, file= "iris3.csv", row.names = TRUE)
pareil permet d'écrire un csv

On peut faire des fichiers qu'on ne pourra pas lire sur notre ordinateur, mais on pourra l'importer dans n'importe quel session R facilement. C'est l'objet qui est enregistré dans R donc si on travaille avec des gros jeux de données. Il vaut mieux faire des objets R

>save(dataIris, file="iris.Rdata")
pour créer un objet R

>load("iris.Rdata")
pour récupérer le jeux de données

Pour clean toutes les variables en haut à droite. Il faut appuyer sur le pinceau

## Accéder aux éléments d'un dataframe
>head(dataIris[, c(1:3)])
affiche le header et les premières lignes

>head(dataIris[c(1, 50, 60), c(1:3)])
affiche le header et les lignes passés au premier vecteur

>head(dataIris[c(1, 50, 60), c("Sepal.Length", "Sepal.Width", "Petal.Length")])
affiche les mêmes lignes en utilisant le noms des colonnes

> head(iris$Species)
[1] setosa setosa setosa setosa setosa setosa
Levels: setosa versicolor virginica
affiche une colonne grâce au $nomcol. Ainsi que les types d'espèces. Il faut appeler le packet chargé

## Créer un sous-ensemble à partir d'un dataframe
>dim(dataIris[dataIris$Species == "setosa", ])
nombre de ligne et de colonnes pour ce sous-élément. un Vecteur qui a de booléen par rapport à la condition 

>dataIris[which(dataIris$Species == "setosa"), ]
permet d'avoir les index de ces lignes pour cette condition

>dataIris[which(dataIris$Species == "setosa" & dataIris$Petal.Length == 1.4), ]
permet d'avoir deux conditions en regardant deux colonnes 

>dataIris[which(dataIris$Species == "setosa" & dataIris$Petal.Length == 1.4), ]
permet d'avoir le numéro de ligne pour les deux conditions en regardant deux colonnes 

>dataIris[dataIris$Species %in% c("setosa"),]
permet de rechercher dans la colonne species tous les noms avec setosa dedans

>dataIris[dataIris$Species %in% c("setosa", "versicolor"),]
permet de rechercher dans la colonne species tous les noms avec setosa et versicolor dedans

>subset(dataIris, Species == "setosa")
permet de rechercher dans la colonne Species la valeur setosa

>subset(dataIris, Species == "setosa" & Petal.Length == 1.4)
permet de rechercher dans la colonne Species la valeur setosa et le petal.length équivalent 1.4

>subset(dataIris, Species == "setosa" & Petal.Length == 1.4, select = c("Petal.Length"))
il crée la tableau précédent et n'affiche que la colonne donnée en paramètre au select

## Exercice : manipuler les dataframes
# Notion de facteur 
Un facteur c'est une structure de données comme le vecteur, les matrices. Les facteurs c'est un type de vecteur. Les vecteurs contiennent des types numériques : des chiffres, des notes des élèves, une liste de poids, une liste d'âge. C'est des valeurs sur lesquels on peut faire des opérations comme des additions, multiplications ou des soustractions. En faite un facteur contient des modalités : des couleurs, des familles ou ici des espèces d'iris. Donc généralement les vecteurs contiennent des valeurs quantitatives. Des variables qui sont numériques sur lesquelles on va pouvoir faire des opérations contrairement au facteur où des types de variables qualitatives. ça nous permet de créer des groupes au sein d'un jeux de données. On a un ensemble d'invidu qu'on va pouvoir mettre dans un groupe qui s'appelle setosa. On en utilisera pas mal dans les exercices de dataSciences pour ranger les individus par classe.

> head(iris$Species)
[1] setosa setosa setosa setosa setosa setosa
Levels: setosa versicolor virginica

> colnames(iris)=c("Longueur des sépales", "Largeur des pétales", "Longueur de pétales", "Largeur de pétales", "Espèces")
> rownames(iris)=paste("iris_", rownames(iris), sep="")
Permet de changer le nom des colonnes en mettant iris sur tous lignes ainsi que leur ID.

> summary(iris)
 Longueur des sépales Largeur des pétales Longueur de pétales Largeur de pétales
 Min.   :4.300        Min.   :2.000       Min.   :1.000       Min.   :0.100     
 1st Qu.:5.100        1st Qu.:2.800       1st Qu.:1.600       1st Qu.:0.300     
 Median :5.800        Median :3.000       Median :4.350       Median :1.300     
 Mean   :5.843        Mean   :3.057       Mean   :3.758       Mean   :1.199     
 3rd Qu.:6.400        3rd Qu.:3.300       3rd Qu.:5.100       3rd Qu.:1.800     
 Max.   :7.900        Max.   :4.400       Max.   :6.900       Max.   :2.500     
       Espèces  
 setosa    :50  
 versicolor:50  
 virginica :50  

>min(iris[iris$"Espèces"=="setosa", ])
quand on a une colonne avec des accents il faut mettre des guillemets. Min n'est pas utilisable sur des valeurs qualitatives

>min(iris[iris$"Espèces"=="setosa", 3])
sort un minimum vue qu'on regarde une colonne avec une valeur numérique et une condition qualitative espèces équivalent à setosa

> mean(iris[iris$"Espèces"=="setosa", 3])
[1] 1.462
sort la moyenne vue qu'on regarde une colonne avec une valeur numérique et une condition qualitative espèces équivalent à setosa

>dataIrisQualitative=as.data.frame(iris[,5])
transforme un vecteur en dataframe

>rownames(dataIrisQualitative)=rownames(iris)
Permet de changer le nom des colonnes en mettant iris sur tous lignes ainsi que leur ID de ligne.

>irisComplet=merge(dataIrisQuantitative, dataIrisQualitative, by="row.names")
Permet de merger les deux tableaux dans un troisième tableau en ayant le nom des lignes pareils pour fusionner correctement

>irisComplet=irisComplet[, -c(1)]
Recopie le tableau irisComplet moins la première la colonne

>cbind(tab1, tab2)
met deux tableaux a côté sans verifier les lignes correspondent

>rbind(tab1, tab2)
met deux tableaux l'un a la suite de l'autre

### Les bases de la programmation en R
## les opérateurs logiques
- opérateur strictement supérieur >
- opérateur strictement inférieur <
- opérateur inférieur ou égale <=
- opérateur supérieur ou égale >=
- opérateur équivalent ==
- opérateur différent !=
- opérateur ET &
Plus précis vérifie toute les conditions dans des vecteurs
- opérateur ET &&
Ne vérifie pas les valeurs après la position 1 d'un vecteur
- opérateur |
- opérateur ||

## les instructions de condition (if else)
if (condition) {
     action1
} else {
     action2
}

## les instructions de boucles(for)
for (valeur in vecteur) {
  actions
}
s'inrémente tous seul

## instructions de boucle while : tant que 
while (condition) {
     actions
}
risque de boucle infini

## Exercice sur les instructions de condition et les boucles en R
> dim(iris)
[1] 150   5
C'est un dataframe avec 150 de valeurs et 5 colonnes. C'est les dimensions de la dataframe

## Comment créer sa propre fonction en R
> nomDeNotreFonction<-function(argument1, argument2) {
  instructions
  bloc code
  return (résultat)
}

## Manipulation avancée des données
# apply(x, MARGIN, FUN)
x : dataframe, une matrice. Ce sera des objets à deux dimensions.

MARGIN : 1 : pour les lignes, 2 : par les colonnes, 3 par lignes et colonnes. Permet de dire si on veut traiter notre tableau par ligne ou colonne ou par colonne et par ligne

FUN : fonction qu'on souhaite appliqué à notre tableau (mean, sum, summary…) ou une fonction qu'on a créer.

> apply(iris[,-5], 1, mean)
> apply(iris[,-5], 2, mean)
> apply(iris[,-5], 2, summary)
Dans le cas des colonnes, il va itéré sur chaque colonne comme pour les lignes

## aggregate() et by()
On veut faire des statistique par groupe qui sont des caractère

# by(x, INDICES, FUN) : x : dataframe, INDICES : qui est le groupe la colonne par laquelle on veut faire le 
# sous-ensemble de données iris$Species, FUN : function

> by(iris, iris$Species, summary)
iris$Species: setosa
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.300   Min.   :2.300   Min.   :1.000   Min.   :0.100   setosa    :50  
 1st Qu.:4.800   1st Qu.:3.200   1st Qu.:1.400   1st Qu.:0.200   versicolor: 0  
 Median :5.000   Median :3.400   Median :1.500   Median :0.200   virginica : 0  
 Mean   :5.006   Mean   :3.428   Mean   :1.462   Mean   :0.246                  
 3rd Qu.:5.200   3rd Qu.:3.675   3rd Qu.:1.575   3rd Qu.:0.300                  
 Max.   :5.800   Max.   :4.400   Max.   :1.900   Max.   :0.600                  
--------------------------------------------------------------- 
iris$Species: versicolor
  Sepal.Length    Sepal.Width     Petal.Length   Petal.Width          Species  
 Min.   :4.900   Min.   :2.000   Min.   :3.00   Min.   :1.000   setosa    : 0  
 1st Qu.:5.600   1st Qu.:2.525   1st Qu.:4.00   1st Qu.:1.200   versicolor:50  
 Median :5.900   Median :2.800   Median :4.35   Median :1.300   virginica : 0  
 Mean   :5.936   Mean   :2.770   Mean   :4.26   Mean   :1.326                  
 3rd Qu.:6.300   3rd Qu.:3.000   3rd Qu.:4.60   3rd Qu.:1.500                  
 Max.   :7.000   Max.   :3.400   Max.   :5.10   Max.   :1.800                  
--------------------------------------------------------------- 
iris$Species: virginica
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.900   Min.   :2.200   Min.   :4.500   Min.   :1.400   setosa    : 0  
 1st Qu.:6.225   1st Qu.:2.800   1st Qu.:5.100   1st Qu.:1.800   versicolor: 0  
 Median :6.500   Median :3.000   Median :5.550   Median :2.000   virginica :50  
 Mean   :6.588   Mean   :2.974   Mean   :5.552   Mean   :2.026                  
 3rd Qu.:6.900   3rd Qu.:3.175   3rd Qu.:5.875   3rd Qu.:2.300                  
 Max.   :7.900   Max.   :3.800   Max.   :6.900   Max.   :2.500  
c'est une structure donnée : une liste. On ne l'a pas vue parce que c'est une chose de très utilisées. Le premier élément de la liste c'est sétosa et on a le summary de l'ensemble des valeur ou l'espèce est égale à sétosa. On a les ensemble de données pour verginica et versicolor.

# matrice de corrélation 
Une matrice de colération elle se crée avec la function cor

> by(iris[,-5], iris$Species, cor)
iris$Species: setosa
             Sepal.Length Sepal.Width Petal.Length Petal.Width
Sepal.Length    1.0000000   0.7425467    0.2671758   0.2780984
Sepal.Width     0.7425467   1.0000000    0.1777000   0.2327520
Petal.Length    0.2671758   0.1777000    1.0000000   0.3316300
Petal.Width     0.2780984   0.2327520    0.3316300   1.0000000
--------------------------------------------------------------- 
iris$Species: versicolor
             Sepal.Length Sepal.Width Petal.Length Petal.Width
Sepal.Length    1.0000000   0.5259107    0.7540490   0.5464611
Sepal.Width     0.5259107   1.0000000    0.5605221   0.6639987
Petal.Length    0.7540490   0.5605221    1.0000000   0.7866681
Petal.Width     0.5464611   0.6639987    0.7866681   1.0000000
--------------------------------------------------------------- 
iris$Species: virginica
             Sepal.Length Sepal.Width Petal.Length Petal.Width
Sepal.Length    1.0000000   0.4572278    0.8642247   0.2811077
Sepal.Width     0.4572278   1.0000000    0.4010446   0.5377280
Petal.Length    0.8642247   0.4010446    1.0000000   0.3221082
Petal.Width     0.2811077   0.5377280    0.3221082   1.0000000
Ici on a aussi une liste par élément et la fonction cor les comparent deux à deux. Pour sortir un coefficient de corrélation si les variables sont vraiment liées ou pas. Dans Sepal.length et sepal.Length le coefficient est de 1 en même temps c'est les même valeur. Plus le coefficient est proche de 1 ça veut dire que les variables sont fortement liées. Elles évoluent de la même manière dans es deux variables. Si elle est proche de 0 par exemple la longeur des petales et la largeur des sepale. Plus la colération est petite entre ces deux variables. C'est sympa si on veut voir si les variables sont liées.

> by(iris[,-5], iris$Species, mean)
iris$Species: setosa
[1] NA
--------------------------------------------------------------- 
iris$Species: versicolor
[1] NA
--------------------------------------------------------------- 
iris$Species: virginica
[1] NA
Messages d'avis :
1: Dans mean.default(data[x, , drop = FALSE], ...) :
  l'argument n'est ni numérique, ni logique : renvoi de NA
2: Dans mean.default(data[x, , drop = FALSE], ...) :
  l'argument n'est ni numérique, ni logique : renvoi de NA
3: Dans mean.default(data[x, , drop = FALSE], ...) :
  l'argument n'est ni numérique, ni logique : renvoi de NA

La on veut faire le moyenne par groupe. On aura tendance à mettre mean. By va faire un sous-ensemble de notre tableau donc un sous-ensemble de setosa, verginica, versicolor. Ça reste une dataframe et pas des vecteurs. En faite le fonction mean elle attend un vecteur de type numérique

# aggregate(x, by, FUN) x : dataframe, by : c'est un ensemble de valeur il va faire un sous-ensemble de notre tableau, la colonne iris$Species. Elle attend data.frame, soit une liste, FUN : fun qui est notre fonction
Donc la fonction mean avec aggregate

> aggregate(iris[,-5], as.data.frame(iris$Species), mean)
  iris$Species Sepal.Length Sepal.Width Petal.Length Petal.Width
1       setosa        5.006       3.428        1.462       0.246
2   versicolor        5.936       2.770        4.260       1.326
3    virginica        6.588       2.974        5.552       2.026

> class(iris$Species)
[1] "factor"

> aggregate(iris[,-5], as.data.frame(iris$Species), mean)
  iris$Species Sepal.Length Sepal.Width Petal.Length Petal.Width
1       setosa        5.006       3.428        1.462       0.246
2   versicolor        5.936       2.770        4.260       1.326
3    virginica        6.588       2.974        5.552       2.026
Je transforme la colonne species en dataframe aggregate. On voit donc bien la moyenne de chaque variable pour chaque espèce d'individu. aggregate permet de traiter le dataframe colonne par colonne. On pourrait ensuite d'utiliser aggregate de la fonction cor pour la corrélation

> aggregate(iris[,-5], as.data.frame(iris$Species), cor)
Erreur dans FUN(X[[i]], ...) : supply both 'x' and 'y' or a matrix-like 'x'
Là on aurait une erreur pour la simple est bonne raison. Comme je disais aggregate traite colonne par colonne le dataframe. En faite la fonction cor attend une matrice de valeur et non pas une colonne. Parce qu'en faite il lui faut l'ensemble des variables pour lui faire une colérration. Il va subset des données par espece et ensuite il va envoyer les données par colonne pour faire les calculs. 

Elle ne pourrait pas le faire une seule variable. Voilà la difference entre aggregate et by. aggregate va vraiment traiter le dataframe colonne par colonne.

# Dplyr ; les tibbles
C'est un package vraiment intéressant développé par Hadley Wickham et c'est franchement un package vraiment optimisé qui permet de faire une manipulation des données de manière très simple. Dplyr sont avantage qu'il a une grammaire et une syntaxe claire et très simple à utiliser. C'est clairement ce qui a de plus rapide en R actuellement encore plus rapide qu'apply, by et aggregate.
Ce qu'il faut de savoir : il va soit travailler avec dataframe, soit avec sa structure de donnée qui lui est propre qui s'appelle le tibble.

> irisData
# A tibble: 150 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          5.1         3.5          1.4         0.2 setosa 
 2          4.9         3            1.4         0.2 setosa 
 3          4.7         3.2          1.3         0.2 setosa 
 4          4.6         3.1          1.5         0.2 setosa 
 5          5           3.6          1.4         0.2 setosa 
 6          5.4         3.9          1.7         0.4 setosa 
 7          4.6         3.4          1.4         0.3 setosa 
 8          5           3.4          1.5         0.2 setosa 
 9          4.4         2.9          1.4         0.2 setosa 
10          4.9         3.1          1.5         0.1 setosa 
# … with 140 more rows
Il ne faut pas utiliser head car c'est une classe tibble. L'avantage de tibble c'est que le head est fait automatiquement. Jamais une variable de class tibble s'affichera en entier. Après ce qui est avantageux avec ce type de structure, c'est qu'on connait les dimensions de notre objet. Pas besoin de s'embêter avec un dim> Elle fait 150 lignes et 5 colonnes. Sous chaque colonne on aura le type des variables contenu dans la colonne. dbl : double, fct : facteur car c'est une variable qualicative. 

On va passer à la description de tous les verbes qui sont disponible sous Dplyr.

# Dplyr : select()
# selection pour selectionner des colonnes 
Imaginons que je veuille sélectionner uniquement des colonnes dans notre jeu de données

> select(iris, Sepal.Length, Petal.Length, Species)
# A tibble: 150 × 3
   Sepal.Length Petal.Length Species
          <dbl>        <dbl> <fct>  
 1          5.1          1.4 setosa 
 2          4.9          1.4 setosa 
 3          4.7          1.3 setosa 
 4          4.6          1.5 setosa 
 5          5            1.4 setosa 
 6          5.4          1.7 setosa 
 7          4.6          1.4 setosa 
 8          5            1.5 setosa 
 9          4.4          1.4 setosa 
10          4.9          1.5 setosa 
# … with 140 more rows
En premier argument select attend le tibble ou le dataframe qui nous intéresse. Après il attend tous les noms de colonnes que l'on veut afficher. Il me dit bien j'ai 3 colonnes et 150 lignes. C'est simple de sélectionner des colonnes. on a plus besoin de s'embêter les crochets. On donne le jeux de données et les colonnes que l'on a selectionné. 

> select(iris, Sepal.Length:Sepal.Width)
# A tibble: 150 × 2
   Sepal.Length Sepal.Width
          <dbl>       <dbl>
 1          5.1         3.5
 2          4.9         3  
 3          4.7         3.2
 4          4.6         3.1
 5          5           3.6
 6          5.4         3.9
 7          4.6         3.4
 8          5           3.4
 9          4.4         2.9
10          4.9         3.1
# … with 140 more rows
On peut utilisé les deux points comme on a déjà utilisé avec les deux points comme les colonnes de 1 à 3 [1:3].
DOnc la vous voyez qu'on a bien sélectionner les deux colonnes

> select(iris, -Species)
# A tibble: 150 × 4
   Sepal.Length Sepal.Width Petal.Length Petal.Width
          <dbl>       <dbl>        <dbl>       <dbl>
 1          5.1         3.5          1.4         0.2
 2          4.9         3            1.4         0.2
 3          4.7         3.2          1.3         0.2
 4          4.6         3.1          1.5         0.2
 5          5           3.6          1.4         0.2
 6          5.4         3.9          1.7         0.4
 7          4.6         3.4          1.4         0.3
 8          5           3.4          1.5         0.2
 9          4.4         2.9          1.4         0.2
10          4.9         3.1          1.5         0.1
# … with 140 more rows
on pourrait juste vouloir enlever une colonne. La colonne species nous gène un peu pour faire des statistiques.

> select(iris, starts_with("Petal"))
# A tibble: 150 × 2
   Petal.Length Petal.Width
          <dbl>       <dbl>
 1          1.4         0.2
 2          1.4         0.2
 3          1.3         0.2
 4          1.5         0.2
 5          1.4         0.2
 6          1.7         0.4
 7          1.4         0.3
 8          1.5         0.2
 9          1.4         0.2
10          1.5         0.1
# … with 140 more rows
On pourrait vouloir sélectionner des colonnes selon on un mot dans les noms de colonnes pas avec le nom de colonne en entier. On veut sélectionner une colonne qui commence par sépal. Je vais utiliser une option qui s'appel starts_width commence par Petal. Tu prends toutes les colonnes qui commence par petal.

> select(iris, -starts_with("Sepal"))
# A tibble: 150 × 3
   Petal.Length Petal.Width Species
          <dbl>       <dbl> <fct>  
 1          1.4         0.2 setosa 
 2          1.4         0.2 setosa 
 3          1.3         0.2 setosa 
 4          1.5         0.2 setosa 
 5          1.4         0.2 setosa 
 6          1.7         0.4 setosa 
 7          1.4         0.3 setosa 
 8          1.5         0.2 setosa 
 9          1.4         0.2 setosa 
10          1.5         0.1 setosa 
# … with 140 more rows
Après je voudrais peut-être enlever des colonnes qui commence par Sepal.

> select(iris, ends_with("Length"))
# A tibble: 150 × 2
   Sepal.Length Petal.Length
          <dbl>        <dbl>
 1          5.1          1.4
 2          4.9          1.4
 3          4.7          1.3
 4          4.6          1.5
 5          5            1.4
 6          5.4          1.7
 7          4.6          1.4
 8          5            1.5
 9          4.4          1.4
10          4.9          1.5
# … with 140 more rows
AU lieu de commencer par, on peut finit par. Imaginons que nous voulons toutes les colonnes qui finissent par Length. Select iris et qui termine ends_width Length.

> select(iris, contains("al"))
# A tibble: 150 × 4
   Sepal.Length Sepal.Width Petal.Length Petal.Width
          <dbl>       <dbl>        <dbl>       <dbl>
 1          5.1         3.5          1.4         0.2
 2          4.9         3            1.4         0.2
 3          4.7         3.2          1.3         0.2
 4          4.6         3.1          1.5         0.2
 5          5           3.6          1.4         0.2
 6          5.4         3.9          1.7         0.4
 7          4.6         3.4          1.4         0.3
 8          5           3.4          1.5         0.2
 9          4.4         2.9          1.4         0.2
10          4.9         3.1          1.5         0.1
# … with 140 more rows
Au lieu de commencer ou terminer par un mot. On peut dire contient un mot avec contains. Par exemple on cherche le motif al. Peu importe ou il sera dans le nom de la colonne. Il sera sélectionné

# filter : filtrer selon les individus

> filter(iris, Sepal.Length >= 5, Sepal.Width >= 2)
# A tibble: 128 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          5.1         3.5          1.4         0.2 setosa 
 2          5           3.6          1.4         0.2 setosa 
 3          5.4         3.9          1.7         0.4 setosa 
 4          5           3.4          1.5         0.2 setosa 
 5          5.4         3.7          1.5         0.2 setosa 
 6          5.8         4            1.2         0.2 setosa 
 7          5.7         4.4          1.5         0.4 setosa 
 8          5.4         3.9          1.3         0.4 setosa 
 9          5.1         3.5          1.4         0.3 setosa 
10          5.7         3.8          1.7         0.3 setosa 
# … with 118 more rows
On pourrait par exemple selectionner les individus qui ont des grandes petales. Il me dit qu'en tout, il y a 128 individus avec les filtres passées en paramètre. Il y a 150 individus en tout dans iris.

> filter(iris, between(Sepal.Length, 4, 7))
# A tibble: 138 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          5.1         3.5          1.4         0.2 setosa 
 2          4.9         3            1.4         0.2 setosa 
 3          4.7         3.2          1.3         0.2 setosa 
 4          4.6         3.1          1.5         0.2 setosa 
 5          5           3.6          1.4         0.2 setosa 
 6          5.4         3.9          1.7         0.4 setosa 
 7          4.6         3.4          1.4         0.3 setosa 
 8          5           3.4          1.5         0.2 setosa 
 9          4.4         2.9          1.4         0.2 setosa 
10          4.9         3.1          1.5         0.1 setosa 
# … with 128 more rows
On pourrait demander une valeur de sepal compris entre deux valeurs. On va utiliser notre jeu de données iris et la on va utiliser une fonction qui s'appelle between. À laquelle on va donnée le nom de la colonne sur laquelle on va appliqué le filtre. puis les valeurs de la colonnes devront être comprisent entre des deux valeurs passées à cette fonction sont incluses. J'ai 138 individus qui rentre dans cette case là.

> filter(iris, Species == "setosa")
# A tibble: 50 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          5.1         3.5          1.4         0.2 setosa 
 2          4.9         3            1.4         0.2 setosa 
 3          4.7         3.2          1.3         0.2 setosa 
 4          4.6         3.1          1.5         0.2 setosa 
 5          5           3.6          1.4         0.2 setosa 
 6          5.4         3.9          1.7         0.4 setosa 
 7          4.6         3.4          1.4         0.3 setosa 
 8          5           3.4          1.5         0.2 setosa 
 9          4.4         2.9          1.4         0.2 setosa 
10          4.9         3.1          1.5         0.1 setosa 
# … with 40 more rows
On voudrait faire un sous-ensemble dans le tableau suivant l'espèce. Par exemple, on voulait le table pour les espéces qui sont des setosa. Il me donne un aperçut de mon tableau. Il y a 50 individus qui sont setosa.

> filter(iris, Species != "setosa")
# A tibble: 100 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species   
          <dbl>       <dbl>        <dbl>       <dbl> <fct>     
 1          7           3.2          4.7         1.4 versicolor
 2          6.4         3.2          4.5         1.5 versicolor
 3          6.9         3.1          4.9         1.5 versicolor
 4          5.5         2.3          4           1.3 versicolor
 5          6.5         2.8          4.6         1.5 versicolor
 6          5.7         2.8          4.5         1.3 versicolor
 7          6.3         3.3          4.7         1.6 versicolor
 8          4.9         2.4          3.3         1   versicolor
 9          6.6         2.9          4.6         1.3 versicolor
10          5.2         2.7          3.9         1.4 versicolor
# … with 90 more rows
Je pourrais vouloir tous les individus qui ne sont pas setosa. Au lieu de mettre éauivalent on va mettre différent. On voit donc qu'on a du versicolor et on a 100 individus au lieu de 150

> filter(iris, Species %in% c("setosa", "versicolor"))
# A tibble: 100 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          5.1         3.5          1.4         0.2 setosa 
 2          4.9         3            1.4         0.2 setosa 
 3          4.7         3.2          1.3         0.2 setosa 
 4          4.6         3.1          1.5         0.2 setosa 
 5          5           3.6          1.4         0.2 setosa 
 6          5.4         3.9          1.7         0.4 setosa 
 7          4.6         3.4          1.4         0.3 setosa 
 8          5           3.4          1.5         0.2 setosa 
 9          4.4         2.9          1.4         0.2 setosa 
10          4.9         3.1          1.5         0.1 setosa 
# … with 90 more rows
Si on veut sélectionner deux groupes. Si je veux sélectionner deux colonnes : setosa et versicolor. Il faudrait que j'utilise un opérateur que l'on a déjà vu %in% et on va lui donnée un vecteur. Je veux que espéces soit versicolor ou setosa. L'ensemble verginica n'est pas là.

> filter(iris, (Species == "setosa" | Species == "versicolor"))
# A tibble: 100 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          5.1         3.5          1.4         0.2 setosa 
 2          4.9         3            1.4         0.2 setosa 
 3          4.7         3.2          1.3         0.2 setosa 
 4          4.6         3.1          1.5         0.2 setosa 
 5          5           3.6          1.4         0.2 setosa 
 6          5.4         3.9          1.7         0.4 setosa 
 7          4.6         3.4          1.4         0.3 setosa 
 8          5           3.4          1.5         0.2 setosa 
 9          4.4         2.9          1.4         0.2 setosa 
10          4.9         3.1          1.5         0.1 setosa 
# … with 90 more rows
donne le même résultat

> filter_all(iris[,-5], any_vars(. > 5))
# A tibble: 118 × 4
   Sepal.Length Sepal.Width Petal.Length Petal.Width
          <dbl>       <dbl>        <dbl>       <dbl>
 1          5.1         3.5          1.4         0.2
 2          5.4         3.9          1.7         0.4
 3          5.4         3.7          1.5         0.2
 4          5.8         4            1.2         0.2
 5          5.7         4.4          1.5         0.4
 6          5.4         3.9          1.3         0.4
 7          5.1         3.5          1.4         0.3
 8          5.7         3.8          1.7         0.3
 9          5.1         3.8          1.5         0.3
10          5.4         3.4          1.7         0.2
# … with 108 more rows
Si on veut faire sur toutes les colonnes du tibble, on utilise la function filter_all. Je donne species sans la variable species. Si une des variables est supérieur à 5 et si toutes les variables sont en dessous de 5 on ne garde pas l'individu. On voit qu'il ya 118 individus qui ont au moins une variable au-dessus de 5.

> filter(iris, (Sepal.Length > 5 | Sepal.Width > 5 | Petal.Length > 5 |
+                 Petal.Width > 5))
# A tibble: 118 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          5.1         3.5          1.4         0.2 setosa 
 2          5.4         3.9          1.7         0.4 setosa 
 3          5.4         3.7          1.5         0.2 setosa 
 4          5.8         4            1.2         0.2 setosa 
 5          5.7         4.4          1.5         0.4 setosa 
 6          5.4         3.9          1.3         0.4 setosa 
 7          5.1         3.5          1.4         0.3 setosa 
 8          5.7         3.8          1.7         0.3 setosa 
 9          5.1         3.8          1.5         0.3 setosa 
10          5.4         3.4          1.7         0.2 setosa 
# … with 108 more rows
donne le meme resultat

> filter_all(iris[,-5], all_vars(. > 2))
# A tibble: 23 × 4
   Sepal.Length Sepal.Width Petal.Length Petal.Width
          <dbl>       <dbl>        <dbl>       <dbl>
 1          6.3         3.3          6           2.5
 2          7.1         3            5.9         2.1
 3          6.5         3            5.8         2.2
 4          7.6         3            6.6         2.1
 5          7.2         3.6          6.1         2.5
 6          6.8         3            5.5         2.1
 7          5.8         2.8          5.1         2.4
 8          6.4         3.2          5.3         2.3
 9          7.7         3.8          6.7         2.2
10          7.7         2.6          6.9         2.3
# … with 13 more rows
On a 23 individu ou il y a toutes les valeurs sont supérieur à 2.



# shortcut qui marche :
command c copier
command v coller
command + entrée ça le colle dans la ligne de commande et ça l'exécute et affiche le résultat