### Débuter avec R

## Les types de données (character, int, double, booléens, données manquantes...)

# Permet d'afficher une classe
?class
class(3.5)

# Permet d'afficher le type de la variable 
?typeof
typeof(3.5)

# Permet de transformer un double en integer
?as.integer
typeof(as.integer(3))

# Classe caractère
class("hello")

# Type caractère
typeof("hello")

# Booléen
?TRUE
?FALSE
TRUE
FALSE

# Comparaison
65 < 60
3 > 1

?NA
NA

## Les variables

# a a été affecter à la variable myCharacter
myCharacter = "a"
class(myCharacter)

# FALSE a été affecter à la variable myBoolean
myBoolean = 3 < 1
myBoolean

# Commentaire

## Opération arithmétique

myFirstNumber = 10
mySecondNumber = 4

# + permet de faire des opérations avec des valeurs numériques.

10 + 4

myFirstNumber + mySecondNumber

# erreur myCharacter est de type charactère
myCharacter + myCharacter

# - permet de faire des soustractions avec des valeurs numériques.
myFirstNumber - mySecondNumber

# L'opérateur arithmétique / permet de faire des divisions.
myFirstNumber / mySecondNumber

# L'opérateur arithmétique ** permet de faire des puissances.
myFirstNumber ** mySecondNumber

# L'opérateur arithmétique * permet de faire des multiplications.
myFirstNumber * mySecondNumber

# L'opérateur arithmétique %% permet de faire récupérer le reste des divisions
myFirstNumber %% mySecondNumber

## Les vecteurs
?c
# Création de vecteur
c(1, 2, 3)

# Il n'y pas d'ordre
c(3, 2, 1)

# Qu'un seul type valeur dans le vecteur
c("a", 8, 5)
c(5, "a", 5)

# Ranger le vecteur dans une variable
myVector = c(1, 2, 3)

class(myVector)

class(c("a", 8, 5))

## Opérations sur les vecteurs

# Creation de vecteur seq : une séquance de 1 à 10
?seq
myVector1 = seq(from = 1, to = 10)
myVector1

# Creation de vecteur req : la valeur 10, 10 fois
myVector2 = rep(10, times=10)
myVector2

# Addition sur tout le vecteur 
myVector1 + 1

# Multiplication sur le vecteur
myVector1 * 10

# Multiplication par un autre vecteur
myVector1 * myVector2

myVector2 = 10;

# Division des vecteurs
myVector1 / myVector2

# Erreur : les vecteurs ne sont pas de même taille
myVector2 = c(1, 2, 3)
myVector1 / myVector2

# Soustraction de deux vecteurs
myVector2 = seq(from=6, to=15)
myVector1 - myVector2

# Concaténation de vecteur 2
concatenation=c(myVector1, myVector2)
concatenation

## Manipuler les vecteurs grâce aux indexs
myVector2

# Un seul index
myVector2[2]

# Plusieurs indexs à la suite
myVector2[1 : 3]

# Plusieurs indexs ne se suivant pas
myVector2[c(1, 6, 2)]

# Affecte les valeurs de retour de cette condition dans cette variable
superior=myVector2 > 8
superior

# Affiche les variables supérieures à 8
myVector2[superior]

## Qu'est-ce qu'une fonction en R ?

# Mean : affiche la moyenne
?mean
mean(myVector2)

# Affiche la documentation
?mean

## Utiliser les fonctions fournis par R

# Length : pour savoir la taille du vecteur
?length
length(myVector2)

# Names : permet d'afficher le nom du vecteur
?names
names(myVector2)

# Pastes : permet de concaténer du texte
?paste
paste("ma valeur", myVector2, sep=" ")

# Names + Paste : permet de donner un nom aux valeurs du vecteurs
names(myVector2)=paste("ma valeur", myVector2, sep=" ")
myVector2
names(myVector2)

# Sort : trie le vecteur dans l'ordre croissant
?sort
sort(myVector2)

# Sort : trie le vecteur dans l'ordre décroissant
sort(myVector2, decreasing=TRUE)
sort(myVector2, TRUE)

# Rank : permet d'afficher les indexs de chaque variable
?rank
rank(myVector2)

# Sum : permet de faire la somme des valeurs du vecteur
?sum
sum(myVector2)

# Min : affiche la valeur la plus petite
?min
min(myVector2)

# Max : affiche la valeur le plus grande 
?max
max(myVector2)

# Summary : pour résumer l'objet
?summary
summary(myVector2)

# Median : affiche la médianne
?median
median(myVector2)

## Qu'est-ce qu'un package R ?

# Charge le packet dans l'environnement local
library("ggplot2")

# Affiche les packets chargés dans l'environnement
search()

## Savoir utiliser l'aide de R

# Pour ouvrir l'aide de la fonction
?mean

# Default S3 method:
mean(x, trim = 0, na.rm = FALSE, ...)

?print

# Affiche l'aide de print
help("print")
help(print)

# Affiche toute l'aide de R
help.start()

# Permet de chercher une fonction avec un mot clé
help.search("mean")


## Exercice

names(MoyenneDeLaClasse)=c("Pedro", "Baptiste", "Amaury", "Flora", "Kevin", "Markus",
                           "Rozenn", "Raphael", "Jordan", "Victoire", "Thomas", "Julia",
                           "Marion", "Goulwen", "Suzon", "Lise", "Quentin", "Boniface", "Emil",
                           "Gabin")

#nombre aléatoire entre les deux index et tu fais 20 valeurs (deuxieme param)
MoyenneDeLaClasse=sample(1:20, 20)
MoyenneDeLaClasse
?sample

moyenneGenerale = mean(MoyenneDeLaClasse)
moinsBonneNote = min(MoyenneDeLaClasse)
meilleurBonneNote = max(MoyenneDeLaClasse)

# return les valeurs du vecteur supérieur a la moyenne general
eleveSuperieurMoyenneDeLaClass =  MoyenneDeLaClasse[MoyenneDeLaClasse > moyenneGeneral]
eleveSuperieurMoyenneDeLaClass

tableauRecaputilatif=c(moyenneGenerale, moinsBonneNote, meilleurBonneNote, 
                       length(eleveSuperieurMoyenneDeLaClass))
names(tableauRecaputilatif)=c("Moyenne Generale", "moins bonne note", "meilleure note", 
                              "eleve ayant une moyenne plus haute que la moyenne de classe")
tableauRecaputilatif

#affiche le nom de l'élève et sa valeur équivalente a meilleurBonneNote
MoyenneDeLaClasse[MoyenneDeLaClasse==meilleurBonneNote]

# ASC
sort(MoyenneDeLaClasse)

#DESC
sort(MoyenneDeLaClasse, TRUE)

summary(MoyenneDeLaClasse)
