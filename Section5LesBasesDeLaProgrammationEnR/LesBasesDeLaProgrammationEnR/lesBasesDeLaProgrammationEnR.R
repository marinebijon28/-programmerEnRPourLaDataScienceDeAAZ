# ok
if (5 > 3 & 2 < 3) {
  print("OK");
} else {
  print("PAS OK")
}

# ok
if (5 == 3 | 2 < 3) {
  print("OK");
} else {
  print("PAS OK")
}

# pas ok
if (5 == 3 & 2 < 3) {
  print("OK");
} else {
  print("PAS OK")
}

# boucle  for pour
for (valeur in vecteur) {
  actions
}

for (valeur in c(1, 2, 3, 4, 5)) {
  print(valeur+ 1)
}


for (element in c(1, 2, 3, 4, 5)) {
  print(paste("Mon chiffre ", element))
}

for (element in c(1, 2, 3, 4, 5)) {
  if (element > 1 & element < 5)
    print(element)
}

# instructions de boucle while : tant que 
while (condition) {
  actions
}

valeur = 200

while (valeur/5 > 1) {
  valeur = valeur / 5
  print(valeur)
}

data(iris)
head(iris)

# Exercice sur les instructions de condition et les boucles en R
compteurIndividuSepalSuperieur5 = 0

for (length in iris$Sepal.Length) {
  if (length >= 5) {
    compteurIndividuSepalSuperieur5 =compteurIndividuSepalSuperieur5 + 1 
  }
}

compteurSetosa = 0
compteurVersicolor = 0
compteurVerginica = 0

for (species in iris$Species) {
  if (species == "setosa")
    compteurSetosa = compteurSetosa + 1
  else if (species == "versicolor")
    compteurVersicolor = compteurVersicolor + 1
  else
    compteurVerginica = compteurVerginica + 1
}

print(paste("Nombre de setosa ", compteurSetosa))
print(paste("Nombre de setosa ", compteurVersicolor))
print(paste("Nombre de setosa ", compteurVerginica))

dim(iris)
dim(iris)[1]
dim(iris)[2]

nombreSetosaSup5=0
for (ligne in 1:dim(iris)[1]){
  individu=iris[ligne,]
  if (individu$Species == "setosa" & individu$Sepal.Length >= 5)
    nombreSetosaSup5 = nombreSetosaSup5 + 1
}
print(nombreSetosaSup5)

for (colonne in 1:dim(iris)[2]) {
  print(iris[,colonne])
  print("--------------")
}


## Comment créer sa propre fonction
nomDeNotreFonction<-function(argument1, argument2) {
  instructions
  bloc code
  return (résultat)
}

nombreIndividuSuperieur5<-function(dataframe) {
  compteurIndividuSepalSuperieur5 = 0
  
  for (length in dataframe$Sepal.Length) {
    if (length >= 5) {
      compteurIndividuSepalSuperieur5 =compteurIndividuSepalSuperieur5 + 1 
    }
  }
  return (compteurIndividuSepalSuperieur5)
}

nombreIndividuSuperieur5(iris)

maFunctionQuiCalculeLaMoyenne<-function(iris) {
  irisSpeciesSetosa=subset(iris, iris$Species=="setosa")
  meanSetosa=colMeans(irisSpeciesSetosa[,-5])
  meanVersicolor=colMeans(subset(iris, iris$Species == "versicolor")[,-5])
  meanVirginica=colMeans(subset(iris, iris$Species == "virginica")[,-5])
  resultat=data.frame(setosa=meanSetosa, versicolor=meanVersicolor, 
                      virginica=meanVirginica)
  return (resultat)
}

maFunctionQuiCalculeLaMoyenne(iris)
