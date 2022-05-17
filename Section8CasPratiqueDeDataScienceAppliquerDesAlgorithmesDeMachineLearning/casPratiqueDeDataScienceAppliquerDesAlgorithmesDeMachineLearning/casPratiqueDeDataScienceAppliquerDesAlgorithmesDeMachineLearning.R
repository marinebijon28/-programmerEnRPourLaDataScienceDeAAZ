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