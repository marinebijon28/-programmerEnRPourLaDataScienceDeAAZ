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

# ggplot2 : axes et titres
# modifications des axes et titres
g<-g+xlab("Longueur des petales")+ylab("Largeur des petales")+
ggtitle("Longueur des Petales en fonction de la largeur des petales")
g

# modifications de la couleur du titre, sa taille, etc..
g<-g+theme(plot.title=element_text(color="steelblue", size=10, face="bold"))
g

# modification de la couleur des noms des axes, sa taille, etc>>
g<-g+theme(axis.title=element_text(color="steelblue", size=10, face="bold"))
g

g<-g+theme(axis.text=element_text(color="steelblue", size=10, face="bold", 
angle=45))
g

g<-g+theme(axis.line=element_line(color="steelblue", size=2, linetype="dotted"))
g

# ggplot2 : combiner plusieurs graphes (facet)
# facet_wrap -> combiner des graphes

# separer en trois colonnes
g<-g+facet_wrap(~Species)
g

#
g<-g+facet_wrap(~Species, ncol=1)
g

# modification du texte des especes du grqphe
g<-g+facet_wrap(~Species)+theme(strip.text=element_text(color="steelblue", 
size=10, face="bold"))
g

# ajout d'un cadre autour des especes
g<-g+theme(strip.background=element_rect(color="steelblue", size=1, 
linetype="solid"))
g

# graphique de base
g<-ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Petal.Length, 
                    shape=Species))+geom_point(size=3)
g<-g+scale_color_gradient(low="blue", high="red")
g
g<-g+theme_minimal()
g

# ajouter des annotations aux graphiques
g<-g+annotate("text", x=c(2,4,6), y=0.7, label=c("setosa",  "versicolor", 
"setosa"))
g

# si on veut ajouter de la couleur, la taille des caracteres, fontsize,
g<-g+annotate("text", x=c(2,4,6), y=0.7, label=c("setosa",  "versicolor", 
"setosa"), color="steelblue", size=3, fontface="bold")
g

# permet de mettre un rectangle opaque pour souligner un groupe dans le 
# graphique
g<-g+annotate("rect", xmin=0.5, xmax=2.1, ymin=0, ymax=0.65)
g

# permet de mettre un rectangle transparent pour souligner un groupe dans le 
# graphique
g<-g+annotate("rect", xmin=0.5, xmax=2.1, ymin=0, ymax=0.65, alpha=0.2)
g

# ajoute une bordure rectangulaire
g<-g+annotate("rect", xmin=0.5, xmax=2.1, ymin=0, ymax=0.65, alpha=0.2, 
color="steelblue", size=2)
g

# ajouter un segment colorer pour separer le graphique
g<-g+annotate("segment", x=0.5, xend=4, y=1.5, yend=0, color="steelblue", 
size=2, alpha=0.2)
g

# ggplot2 : Les differents types de graphes (geoms)

# histograme sur les donnees iris
g<-ggplot(iris, aes(x=Petal.Length))+geom_histogram(binwidth=0.5)
g

# histogramme colorise en fonction de l'espece
g<-ggplot(iris, aes(x=Petal.Length, fill=Species))+geom_histogram(binwidth=0.5)
g

# contour des histogrammes pour separer les colonnes
g<-ggplot(iris, aes(x=Petal.Length, fill=Species))+geom_histogram(color="white",
binwidth=0.5)
g

# exporter au format png
png("histogramme_iris.png")
g<-ggplot(iris, aes(x=Petal.Length, fill=Species))+geom_histogram(color="white",
binwidth=0.5)
g
dev.off()

# boxplot
g<-ggplot(iris, aes(x=Species, y=Petal.Length, fill=Species))+geom_boxplot()
g

# ajouter un titre a un boxplot
g<-g+ggtitle("Boxplot de la longueur des petales selon l'espece")+xlab("espece")
+ylab("longueur des petales")
g

# exporter au format pdf
pdf("boxplot_iris.pdf")
g<-ggplot(iris, aes(x=Species, y=Petal.Length, fill=Species))+geom_boxplot()
g<-g+ggtitle("Boxplot de la longueur des petales selon l'espece")+xlab("espece")+
  ylab("longueur des petales")
g
dev.off()

# Exercice

library("ggplot2")
library("dplyr")

fastFood=read.csv("FastFoodRestaurants.csv")
fastFoodTibble=as_tibble(fastFood)

# Quels sont les 10 villes ou il a le plus de fast food ?
FastFoodCity=fastFoodTibble %>%
group_by(city) %>%
summarise(nombreDeRestaurants=length(city)) %>%
arrange(desc(nombreDeRestaurants)) %>%
head(n=10) %>%
pull(city)

# tibble avec les 10 villes
fastFoodTibble10Villes=fastFoodTibble %>%
filter(city %in% FastFoodCity) 

# les dix fast food les présent dans ces dix villes
listFastFood=fastFoodTibble10Villes %>%
group_by(name) %>%
summarise(nombreDeRestaurants=length(name)) %>%
arrange(desc(nombreDeRestaurants)) %>%
head(n=10) %>%
pull(name)

# on récupère le noms des 10 restaurants les plus présents dans les 10 villes où
# il y a le plus de fast food
fastFoodTibble10Villes10FastFood=fastFoodTibble10Villes %>%
filter(name %in% listFastFood)

# barplot
g<-ggplot(fastFoodTibble10Villes10FastFood, aes(city, fill=name))+geom_bar()
g

# nom d'axe et titre de graphique
g<-g+xlab("Les 10 capitales de fast-food")+
ylab("Les 10 restaurants les plus implentés")+
ggtitle("Représentation des fast foods les plus implentées 
dans les 10 capitales du fast-foods")
g

# pour centrer un title
g<-g+theme(plot.title = element_text(hjust=0.5))
g

# changer l'inclination des nom des villes a 45° et en gras, taille des 
# caractères
g<-g+theme(axis.text = element_text(face = "bold", size = 7, angle = 45))
g

# on veut changer l'échelle du graphique
g<-g+ylim(0, 100)
g

# enlever le titre de la légende
g<-g+theme(legend.title = element_blank())
g

# r color brewer palette
# changer la couleur de la palette
g<-g+scale_fill_brewer(palette="Paired")
g

# exporter pdf
pdf("fastFood.pdf")
g<-ggplot(fastFoodTibble10Villes10FastFood, aes(city, fill=name))+geom_bar()
g<-g+xlab("Les 10 capitales de fast-food")+
  ylab("Les 10 restaurants les plus implentés")+
  ggtitle("Représentation des fast foods les plus implentées 
dans les 10 capitales du fast-foods")
g<-g+theme(plot.title = element_text(hjust=0.5))
g<-g+theme(axis.text = element_text(face = "bold", size = 7, angle = 45))
g<-g+ylim(0, 100)
g<-g+theme(legend.title = element_blank())
g<-g+scale_fill_brewer(palette="Paired")
g
dev.off()

# bonus : rendre votre graphique interactif avec Plotly

# install
library("plotly")

# j'envoie le graphique a plotly
ggplotly(g)

# boxplot
g<-ggplot(iris, aes(x=Species, y=Petal.Length, fill=Species))+geom_boxplot()
g
# ajouter un titre a un boxplot
g<-g+ggtitle("Boxplot de la longueur des petales selon l'espece")+xlab("espece")
+ylab("longueur des petales")
g
# j'envoie le graphique a plotly
ggplotly(g)
