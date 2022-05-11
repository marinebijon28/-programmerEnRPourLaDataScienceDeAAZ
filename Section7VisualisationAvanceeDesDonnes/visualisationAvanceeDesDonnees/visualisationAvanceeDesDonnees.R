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

# ggplot2 : les couleurs, les formes et les tailles

# couleur selon les especes
g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species))+
  geom_point()
g

# changer la forme des points
g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species, 
shape=Species))+geom_point()
g

# changer la taille des points
g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species, 
shape=Species))+geom_point(size=3)
g

# Creer un gradiant de couleurs
g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Petal.Length, 
shape=Species))+geom_point(size=3)
g

g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Petal.Length, 
shape=Species))+geom_point(size=3)
g<-g+scale_color_gradient(low="blue", high="red")
g

# ggplot2 : La légende (introduction des thèmes)

# modifier le fond du cadrant 
g<-g+theme_minimal()
g

g<-g+theme_dark()
g

# modifier la position de la légende 
g<-g+theme(legend.position = "bottom")
g

g<-g+theme(legend.position = "top")
g

g<-g+theme(legend.position = "right")
g

# pour ne pas afficher la légende
g<-g+theme(legend.position = "none")
g

# cacher le titre de la légende
g<-g+theme(legend.title = element_blank())

# modifier couleur, texture du titre de la legende
g<-g+theme(legend.title = element_text(color="red", size=15, face="bold"))
g

# modifier couleur, texture, taille des labels de la legende
g<-g+theme(legend.text=(element_text(color="blue", size=8, face="bold.italic")))
g

# Ajouter un cadre a la legende
g<-g+theme(legend.background=(element_rect(fill="grey")))
g

g<-g+theme(legend.background=(element_rect(fill="grey", size=2, linetype=
"dotted")))
g
