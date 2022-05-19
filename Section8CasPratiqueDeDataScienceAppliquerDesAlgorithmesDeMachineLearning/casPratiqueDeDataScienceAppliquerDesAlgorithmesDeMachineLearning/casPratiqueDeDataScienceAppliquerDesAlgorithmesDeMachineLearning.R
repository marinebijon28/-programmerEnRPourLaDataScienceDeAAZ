# Données : prédire la souscription d'un client à un produit bancaire

# lecture du fichier de données de banque
# sep permet de dire que le séparateur est ;
bank_data=read.csv("bank/bank.csv", sep=";")
head(bank_data)

summary(bank_data)

# Visualisation des donnees avec ggplot2
library("ggplot2")

# affiche les duree d'appels
g<-ggplot(bank_data, aes(x=y, y=duration, fill=y))+geom_boxplot()
g

library("plotly")
ggplotly(g)

# affiche en fonction de l'age
g<-ggplot(bank_data, aes(x=y, y=age, fill=y))+geom_boxplot()
g
ggplotly(g)

# affiche les differentes categorie en fonction du moyen de les contacter
g<-ggplot(bank_data, aes(y, fill=contact))+geom_bar()
g
ggplotly(g)

# Creation d'un jeu de données d'entrainement et de test 
library("ggplot2")
library("lattice")
library("caret")

# transformation des variables catégorielles en valeurs numériques
dummyVariables=dummyVars(~., data=bank_data)
# traitement qu'on va utiliser sur nos variables 
dummyVariablesData=predict(dummyVariables, newdata = bank_data)

head(dummyVariablesData)

# donne une matrice
class(dummyVariablesData)

# tranforme en dataframe
dummyVariablesData=as.data.frame(dummyVariablesData)

# Permet de creer une colonne avec soit yes soit no en fonction de la colonne 
# yno
dummyVariablesData$"Souscription"=ifelse(dummyVariablesData$"yno" == 1, "No", 
"Yes")

# enlève les deux colonnes yno et yes
dummyVariablesData$"yno"=NULL
dummyVariablesData$"yyes"=NULL

?set.seed
#random
set.seed(3033)
# garde 70 % du jeux d'entraînement
training_size=floor(0.7*nrow(dummyVariablesData))

# il melange tous les indices de dummyVariablesData de longueur training_size
indices=sample(seq_len(nrow(dummyVariablesData)), size=training_size)

# creer un variable data_bank.train avec les vecteurs aléatoires
bank_data.train=dummyVariablesData[indices, ]
#creer un variable data_bank.test sans les vecteurs aléatoires
bank_data.test=dummyVariablesData[-indices, ]

dim(bank_data.train)
dim(bank_data.test)

# traitement des classes desequilibrees et normalisation 
bank_data.train$"yyes"=NULL
bank_data.test$"yyes"=NULL
# normalisation des donnees sur le jeux de test
dataPreprocessValue=preProcess(bank_data.train, method=c("center", "scale"))
# scaled veut dire mis à l'échelle
bank_data.train.scaled=predict(dataPreprocessValue, bank_data.train)
bank_data.test.scaled=predict(dataPreprocessValue, bank_data.test)

# equilibrage des donnees
# caret : downsample et upsample
table(bank_data.train.scaled[,"Souscription"])

set.seed(3033)
'%ni%' = Negate("%in%")

# downsample
bank_data.train.scaled.downsample=downSample(x=bank_data.train.scaled[,
colnames(bank_data.train.scaled) %ni% "Souscription"], 
y=as.factor(bank_data.train.scaled$"Souscription"))

bank_data.train.scaled.downsample$"yyes"=NULL
dummyVariablesData$"yyes"=NULL

# renommer la colonne class en souscription
names(bank_data.train.scaled.downsample)[names(bank_data.train.scaled.downsample) == "Class"]="Souscription"
?names

# upsample
bank_data.train.scaled.upsample=upSample(x=bank_data.train.scaled[,
colnames(bank_data.train.scaled) %ni% "Souscription"], 
y=as.factor(bank_data.train.scaled$"Souscription"))

bank_data.train.scaled.upsample$"yyes"=NULL

# renommer la colonne class en souscription
names(bank_data.train.scaled.upsample)[names(bank_data.train.scaled.upsample) == "Class"]="Souscription"
?names

# Entrainer un modèle avec Caret : méthode Naives Bayes
set.seed(3033)
trainControlData=trainControl(method="repeatedcv", number=10, repeats = 3)

bank_data.train.scaled$"yyes"=NULL

# on utilise nos données desequilibres
naiveBayesDesequilibree=train(Souscription ~., 
data=bank_data.train.scaled, method="nb", preProcess=NULL)

print(naiveBayesDesequilibree)
warnings(50)
