## Installation des packages R essentiels pour la data science

# Installation de package
?install.packages
install.packages(pkgs="dplyr", dependencies=T)
install.packages(pkgs="ggplot2", dependencies=T)
install.packages(pkgs="plotly", dependencies=T)
install.packages(pkgs="caret", dependencies=T)
install.packages(pkgs="e1071", dependencies=T)
install.packages(pkgs="rpart",dependencies=T)
install.packages(pkgs="randomForest", dependencies=T)

# Charger dans l'environnement
library("dplyr")
library("ggplot2")
library("plotly")
library("caret")
library("e1071r")
library("rpart")
library("randomForest")
