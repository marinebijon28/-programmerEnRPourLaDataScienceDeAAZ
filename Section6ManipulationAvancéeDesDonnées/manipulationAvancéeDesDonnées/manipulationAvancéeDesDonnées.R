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

# selectionner la colonne qui contient al
select(iris, contains("al"))

# filter : filtrer selon les individus
?filter
# filter avec les filtres sur les colonnes Sepal
filter(iris, Sepal.Length >= 5, Sepal.Width >= 2)

filter(iris, between(Sepal.Length, 4, 7))
# Si la fonction between n'exister pas 
filter(iris, Sepal.Length >= 4, Sepal.Width <= 7)

filter(iris, Species == "setosa")
filter(iris, Species != "setosa")

# l'espéce sera soit versicolor ou setosa
filter(iris, Species %in% c("setosa", "versicolor"))
# donne le même résultat
filter(iris, (Species == "setosa" | Species == "versicolor"))

# sans la derniere colonne et si une de variable et superieur 5
filter_all(iris[,-5], any_vars(. > 5))
# donne le meme resultat
filter(iris, (Sepal.Length > 5 | Sepal.Width > 5 | Petal.Length > 5 |
                Petal.Width > 5))

filter_all(iris[,-5], all_vars(. > 2))

# operateur pipe %>%. redirige les sorties a la fonction qui la suit
iris %>%
select(Sepal.Length, Petal.Length, Species)

iris %>%
select(-Species) %>%
filter_all(all_vars(. > 2))

# arrange()
# asc
iris %>%
arrange(Sepal.Length)

# desc
iris %>%
arrange(desc(Sepal.Length))

# plusieurs colonnes
iris %>%
arrange(Sepal.Length, Sepal.Width)

# plusieurs colonnes
iris %>%
select(Petal.Length, Petal.Width, Species) %>%
filter(Species == "setosa") %>%
arrange(Petal.Length, Petal.Width)

iris %>%
  select(Petal.Length, Petal.Width, Species) %>%
  filter(Species == "setosa") %>%
  arrange(Petal.Width, Petal.Length)


# summarise : résumé statistique d'un vecteur qui retourne une valeur
# une seule valeur
iris  %>%
summarise(moyenneTaillePetal=mean(Petal.Length))

# On va vouloir calculer plusieurs résumé statistique
iris  %>%
summarise(moyenneTaillePetal=mean(Petal.Length),
minTaillePetal=min(Petal.Length),
maxTaillePetal=max(Petal.Length),
total=n())

iris  %>%
summarise(moyenneTaillePetal=mean(Petal.Length),
moyenneTailleSepal=mean(Sepal.Length),
minTaillePetal=min(Petal.Length),
minTailleSepal=min(Sepal.Length)
)

iris  %>%
summarise_each(funs(mean, min), Petal.Length, Sepal.Length)

# group_by
iris %>%
group_by(Species) %>%
summarise(moyenneTaillePetal=mean(Petal.Length),
minTaillePetal=min(Petal.Length),
maxTaillePetal=max(Petal.Length),
total=n())

iris %>%
group_by(Species) %>%
filter(Petal.Length > 5) %>%
summarise(n())

# mutate : ajouter, supprimer ou de modifier
#ajouter une ou plusieurs variables
iris %>%
mutate(sommeLongueurLargeurPetale=Petal.Length + Petal.Width,
sommeLongueurLargeurSepale=Sepal.Length + Sepal.Width) 

# supprimer une ou des variables
iris %>%
mutate(Species=NULL, Sepal.Width=NULL) 

# modifier une variable
iris %>%
mutate(Sepal.Length=Sepal.Length*2) 

# exercice