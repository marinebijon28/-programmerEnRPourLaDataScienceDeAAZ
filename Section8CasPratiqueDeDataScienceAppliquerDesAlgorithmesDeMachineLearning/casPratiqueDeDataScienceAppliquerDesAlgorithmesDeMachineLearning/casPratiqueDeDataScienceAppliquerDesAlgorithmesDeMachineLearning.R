# Données : prédire la souscription d'un client à un produit bancaire

install.packages("caret", T=dependencies)

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
dummyVariablesData$"yno" = NULL
dummyVariablesData$"yyes" = NULL

?set.seed
#random
set.seed(3033)

# garde 70 % du jeux d'entraînement
trainingSize=floor(0.7*nrow(dummyVariablesData))

head(trainingSize)
nrow(dummyVariablesData)

# il melange tous les indices de dummyVariablesData de longueur training_size
indices=sample(seq_len(nrow(dummyVariablesData)), size=trainingSize)
length(indices)
head(indices)

# creer un variable data_bank.train avec les vecteurs aléatoires
data_bank.train=dummyVariablesData[indices, ]
#creer un variable data_bank.test sans les vecteurs aléatoires
data_bank.test=dummyVariablesData[-indices, ]

dim(data_bank.train)
dim(data_bank.test)

# traitement des classes desequilibrees et normalisation 

# normalisation des donnees sur le jeux de test

dataPreprocessValue=preProcess(data_bank.train, method=c("center", "scale"))

# scaled veut dire mis à l'échelle
data_bank.train.scaled = predict(dataPreprocessValue, data_bank.train)
data_bank.test.scaled = predict(dataPreprocessValue, data_bank.test)

head(data_bank.train.scaled)

# equilibrage des donnees
# caret : downsample et upsample
table(data_bank.train.scaled[,"Souscription"])

set.seed(3033)

'%ni%' = Negate("%in%")

# downsample
head(data_bank.train.scaled[, colnames(data_bank.train.scaled) %ni% "Souscription"])
data_bank.train.scaled.downsample = downSample(x=data_bank.train.scaled[, colnames(data_bank.train.scaled) %ni% "Souscription"], y=as.factor(data_bank.train.scaled$"Souscription"))
head(data_bank.train.scaled.downsample)
dim(data_bank.train.scaled.downsample)
dim(data_bank.train.scaled)

# renommer la colonne class en souscription
names(data_bank.train.scaled.downsample)[names(data_bank.train.scaled.downsample) == "Class"]="Souscription"
?names
head(data_bank.train.scaled.downsample)

table(data_bank.train.scaled.downsample[,"Souscription"])



# upsample
data_bank.train.scaled.upsample=upSample(x=data_bank.train.scaled[, colnames(data_bank.train.scaled) %ni% "Souscription"], y=as.factor(data_bank.train.scaled$"Souscription"))
head(data_bank.train.scaled.upsample)
# renommer la colonne class en souscription
names(data_bank.train.scaled.upsample)[names(data_bank.train.scaled.upsample) == "Class"]="Souscription"
head(data_bank.train.scaled.upsample)
?names
table(data_bank.train.scaled.upsample[,"Souscription"])


# Entrainer un modèle avec Caret : méthode Naives Bayes

set.seed(3033)
trainControlData=trainControl(method="repeatedcv", number = 10, repeats = 3)

# on utilise nos données desequilibres
?train
naive_Bayes_desequilibree=train(Souscription ~., data=data_bank.train.scaled, method="naive_bayes", preProcess=NULL)

print(naive_Bayes_desequilibree)

# prédiction avec notre modèle sur le jeux de données tests
prediction_naive_Bayes_desequilibree = predict(naive_Bayes_desequilibree, newdata = data_bank.test.scaled[,-ncol(data_bank.test.scaled)])
head(prediction_naive_Bayes_desequilibree)

# création de la matrice de confusion
head(data_bank.test.scaled[,ncol(data_bank.test.scaled)])
confusionMatrix(prediction_naive_Bayes_desequilibree, as.factor(data_bank.test.scaled[,ncol(data_bank.test.scaled)]))

# Sur les données downSample
# Entrainer un modèle avec Caret : méthode Naives Bayes

set.seed(3033)
trainControlData=trainControl(method="repeatedcv", number = 10, repeats = 3)

# on utilise nos données desequilibres
?train
naive_Bayes_downsample=train(Souscription ~., data=data_bank.train.scaled.downsample, method="naive_bayes", preProcess=NULL)

print(naive_Bayes_downsample)

# prédiction avec notre modèle sur le jeux de données tests
prediction_naive_Bayes_downsample = predict(naive_Bayes_downsample, newdata = data_bank.test.scaled[,-ncol(data_bank.test.scaled)])
head(prediction_naive_Bayes_downsample)

# création de la matrice de confusion
head(data_bank.test.scaled[,ncol(data_bank.test.scaled)])
confusionMatrix(prediction_naive_Bayes_downsample, as.factor(data_bank.test.scaled[,ncol(data_bank.test.scaled)]))

## SVM
# modélisation SVM
set.seed(3033)
trainControlData=trainControl(method="repeatedcv", number = 10, repeats = 3)
SVM_desequilibree=train(Souscription ~., data=data_bank.train.scaled, method="svmLinear", preProcess=NULL)
print(SVM_desequilibree)

# prédiction avec notre modèle sur le jeux de données tests
prediction_SVM_desequilibree = predict(SVM_desequilibree, newdata = data_bank.test.scaled[,-ncol(data_bank.test.scaled)])
head(prediction_naive_Bayes_downsample)

# création de la matrice de confusion
head(data_bank.test.scaled[,ncol(data_bank.test.scaled)])
confusionMatrix(prediction_SVM_desequilibree, as.factor(data_bank.test.scaled[,ncol(data_bank.test.scaled)]))
