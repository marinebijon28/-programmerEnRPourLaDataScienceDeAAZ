## Débuter avec R

# Les types de données (character, int, double, booléens, données manquantes...)

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

# monvariable monCaractere
monCaractere = "a"

class(monCaractere)
monBooleen=3<1
monBooleen

monPremierNombre=10
monDeuxiemeNombre=4

monPremierNombre + monDeuxiemeNombre

monCaractere + monCaractere

monPremierNombre - monDeuxiemeNombre

monPremierNombre / monDeuxiemeNombre
monPremierNombre ** monDeuxiemeNombre
monPremierNombre * monDeuxiemeNombre
monPremierNombre %% monDeuxiemeNombre

c(1, 2, 3)
c(3, 2, 1)
c("a", 8, 5)
c(5, "a", 5)

monVecteur = c(1, 2, 3)
class(monVecteur)
class(c("a", 8, 5))

monVecteur1 = seq(from=1, to=10)
monVecteur2 = rep(10, times=10)
monVecteur2

monVecteur1 + 1
monVecteur1 * 10
monVecteur1 * monVecteur2


monVecteur2 = 10;
monVecteur1 / monVecteur2

monVecteur2 = c(1, 2, 3)
monVecteur1 / monVecteur2


monVecteur2 = seq(from=6, to=15)
monVecteur1 - monVecteur2

concatenation=c(monVecteur1, monVecteur2)
concatenation

monVecteur2
monVecteur2[2]

monVecteur2[1:3]
monVecteur2[c(1, 6 , 2)]

superieur=monVecteur2 > 8
superieur

monVecteur2[superieur]

#affiche la moyenne
mean(monVecteur2)

?mean

length(monVecteur2)

names(monVecteur2)
names(monVecteur2)=paste("ma valeur", monVecteur2, sep=" ")
monVecteur2
names(monVecteur2)

sort(monVecteur2)
sort(monVecteur2, TRUE)

rank(monVecteur2)
sum(monVecteur2)

min(monVecteur2)
max(monVecteur2)

summary(monVecteur2)

median(monVecteur2)

library("ggplot2")
search()
?print
help("print")
help.start()
help.search("mean")


# EXERCISE

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
