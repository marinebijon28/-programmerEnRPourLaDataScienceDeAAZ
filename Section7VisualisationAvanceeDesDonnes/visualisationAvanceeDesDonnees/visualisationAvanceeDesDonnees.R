# chargement des donnees iris
data(iris)

# plot : pour creer des graphiques
?plot
# (x : x abcisse, y : y abscisse, xname : x nom abcisse, yname : y nom abcisse,
# col : couleur)
plot(iris$Sepal.Length, iris$Sepal.Width)
plot(iris$Sepal.Length, iris$Sepal.Width, xlab = "Longueur", ylab = "Largeur", 
     col="red")
plot(iris$Sepal.Length, iris$Petal.Width, xlab = "Longueur", ylab = "Largeur", 
     col="blueviolet")

# lines
# lignes a ajouter avec une couleur
lines(iris$Petal.Length, iris$Petal.Width, col="skyblue1")

# permet de mettre des points a la place des lignes
lines(iris$Petal.Length, iris$Petal.Width, col="skyblue1", type="p")
lines(iris$Petal.Length, iris$Petal.Width, col="slateblue4", type="p")

# plot : limite du graphique
# (x : x abcisse, y : y abscisse, xname : x nom abcisse, yname : y nom abcisse,
# col : couleur, xlim : vecteur(x min limite, x max limite), ylim : vecteur
#(y min limite, y max limite)
plot(iris$Sepal.Length, iris$Sepal.Width, xlab = "Longueur", ylab = "Largeur", 
col="blueviolet", xlim = c(min(iris$Petal.Length, iris$Sepal.Length), 
c(max(iris$Petal.Length, iris$Sepal.Length))), ylim = c(min(iris$Petal.Width, 
iris$Sepal.Width), c(max(iris$Petal.Width, iris$Sepal.Width))))
lines(iris$Petal.Length, iris$Petal.Width, col="slateblue4", type="p")

# title
# title(main="title", col.main="couleur")
?title
title(main="Longeur en fonction de largeur", col.main="blue")

# pch
?pch      
lines(iris$Petal.Length, iris$Petal.Width, col="slateblue4", type="p", pch=22)

# legend
legend(1, 4.2, c("sepal", "petal"), col=c("blueviolet", "slateblue4"), 
pch=21:22)

# Créez des graphiques plus élaborés ggplot2
library("ggplot2")

?ggplot
# plot = data + aesthetic + gyometrie
# plot = data  : on donne le tableau + 
# aesthetics : permet de définir tout ce qui est forme, couleur, label, etc +
# gyometrie : qui permet de définir le type de graphique qu'on veut faire

g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width))
# affichage
g
g<-g+geom_point()
g
