# apply()
# apply(x, MARGIN, FUN)

# x : dataframe, une matrice

# MARGIN : 1 : pour les lignes, 2 : par les colonnes, c(1,2) par lignes et 
# colonnes

# FUN : fonction(mean, sum, summary…)

data(iris)
head(iris)

apply(iris[,-5], 1, mean)
apply(iris[,-5], 2, mean)
apply(iris[,-5], 2, summary)

nombreValeursSuperieures5<-function(vecteur) {
  length(vecteur[vecteur > 5])
}

apply(iris[,-5], 2, nombreValeursSuperieures5)
apply(iris[,-5], 1, nombreValeursSuperieures5)

# aggregate() et by()
# by(x, INDICES, FUN)

# x : dataframe

# INDICES : qui est le groupe la colonne par laquelle on veut faire le 
# sous-ensemble de données iris$Species

# FUN : function

by(iris, iris$Species, summary)

by(iris[,-5], iris$Species, cor)

by(iris[,-5], iris$Species, mean)

# aggregate()
# aggregate(x, by, FUN)

# x : dataframe

# by : c'est un ensemble de valeur il va faire un sous-ensemble de notre tableau
# la colonne iris$Species. Elle attend data.frame, soit une liste

# FUN : fun qui est notre fonction
aggregate(iris[,-5], as.data.frame(iris$Species), mean)

class(iris$Species)

aggregate(iris[,-5], as.data.frame(iris$Species), cor)

# Dplyr ; les tibbles
library(dplyr)
class(iris)

# tibble
irisData=as_tibble(iris)

irisData

# Dplyr : select() 
# selection pour selectionner des colonnes 
iris=irisData

?select
# selectionne les colonnes précisé
select(iris, Sepal.Length, Petal.Length, Species)

# selectionne de la colone de debut a la colonne de fin inclus
select(iris, Sepal.Length:Sepal.Width)
select(iris, Sepal.Length:Petal.Length)

# selectionner sans une colonne
select(iris, -Species)
# selectionner sans des colonnes
select(iris, -Species, -Petal.Length)

# selectionner la colonne qui commence par petal
select(iris, starts_with("Petal"))
# selectionner la colonne qui ne commence par sepal
select(iris, -starts_with("Sepal"))

# selectionner la colonne qui ne fini par length
select(iris, ends_with("Length"))

# selectionner la colonne qui contient length
select(iris, contains("Length"))