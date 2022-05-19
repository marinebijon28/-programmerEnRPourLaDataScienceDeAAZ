#### formationProgrammerEnRPourLaDataScienceDeAAZUdemy

### Section 1 : Introduction et mise en place du cours
## Installation de R et RStudio
R c'est un langage de programmation et un logiciel libre qui est dédié aux statistiques ou data science. C'est un outil utilisé les statisticiens ou la science des données, data scientiste. R est un langage de programmation interprété. 

C'est-à-dire qu'on va taper des lignes de commandes qui vont être directement interprété et les résultats vont être généré directement sur notre écran. Le désavantage de R, c'est son interface. C'est son écran noir qui va taper des lignes de commandes et donc il y a un outil qui a été développé par RStudio.

RStudio c'est un IDE (Environnement de Développement Intégré) qui va se mettre au-dessus de R et qui va permettre d'avoir une belle interface graphique et beaucoup plus simple pour ce qui est de la génération des résultats et  de l'analyse.

On va commencer par télécharger R le langage de programmation et Rstudio qui est l'environnement de développement intégrer.

Pour télécharger vous allez sur google vous allez taper R cran pour télécharger le langage de programmation. Sur le premier lien The Comprehensive R Archive Network. R cran c'est le site de référence de R. On retrouve toute la documentation.
https://cran.r-project.org/

Pour télécharger l'IDE on va sur google on tape RStudio, la version Desktop free.

## Découverte de l'interface RStudio
Vous voyez trois parties. Il y a une quatrième partie très importante. C'est la partie script. On clique sur le + et R Script. Les 4 parties sont magniables, c'est-à-dire que je peux tout déplacer.

En haut à gauche que j'appelle la partie script c'est là où on va mettre toute notre partie script sans que celui-ci soit interprété. C'est un éditeur de code. C'est un fichier qu'on peut sauvegarder, ou chercher du texte avec la loupe. Pour interpréter le code on le surligne avec la souris puis commande + entrée ça le colle dans la ligne de commande. Ça l'exécute et affiche le résultat. 

La deuxième partie c'est dans la console qu'on exécutera notre code.

Dans la troisième partie qui est utilisée quand on crée des objets. L'onglet environment affichera les objets. Dans l'onglet à côté History qu'on retrouve les historiques de commandes.

Ensuite, la dernière partie, on a files dans lequel on va pouvoir naviguer et voir les fichiers. On a la partie plot c'est ici qu'on va afficher les graphiques. La partie package ce sont les packages installés dans R. C'est ici qu'on en a déjà plein, lors de l'installation R installe tout un ensemble d'outil qui permet de faire beaucoup de choses avec R. Ensuite, il y a l'aide c'est important quand on commencera à utiliser les fonctions. Si je tape dans l'aide print ou dans la console ?print dans la console, je vois toute une documentation sur la partie droite. 

## Création d'un projet
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

# operateur pipe
L'opérateur pipe qui ets un opérateur pipe qui est très important avec le package Dplyr. Il permet d'enchaîner les verbes de Dplyr. Cette opérateur pipe s'écrit %>%. En gros ce que ça fait, cet qu'il prends la sortie de la première fonction. On va mettre un pipe à côté ce qui veut dire que la sortie va être redirigé vers la deuxième fonctions et ainsi de suite.
Ça permet d'enchaîner les verbes de faires des choses super lisible et super puissante.

> iris %>%
+ select(Sepal.Length, Petal.Length, Species)
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
On va mettre l'objet que l'on souhaite donnée entrer. puis le pipe %>%, puis enfin les verbes que l'on souhaite lui donnée. Notre verbe c'est select. On lui dit les colonnes que l'on veut sélectionner. On a plus besoin de mettre iris dans le select. Tou simplement parce quon lui donne déjà iris. Grâce au pipe on envoie iris directement à la fonction.
On se retrouve du coup avec nos 3 colonnes comme précédemment

> iris %>%
+ select(-Species) %>%
+ filter_all(all_vars(. > 2))
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
Avant je vous disais avec le filter_all. Je mets avec iris avec , -5, mais enchainant les verbes ya moyen de faire plus propre. On donne iris.  On redirige dans select en enlévant Species. On redirige le traitement de la première fonction dans la deuxième. On voit qu'on se retrouve avec 23 individus et 4 colonnes comme précédemment.
Le principe du pipe. Je donne iris qui est envoyé a select. select va enlever la variable species. Ensuite filter va récupérer iris sans species et faire son traitement.

# arrange 
Donc c'est le verbe de Dplyr() pour faire le sort pour trier
C'est un peu l'équivalent de order 

> iris %>%
+ arrange(Sepal.Length)
# A tibble: 150 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          4.3         3            1.1         0.1 setosa 
 2          4.4         2.9          1.4         0.2 setosa 
 3          4.4         3            1.3         0.2 setosa 
 4          4.4         3.2          1.3         0.2 setosa 
 5          4.5         2.3          1.3         0.3 setosa 
 6          4.6         3.1          1.5         0.2 setosa 
 7          4.6         3.4          1.4         0.3 setosa 
 8          4.6         3.6          1           0.2 setosa 
 9          4.6         3.2          1.4         0.2 setosa 
10          4.7         3.2          1.3         0.2 setosa 
# … with 140 more rows
On donne le tibble iris à la fonction arrange pour trier de façon ascendante.

> iris %>%
+ arrange(desc(Sepal.Length))
# A tibble: 150 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species  
          <dbl>       <dbl>        <dbl>       <dbl> <fct>    
 1          7.9         3.8          6.4         2   virginica
 2          7.7         3.8          6.7         2.2 virginica
 3          7.7         2.6          6.9         2.3 virginica
 4          7.7         2.8          6.7         2   virginica
 5          7.7         3            6.1         2.3 virginica
 6          7.6         3            6.6         2.1 virginica
 7          7.4         2.8          6.1         1.9 virginica
 8          7.3         2.9          6.3         1.8 virginica
 9          7.2         3.6          6.1         2.5 virginica
10          7.2         3.2          6           1.8 virginica
# … with 140 more rows
On donne le tibble iris à la fonction arrange pour trier de façon descendante.

> iris %>%
+ arrange(Sepal.Length, Sepal.Width)
# A tibble: 150 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1          4.3         3            1.1         0.1 setosa 
 2          4.4         2.9          1.4         0.2 setosa 
 3          4.4         3            1.3         0.2 setosa 
 4          4.4         3.2          1.3         0.2 setosa 
 5          4.5         2.3          1.3         0.3 setosa 
 6          4.6         3.1          1.5         0.2 setosa 
 7          4.6         3.2          1.4         0.2 setosa 
 8          4.6         3.4          1.4         0.3 setosa 
 9          4.6         3.6          1           0.2 setosa 
10          4.7         3.2          1.3         0.2 setosa 
# … with 140 more rows
Si on veut ordonner plusieurs variables ce serait possible

> iris %>%
+ select(Petal.Length, Petal.Width, Species) %>%
+ filter(Species == "setosa") %>%
+ arrange(Petal.Length, Petal.Width)
# A tibble: 50 × 3
   Petal.Length Petal.Width Species
          <dbl>       <dbl> <fct>  
 1          1           0.2 setosa 
 2          1.1         0.1 setosa 
 3          1.2         0.2 setosa 
 4          1.2         0.2 setosa 
 5          1.3         0.2 setosa 
 6          1.3         0.2 setosa 
 7          1.3         0.2 setosa 
 8          1.3         0.2 setosa 
 9          1.3         0.3 setosa 
10          1.3         0.3 setosa 
# … with 40 more rows
On donne iris en entier à la fonction select. On choisit les trois colonnes Petal.Length, Petal.Length, Species. On choisit que l'ensemble setosa. La dernière fonction trie par Petal.Length, puis Petal.Width de façon ascendante.

# summarise
Donc maintenaant on va voir le verbe summarise qui permet de faire un résumé statistique d'une de nos variables. En fait summarise va prendre une valeur en entrer donc un vecteur. Il va sortir au final une seul valeur qui va résumer cette variable.
Donc avec summarise, on va pouvoir utiliser les fonctions qu'on a déjà vue : min, sum, max

> iris  %>%
+ summarise(moyenneTaillePetal=mean(Petal.Length))
# A tibble: 1 × 1
  moyenneTaillePetal
               <dbl>
1               3.76
On donne iris a summary et on va assigné un nom de colonne à notre valeur obtenu par mean. moyenneTaillePetal c'est 3.76, donc on a tibble qui contient une valeur la moyenne des petals

> iris  %>%
+ summarise(moyenneTaillePetal=mean(Petal.Length),
+ minTaillePetal=min(Petal.Length),
+ maxTaillePetal=max(Petal.Length),
+ total=n())
# A tibble: 1 × 4
  moyenneTaillePetal minTaillePetal maxTaillePetal total
               <dbl>          <dbl>          <dbl> <int>
1               3.76              1            6.9   150
> 
On va vouloir calculer plusieurs résumé statistique. On reprends notre moyenne et on va pouvoir enchaîner des fonctions. On va vouloir la taille minimum des pétals et la taille maximum des pétals. Avec summarise il y a une fonction, la fonction n. Ça permet de calculer l'effectif de notre tableau qui est traité notre vecteur dans cet exemple.
On va voir la moyenne des tailles des pétals qui ets 3,76. La taille minimum des pétals de 1, la taille maximum 6,9, est un total 150.

> iris  %>%
+ summarise(moyenneTaillePetal=mean(Petal.Length),
+ moyenneTailleSepal=mean(Sepal.Length),
+ minTaillePetal=min(Petal.Length),
+ minTailleSepal=min(Sepal.Length)
+ )
# A tibble: 1 × 4
  moyenneTaillePetal moyenneTailleSepal minTaillePetal minTailleSepal
               <dbl>              <dbl>          <dbl>          <dbl>
1               3.76               5.84              1            4.3
Quand j'envoie dans R. J'ai bien 4 colonnes avec les deux moyennes et les deux tailles minimum.

> iris  %>%
+ summarise_each(funs(mean, min), Petal.Length, Sepal.Length)
# A tibble: 1 × 4
  Petal.Length_mean Sepal.Length_mean Petal.Length_min Sepal.Length_min
              <dbl>             <dbl>            <dbl>            <dbl>
1              3.76              5.84                1              4.3
Il y a donc une fonction qui a été créé qui s'appel summarise.
Summarise_each qui va attendre 2 arguments. Funs pour function, on peut lui donner plusieurs fonctions. On va dire qu'on va utiliser mean et min. Ensuite on peut lui donnée une suite de variable ou on veut effectuer les fonctions données en premier paramètre. on lui a pas donnée les noms de colonnes donc il utilise les noms de colonnes de iris avec la fonction utiliser. On a un message d'erreur summarise est deprecated. donc il propose accross.

# group_by
Maintenant on va voir notre group_by, c'est le concept split a plane et combine. En fait ce que group by va faire c'est qu'il va splitter selon une variable catégorielle. Une variable qualitative par exemple ou une sous dataframe avec cette variable là et ça nous permettra de faire des statistiques uniquement sur les sous-groupe et non pas sur le tableau entier. Ce qui est pratique sur les analyses statistiques.
Le but de group_by, c'est de splitter un tableau de faire un sous-ensemble selon une variable. D'appliquer une fonction dessus. Le gros avantage qui va sortir un résultat qui est groupé pour chaque groupe

> iris %>%
+ group_by(Species) %>%
+ summarise(moyenneTaillePetal=mean(Petal.Length),
+ minTaillePetal=min(Petal.Length),
+ maxTaillePetal=max(Petal.Length),
+ total=n())
# A tibble: 3 × 5
  Species    moyenneTaillePetal minTaillePetal maxTaillePetal total
  <fct>                   <dbl>          <dbl>          <dbl> <int>
1 setosa                   1.46            1              1.9    50
2 versicolor               4.26            3              5.1    50
3 virginica                5.55            4.5            6.9    50
On va commencé par par lui donnée d'iris. Groupe by il faut lui donnée la variable sur laquelle on veut grouper notre tableau donc species. C'est notre variable catégorielle ou variable qualitative qui permet de créer des groupes. Ensuite on va utiliser summarise et on va mettre ce qu'on a utilisé plus haut d'ailleurs. On va faire le mettre summarise comme avant sauf que maintenant un va grouper par espèce.
Group by va faire un tableau par espèce. Il va appliquer la fonction a chaque sous tableau. Ensuite, il va sortir un résultat combiner. 
L'avantage du group by, c'est qu'on va voir un tableau, mais séparer par groupe. 

> iris %>%
+ group_by(Species) %>%
+ filter(Petal.Length > 5) %>%
+ summarise(n())
# A tibble: 2 × 2
  Species    `n()`
  <fct>      <int>
1 versicolor     1
2 virginica     41
On pourrait utiliser le verbe filter avec group_by. Je donne iris en entrée. Je group by par espèce et la je vais faire un filter sur Petal.Length au-dessus de 5. Le nombre d'individu qui correspond au filtre. On a un versicolor ou Petal.Length supérieur a 5 et 41 verginica

# mutate
Ça permet d'ajouter des variables donc des colonnes. Ça va aussi permettre de supprimer des colonnes ou de modifier des variables.

> iris %>%
+ mutate(sommeLongueurLargeurPetale=Petal.Length + Petal.Width,
+ sommeLongueurLargeurSepale=Sepal.Length + Sepal.Width) 
# A tibble: 150 × 7
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species sommeLongueurLargeurPetale sommeLongueurLargeurSep…
          <dbl>       <dbl>        <dbl>       <dbl> <fct>                        <dbl>                    <dbl>
 1          5.1         3.5          1.4         0.2 setosa                         1.6                      8.6
 2          4.9         3            1.4         0.2 setosa                         1.6                      7.9
 3          4.7         3.2          1.3         0.2 setosa                         1.5                      7.9
 4          4.6         3.1          1.5         0.2 setosa                         1.7                      7.7
 5          5           3.6          1.4         0.2 setosa                         1.6                      8.6
 6          5.4         3.9          1.7         0.4 setosa                         2.1                      9.3
 7          4.6         3.4          1.4         0.3 setosa                         1.7                      8  
 8          5           3.4          1.5         0.2 setosa                         1.7                      8.4
 9          4.4         2.9          1.4         0.2 setosa                         1.6                      7.3
10          4.9         3.1          1.5         0.1 setosa                         1.6                      8  
# … with 140 more rows
On donne iris en entrée, on va ajouter une colonne qui s'appelle sommeLongueurLargeurPetal qui est la somme de Petal.Length et Petal.Width. on va faire pareil pour sepal. On a notre tableau iris plus les deux colonnes que l'on a ajouté

> iris %>%
+ mutate(Species=NULL, Sepal.Width=NULL) 
# A tibble: 150 × 3
   Sepal.Length Petal.Length Petal.Width
          <dbl>        <dbl>       <dbl>
 1          5.1          1.4         0.2
 2          4.9          1.4         0.2
 3          4.7          1.3         0.2
 4          4.6          1.5         0.2
 5          5            1.4         0.2
 6          5.4          1.7         0.4
 7          4.6          1.4         0.3
 8          5            1.5         0.2
 9          4.4          1.4         0.2
10          4.9          1.5         0.1
# … with 140 more rows
On va vouloir supprimer la colonne species. donc on met le nom de la colonne dans mutate et on lui assigne null. On fait pareil avec la colonne Sepal.Width. On voit donc les trois variables défini dans le tableau.

> iris %>%
+ mutate(Sepal.Length=Sepal.Length*2) 
# A tibble: 150 × 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
 1         10.2         3.5          1.4         0.2 setosa 
 2          9.8         3            1.4         0.2 setosa 
 3          9.4         3.2          1.3         0.2 setosa 
 4          9.2         3.1          1.5         0.2 setosa 
 5         10           3.6          1.4         0.2 setosa 
 6         10.8         3.9          1.7         0.4 setosa 
 7          9.2         3.4          1.4         0.3 setosa 
 8         10           3.4          1.5         0.2 setosa 
 9          8.8         2.9          1.4         0.2 setosa 
10          9.8         3.1          1.5         0.1 setosa 
# … with 140 more rows
Si on veut modifier une colonne on ecrit le nom de la colonne et le traitement qu'on veut lui faire. on voit qu'on fait bien fois deux sur les sepal.Length

# exercice
On va faire du data meaning.

# quelles sont les 5 villes avec le plus de fast-food
> fastFoodTibble %>%
+ group_by(city) %>%
+ summarise(nombreDeRestaurants=length(city)) %>%
+ arrange(desc(nombreDeRestaurants)) %>%
+ head(n=5)
# A tibble: 5 × 2
  city       nombreDeRestaurants
  <chr>                    <int>
1 Cincinnati                 119
2 Las Vegas                   72
3 Houston                     63
4 Miami                       58
5 Denver                      52
On groupe par city pour avoir un sous-ensemble ppar ville. Puis on crée une colonne avec la longueur. Enfin on trie de façon décroissante le nombre de restaurant. Puis on limite au 5 premières lignes.

# Quels sont les fastFoods les plus présent dans les cinq villes
> FastFoodCity=fastFoodTibble %>%
+ group_by(city) %>%
+ summarise(nombreDeRestaurants=length(city)) %>%
+ arrange(desc(nombreDeRestaurants)) %>%
+ head(n=5) %>%
+ pull(city)
On récupère le résultat de la requête du-dessus qu'on met dans une variable avec seulement les city.

> fastFoodTibble %>%
+ filter(city %in% FastFoodCity) %>%
+ group_by(name) %>%
+ summarise(nombreDeFastFood=length(name)) %>%
+ arrange(desc(nombreDeFastFood))
# A tibble: 75 × 2
   name           nombreDeFastFood
   <chr>                     <int>
 1 Burger King                  49
 2 McDonald's                   49
 3 Taco Bell                    25
 4 Wendy's                      24
 5 KFC                          21
 6 Domino's Pizza               16
 7 Subway                       15
 8 White Castle                 15
 9 Pizza Hut                    13
10 Arby's                       11
# … with 65 more rows
Je filtre les villes qui sont dans le vecteurs dons les 5 villes ou il y a le plus de fast food. Je fais des sous ensemble par nom de restaurant. Puis je crée une colonne avec le nombre de ce fast food. Puis j'ordonne de façon décroissante sur la colonne avec le nombre de fast food.

# Quels sont les fast food avec le plus de restaurants aux US ?
> fastFoodTibble %>%
+ group_by(name) %>%
+ summarise(nombreDeFastFood=length(name), pourcentageDeFastFood=length(name)*
+             100/10000) %>%
+ arrange(desc(nombreDeFastFood))
# A tibble: 548 × 3
   name           nombreDeFastFood pourcentageDeFastFood
   <chr>                     <int>                 <dbl>
 1 McDonald's                 1886                 18.9 
 2 Burger King                1154                 11.5 
 3 Taco Bell                   873                  8.73
 4 Wendy's                     731                  7.31
 5 Arby's                      518                  5.18
 6 KFC                         421                  4.21
 7 Domino's Pizza              345                  3.45
 8 Subway                      322                  3.22
 9 SONIC Drive In              226                  2.26
10 Hardee's                    192                  1.92
# … with 538 more rows
On crée des sous-ensemble par fast food. Puis on crée deux colonnes une avec le nombre de restaurant et l'autre le pourcentage fast food. Puis on range de façon décroissante par rapport au nombre de fast food. 

# Dans quelle ville y a-t-il le plus de McDonald's ?
> fastFoodTibble %>%
+ filter(name %in% "McDonald's") %>%
+ group_by(city) %>%
+ summarise(nombreMcDonals=length(city)) %>% 
+ arrange(desc(nombreMcDonals))
# A tibble: 1,248 × 2
   city          nombreMcDonals
   <chr>                  <int>
 1 Cincinnati                19
 2 Houston                   11
 3 Louisville                10
 4 Las Vegas                  9
 5 Minneapolis                9
 6 Chicago                    8
 7 Evansville                 8
 8 Greenville                 8
 9 Oklahoma City              8
10 Phoenix                    8
# … with 1,238 more rows
On trie les noms de restaurant en gardant les McDonalds. Puis on groupe par ville. Puis on crée une colonne avec le nombre de McDonals on compte le nombre de McDonalds. Puis on trie de façon descendante le nombre de McDonalds.

# Où se situe New-York par rapport aux 5 villes avec le plus de fast food ?
> fastFoodTibble %>% 
+ group_by(city) %>%
+ filter(city %in% "New York") %>%
+ summarise(nombreDeFastFood=length(city))
# A tibble: 1 × 2
  city     nombreDeFastFood
  <chr>               <int>
1 New York               36
On groupe par city puis on filtre sur New York. Puis on crée la colonne avec le nombre de fast food.

# fast food les plus présent a New York
> fastFoodTibble %>%
+ filter(city %in% "New York") %>%
+ group_by(name) %>%
+ summarise(nombreDeFastFood=length(name), pourcentageDeFastFood=length(name)*
+             100/10000) %>%
+ arrange(desc(nombreDeFastFood))
# A tibble: 13 × 3
   name                   nombreDeFastFood pourcentageDeFastFood
   <chr>                             <int>                 <dbl>
 1 Subway                                8                  0.08
 2 McDonald's                            6                  0.06
 3 Burger King                           5                  0.05
 4 Domino's Pizza                        5                  0.05
 5 Chipotle Mexican Grill                2                  0.02
 6 Dunkin' Donuts                        2                  0.02
 7 Five Guys                             2                  0.02
 8 Fuku                                  1                  0.01
 9 Little Caesars Pizza                  1                  0.01
10 Pizza Hut                             1                  0.01
11 Popeye's                              1                  0.01
12 SUBWAY                                1                  0.01
13 SUBWAY®                               1                  0.01
on filtre avec la ville new York. Puis on groupe avec le nom des fast food. On crée deux colonne une avec le nombre de fast food et une avec le pourcentage de fast food.

## Section 7 : Visualisation avancées des données

# Créer son premier graphique avec la fonction plot 
# plot
> plot(iris$Sepal.Length, iris$Sepal.Width, xlab = "Longueur", ylab = "Largeur", 
+      col="blueviolet")
Plot va créer ce graphique là. 

# lines
> lines(iris$Petal.Length, iris$Petal.Width, col="skyblue1")
On peut l'utiliser autant de fois que l'on veut après plot pour rajouter des colonnes sur le graphique. Quand on utilise lines, il crée des lignes entre les points rajoutés.

> lines(iris$Petal.Length, iris$Petal.Width, col="skyblue1", type="p")
Pour rajouter les colonnes avec des points sur le graphique au lieu des lignes.

> plot(iris$Sepal.Length, iris$Sepal.Width, xlab = "Longueur", ylab = "Largeur", 
+ col="blueviolet", xlim = c(min(iris$Petal.Length, iris$Sepal.Length), 
+ c(max(iris$Petal.Length, iris$Sepal.Length))), ylim = c(min(iris$Petal.Width, 
+ iris$Sepal.Width), c(max(iris$Petal.Width, iris$Sepal.Width))))
> lines(iris$Petal.Length, iris$Petal.Width, col="slateblue4", type="p")
Si les valeurs rajoutés par lines sont plus grande que celle renseigne sur plot. Elle n'apparaitront pas sur le graphique. C'est pour cela qu'on doit configurer les limites du graphiques.
Donc on créer deux vecteurs : un pour les x avec un min et un max et autre pour les y avec un min et un max.

> title(main="Longeur en fonction de largeur", col.main="blue")
On veut mettre un titre à un graphique, choisir sa couleur, et d'autres options.

> lines(iris$Petal.Length, iris$Petal.Width, col="slateblue4", type="p", pch=22)
Pour changer les ronds en points par exemple.

> legend(1, 4.2, c("sepal", "petal"), col=c("blueviolet", "slateblue4"), 
+ pch=21:22)
Si je veux rajouter une légende. Elle attend des coordonnes x et y où placer la legende. Puis le nom des colonnes dans l'ordre où on les a tracé. Puis les points utilisé

# Créez des graphiques plus élaborés ggplot2
Ce package a été développé par Hadley Wickham. Il a aussi développer Ddplyr. C'est quelqu'un qui a fait beaucoup pour R qui a falicité la programmation sous R. La génération facile de résultat complexe. Donc en fait Ggplot2. 
Il fonctionne avec des grammaires des graphiques. On va vraiment essayer de séparer tous les composants que ce soit les données, les couleurs, les labels et etc. Tout va être correctement séparé et facilement séparé

> library("ggplot2")
Donc il faut le charger donc on utilise library car c'est package.

# plot = data  : on donne le tableau + aesthetics : permet de définir tout ce qui est forme, couleur, label, etc + gyometrie : qui permet de définir le type de graphique qu'on veut faire
> g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width))
> g
On donne le tableau iris. Puis on utilise aes pour l'esthétique. Comme iris est chargé on a juste a donné les noms de colonnes en x et y.on tape g et entréer pour afficher le graphique. On a le graphique créer mais on a pas de points.

> g<-g+geom_point()
> g
Donc on reprends le graphique + geom_point pour avoir les points. Des colonnes dans les axes.

# ggplot2 : les couleurs, les formes et les tailles

# couleur selon les especes
> g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species))+geom_point()
> g
on a rajouté les couleurs par espèce. On voit les points qui ont une couleur et la légende a droite.

# changer la forme des points
> g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species, shape=Species))+geom_point()
> g
On a changé le style de points et une couleur en fonction de chaque espèce. On retrouve la légende a droite

# modifier la taille des points
> g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species, 
+ shape=Species))+geom_point(size=3)
> g
geom_point prends en paramètre la taille des points pour créer les points selon cette taille.

# Creer un gradiant de couleurs
> g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Petal.Length, 
+ shape=Species))+geom_point(size=3)
> g
On créé un gradiant de couleur en fonction de la taille Petal.Length

> g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Petal.Length, 
+ shape=Species))+geom_point(size=3)
> g<-g+scale_color_gradient(low="blue", high="red")
> g
On créé un radiant de couleur de la plus basse des valeurs a la plus haute 

# ggplot2 : La légende (introduction des thèmes)
aes c'est toute la partie esthétique : la couleur des points, la forme. après si on veut vraiment changer le graphique la forme, le cadrant. on va utiliser ce que l'on appelle les thèmes. Je vais vous montrer les thèmes qu'on a sur modifier la légende.

# modifier le fond du cadrant 
> g<-g+theme
On voit tout les thèmes

> g<-g+theme_minimal()
> g
On a plus le fond gris mais un fond blanc.

> g<-g+theme_dark()
> g
On a maintenant un fond gris foncée.

# modifier la position de la légende
> g<-g+theme(legend.position = "bottom")
> g
On positionne la légende en bas.Cela est possible grace a legende.position

> g<-g+theme(legend.position = "top")
> g
On positionne la légende en haut.

> g<-g+theme(legend.position = "none")
> g
On n'affiche plus la légende

> g<-g+theme(legend.title = element_blank())
> g
cacher le titre de la légende. Cela est possible grace a legende.title

> g<-g+theme(legend.title = element_text(color="red", size=9, face="bold"))
> g
modifier couleur, texture du titre de la legende. on lui dit que le titre de la légende doit être rouge, de taille 9, et en gras.


> g<-g+theme(legend.text=(element_text(color="blue", size=8, face="bold.italic")))
> g
modifier couleur, texture, taille des labels de la legende. On lui met une couleur blue, la taille a 8, et en gras italic. Cela est possible grace a legende.text

> g<-g+theme(legend.background=(element_rect(fill="grey")))
> g
Ajouter un cadre gris a la legende. Cela est possible grace a legende.background

> g<-g+theme(legend.background=(element_rect(fill="grey", size=2, linetype=
+ "dotted")))
> g
Ajouter un cadre gris pointiller a la legende

# ggplot2 : axes et titres
> g<-g+xlab("Longueur des petales")+ylab("Largeur des petales")+
+ ggtitle("Longueur des Petales en fonction de la largeur des petales")
> g
xlab permet de donnée un titre a l'axe des abscisses et ylab permet de donnée un titre a l'axe des ordonnées. ggtitle permet de données un titre au graphique

> g<-g+theme(plot.title=element_text(color="steelblue", size=10, face="bold"))
> g
Met le texte en blue avec une taille de 10 et en gras. Grace a plot.title

> g<-g+theme(axis.title=element_text(color="steelblue", size=10, face="bold"))
> g
Change le nom des axes en bleu sa taille et le met en gras. Grace a axis.title


> g<-g+theme(axis.text=element_text(color="steelblue", size=10, face="bold", 
+ angle=45))
> g
Change le nom des axes en bleu sa taille et le met en gras. Puis mets les repères des axes inclinés au lieu d'être droit. axis.text

> g<-g+theme(axis.line=element_line(color="steelblue", size=2, linetype="dotted"))
> g
On a changé la couleur des textes en blue, changé sa size a 2, et mis des points.

> g<-g+facet_wrap(~Species)
> g
Le tild permet de dire en fonction du nom de la colonne passée en paramètre. Permet de faire un graphique avec 3 colonnes séparés.

> g<-g+facet_wrap(~Species, ncol=1)
> g
Permet d'avoir une colonne avec 3 graphiques en ligne

> g<-g+facet_wrap(~Species)+theme(strip.text=element_text(color="steelblue", 
+ size=10, face="bold"))
> g
Vue que c'est un élément text on utilise la fonction thème.Pour modifier les facet on utilise la fonction stripe. Pour le texte on utilise element_text. On change les éléments texte des espèces sur le graphe.

> g<-g+theme(strip.background=element_rect(color="steelblue", size=1, 
+ linetype="solid"))
> g
ajout d'un cadre autour des especes. on utilise toujours strip car on a utilisé facet. Vue qu'on change le fonc on utilise background. element_rect pour le rectangle.

# ajouter des annotations aux graphiques
On ne vas plus utilisés la fonction thème car on est à l'extérieur du graphique. On va utiliser la fonction annotate

> g<-g+annotate("text", x=c(2,4,6), y=0.7, label=c("setosa",  "versicolor", 
+ "setosa"))
> g
On rajoute une légende dans le graphique. On ajoute donc du texte dans la fonction annotate sur les abscisses 2, 4 et 6. tous sur la même ligne des ordonnées avec le nom de toutes les espèces dans l'ordre ou elles apparaissent sur le graphique.

> g<-g+annotate("rect", xmin=0.5, xmax=2.1, ymin=0, ymax=0.65)
> g
Ajouter un rectangle opaque à l'intérieur du graphique sur un groupe d'espèces par exemple.

> g<-g+annotate("rect", xmin=0.5, xmax=2.1, ymin=0, ymax=0.65, alpha=0.2)
> g
Ajouter un rectangle transparent à l'intérieur du graphique sur un groupe d'espèces par exemple.

> g<-g+annotate("rect", xmin=0.5, xmax=2.1, ymin=0, ymax=0.65, alpha=0.2, 
+ color="steelblue", size=2)
> g
Ajouter une bordure rectangulaire à l'intérieur du graphique sur un groupe d'espèces par exemple. On peut définir la bordure avec la couleur et sa taille 

> g<-g+annotate("segment", x=0.5, xend=4, y=1.5, yend=0)
> g
Ajouter un segment à l'intérieur du graphique pour séparer un groupe d'espèces par exemple. 

> g<-g+annotate("segment", x=0.5, xend=4, y=1.5, yend=0, color="steelblue", 
+ size=2, alpha=0.2)
> g
Ajouter un segment de couleur steelblue avec une size de 2 et transparente à l'intérieur du graphique pour séparer un groupe d'espèces par exemple. 

# ggplot2 : Les differents types de graphes (geoms)

> g<-ggplot(iris, aes(x=Petal.Length))+geom_histogram(binwidth=0.5)
> g
Pour les histogrammes on a besoin que d'une valeure et on utilise la fonction geom_histogramme. Pour chaque longueur de pétale on a le nombre d'individu. Le binwidth est l'unité sur laquelle compter de 0.5 en 0.5 sur la longueur des petal

> g<-ggplot(iris, aes(x=Petal.Length, fill=Species))+geom_histogram(binwidth=0.5)
> g
On colorise l'histogramme en fonction des especes grace a fill des Species

> g<-ggplot(iris, aes(x=Petal.Length, fill=Species))+geom_histogram(color="white",
+ binwidth=0.5)
> g
Permet de faire des contours entre les colonnes de l'histogramme grace a color="white"

> png("histogramme_iris.png")
> g<-ggplot(iris, aes(x=Petal.Length, fill=Species))+geom_histogram(color="white",
+ binwidth=0.5)
> g
> dev.off()
permet d'esporter le graphique au format png.

> g<-ggplot(iris, aes(x=Species, y=Petal.Length, fill=Species))+geom_boxplot()
> g
un boxplot c'est comme une summarise. Ça permet de voir la distribution de donn2es la median, les quartiles. Un boxplot c'est une boite a moustache. Le trait au milieu est la median. La partie en-dessous est le premier quartile jusqu'à la median et au-dessus de la median jusqu'à la fin c'est le troisième quartile. Les points sont des valeures extreme aui peuvent être des fausses valeures.

> g<-g+ggtitle("Boxplot de la longueur des petales selon l'espece")+xlab("espece")+
+ ylab("longueur des petales")
> g
donne un titre au graphique et un nom a l'axe des abcisse et l'axe des ordonnées

# Exercise

# Quels sont les 10 villes ou il a le plus de fast food ?
> FastFoodCity=fastFoodTibble %>%
+ group_by(city) %>%
+ summarise(nombreDeRestaurants=length(city)) %>%
+ arrange(desc(nombreDeRestaurants)) %>%
+ head(n=10) %>%
+ pull(city)
On affecte tous les noms des villes dans fastoFoodCity. On groupe par ville et on crée une colonne par ville avec le nombre de restaurant dans une nouvelle colonne. Puis on range par ordre décroissant le nombre de restaurant par ville. Puis on prends les 10 premières villes.

# tibble avec les 10 villes
> fastFoodTibble10Villes=fastFoodTibble %>%
+ filter(city %in% FastFoodCity) 
On récupère les dix villes sous formes de tibble

# les dix fast food les présent dans ces dix villes
> listFastFood=fastFoodTibble10Villes %>%
+ group_by(name) %>%
+ summarise(nombreDeRestaurants=length(name)) %>%
+ arrange(desc(nombreDeRestaurants)) %>%
+ head(n=10) %>%
+ pull(name)
On assigne dans listFastFood le nom des restaurants. On regroupe par nom de restaurant et on compte le nombre de restaurant en l'assignant dans une nouvelle colonne. On prends le noms des dix premiers restaurants.

# on récupère le noms des 10 restaurants les plus présents dans les 10 villes où
# il y a le plus de fast food
> fastFoodTibble10Villes10FastFood=fastFoodTibble10Villes %>%
+ filter(name %in% listFastFood)

# barplot
> g<-ggplot(fastFoodTibble10Villes10FastFood, aes(city, fill=name))+geom_bar()
> g
Un barplot c'est un graphique de bar. Plus un fast food est présent dans la ville plus la partie dans la bar qui lui est assigné est plus grande.

# nom d'axe et titre de graphique
> g<-g+xlab("Les 10 capitales de fast-food")+
+ ylab("Les 10 restaurants les plus implentés")+
+ ggtitle("Représentation des fast foods les plus implentées 
+ dans les 10 capitales du fast-foods")
> g
Pour nommer les axes et le titre peut être coupé en appyant sur entrée et le mettant a la ligne ou mettant un \n dans la phrase là où on veut couper. \n veut dire retoure à la ligne.

# pour centrer un title
> g<-g+theme(plot.title = element_text(hjust=0.5))
> g
Pour centrer le titre du graphique

# changer l'inclination des nom des villes a 45° et en gras, taille des 
# caractères
> g<-g+theme(axis.text = element_text(face = "bold", size = 7, angle = 45))
> g
Pour changer les valeurs x en changeant pour qu'elles soient plus lisible.

# on veut changer l'échelle du graphique
> g<-g+ylim(0, 100)
> g
On donne la limite maximale de l'axe des ordonnées qui est à 100.

# enlever le titre de la légende
> g<-g+theme(legend.title = element_blank())
> g
Enlève le titre de la légende

# r color brewer palette
# changer la couleur de la palette
> g<-g+scale_fill_brewer(palette="Paired")
> g
change les couleurs du graphique

> ggplotly(g)
rend le graphique interactif

# Qu'est-ce que l'apprentissage automatique (machine learning)
Le machine learning qui permet de mettre en place des algorithmes qui vont 
pouvoir être appliquer sur des données et pouvoir déterminer des 
caractéristiques. Le machine learning va s'appyer sur des données 
d'apprentissage. En gros il va apprendre l'algorithme de machine learning 
prendre des règles d'apprentissage. Il va ensuite appliquer c'est règles sur 
des nouvelles données pour déterminer des caractéristiques. 

Donc nous on va travailler sur de l'apprentisage superviser. On va essayer de classer des individus dans des groupes. 

# Données : prédire la souscription d'un client à un produit bancaire

# affiche les duree d'appels
> g<-ggplot(bank_data, aes(x=y, y=duration, fill=y))+geom_boxplot()
> g
Permet de voir les duree d'appels en fonction de s'ils ont souscrit un service a la banque

# affiche en fonction de l'age
> g<-ggplot(bank_data, aes(x=y, y=age, fill=y))+geom_boxplot()
> g
> ggplotly(g)
Permet de voir l'age en fonction de s'ils ont souscrit un service a la banque

# affiche les differentes categorie en fonction du moyen de les contacter
> g<-ggplot(bank_data, aes(y, fill=contact))+geom_bar()
> g
> ggplotly(g)

# Creation d'un jeu de données d'entrainement et de test 
Il faut transformer toute les variables catégorielles en numériques. Puisqu'on ne peut pas faire de modélisation sur les catégories catégorielles. 

Caret est une librairie pour le machine learning. Caret contient tous les algorithmes possibles.

# transformation des variables catégorielles en valeurs numériques
> dummyVariables=dummyVars(~., data=bank_data)
# traitement qu'on va utiliser sur nos variables 
> dummyVariablesData=predict(dummyVariables, newdata = bank_data)
Quand on veut transforme des variables catégorielles en variables numériques

On voit qu'il y a plus de données. Toutes les variables numériques n'ont pas changer. Les variables catégorielles ont été redécoupé afin d'avoir des valeurs numériques

# donne une matrice
> class(dummyVariablesData)
Les matrices acceptes qu'un jeux de données

# tranforme en dataframe
> dummyVariablesData=as.data.frame(dummyVariablesData)
Afin de pouvoir faire des traitements on le transforme en dataframe

# Permet de creer une colonne souscription avec soit yes soit no en fonction de la colonne 
# yno
> dummyVariablesData$"Souscription"=ifelse(dummyVariablesData$"yno" == 1, "No", 
"Yes")

# enlève les deux colonnes yno et yes
> dummyVariablesData$"yno"=NULL
> dummyVariablesData$"yyes"=NULL

# garde 70 % du jeux d'entraînement
> training_size=floor(0.7*nrow(dummyVariablesData))

# il melange tous les indices de dummyVariablesData de longueur training_size
> indices=sample(seq_len(nrow(dummyVariablesData)), size=training_size)

# creer un variable data_bank.train avec les vecteurs aléatoire
> bank_data.train=dummyVariablesData[indices, ]

# traitement des classes desequilibrees et normalisation 
# normalisation des donnees sur le jeux de test
> dataPreprocessValue=preProcess(bank_data.train, method=c("center", "scale"))
> bank_data.test.scaled=predict(dataPreprocessValue, bank_data.test)

# equilibrage des donnees
> table(bank_data.train.scaled[,"Souscription"])

  No  Yes 
2801  363
> bank_data.train.scaled.downsample=downSample(x=bank_data.train.scaled[,
colnames(bank_data.train.scaled) %ni% "Souscription"], 
y=as.factor(bank_data.train.scaled$"Souscription"))
downsample va equilibre les donnees avec la valeur la plus basse et upsample les donnes la plus haute de souscription pour faire sous echantillonnage

# Entrainer un modèle avec Caret : méthode Naives Bayes
La méthode Naives Bayes est un algortithme de machine learning le plus utilisés

On définit une méthode de controle de notre modèle avec repeatdvc, on coupe notre jeux de données en 10. Il y a 90% de notre jeux va être notre jeux de test. 10% de jeux qui va servir de test. Cette cross validation va nous servir de savoir si notre modèle se trompe ou pas. On le répète 3 fois.

On va donner notre variables a prédire donc souscription et les autres variables sont des variables prédictives. Puis notre jeux de données








# shortcut qui marche :
command c copier
command v coller
command + entrée ça le colle dans la ligne de commande et ça l'exécute et affiche le résultat