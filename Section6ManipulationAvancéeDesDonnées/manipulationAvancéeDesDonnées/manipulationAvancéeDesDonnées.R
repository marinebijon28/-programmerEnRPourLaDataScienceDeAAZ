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
