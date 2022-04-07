# se remplit par colonne un vecteur par colonne
# on a mit des caractères et contrairement à la matrice ça ne met pas tous en caractères
monDataFrame=data.frame(c(18,26,54,78), c(56, 84, 76, 62), c("M", "F", "M", "F"), c(TRUE, TRUE, TRUE, FALSE))

# nom des colonnes
colnames(monDataFrame)=c("Age", "Poids", "Sexe", 'Ma valeur booléenne')
# nom des lignes
rownames(monDataFrame)=c("Jean", "Zoé", "Lucas", 'Chloé')

# nom du fichier
# si y a un header dans le fichier
# comment les lignes sont séparé
# on veut que la première colonne deviennent les nom de ligne
dataIris=read.table("iris.csv", header =TRUE, sep=',', row.names = 1);
# pareil permet d'ouvrir plus facilement un fichier csv
read.csv("iris.csv", row.names = 1)

# charge les données du package iris
data("iris")
# affiche les packages
ls()

?write.table
# ecrit un csv par rapport une dataframe
# le nom de fichier 
# on précise le type de séparateur
# on garde le nom de ligne et il garde le nom du header du tableau
write.table(dataIris, file="iris2.csv", sep=',', row.names = TRUE)
# pareil permet d'écrire un csv
?write.csv
write.csv(dataIris, file= "iris3.csv", row.names = TRUE)

# pour créer un objet R
save(dataIris, file="iris.Rdata")
# pour récupérer le jeux de données
load("iris.Rdata")


dataIris[,1]
dataIris[,c(1:3)]
# affiche le header
head(dataIris[, c(1:3)])
head(dataIris[c(1, 50, 60), c(1:3)])

head(dataIris[c(1, 50, 60), c("Sepal.Length", "Sepal.Width", "Petal.Length")])

head(dataIris$Species)


dataIris[dataIris$Species == "setosa", ]
#nombre de ligne et de colonnes pour ce sous-élément
dim(dataIris[dataIris$Species == "setosa", ])

# permet d'avoir les index de ces lignes pour cette condition
dataIris[which(dataIris$Species == "setosa"), ]
which(dataIris$Species == "setosa")

dataIris[which(dataIris$Species == "setosa" && dataIris$Petal.Length == 1.4), ]
dataIris[which(dataIris$Species == "setosa" & dataIris$Petal.Length == 1.4), ]

dataIris[dataIris$Species %in% c("setosa"),]
dataIris[dataIris$Species %in% c("setosa", "versicolor"),]

subset(dataIris, Species == "setosa" & Petal.Length == 1.4)
subset(dataIris, Species == "setosa" & Petal.Length == 1.4, select = c("Petal.Length"))

class(dataIris$Species)
head(iris$Species)
?head
colnames(iris)=c("Longueur des sépales", "Largeur des pétales", "Longueur de pétales", "Largeur de pétales", "Espèces")
rownames(iris)=paste("iris_", rownames(iris), sep="")
summary(iris)
# quand on a une colonne avec des accents il faut mettre des guillemets. Min n'est pas utilisable sur des valeurs qualitatives
min(iris[iris$"Espèces"=="setosa", ])

# quand on a une colonne avec des accents il faut mettre des guillemets
min(iris[iris$"Espèces"=="setosa", 3])

mean(iris[iris$"Espèces"=="setosa", 3])

dataIrisQuantitative=iris[c(1, 2, 3, 4)]
dataIrisQualitative=iris[c(5)]
dataIrisQualitative=as.data.frame(iris[,5])
colnames(dataIrisQualitative)=c("Espèce")
rownames(dataIrisQualitative)=rownames(iris)
?merge
irisComplet=merge(dataIrisQuantitative, dataIrisQualitative, by="row.names")
rownames(irisComplet)=irisComplet[, 1]
irisComplet=irisComplet[-c(1,)]