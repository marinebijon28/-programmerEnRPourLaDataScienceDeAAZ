?matrix

notes=sample(1:20, 15)
matrix(notes, ncol=3, nrow=5)
matrix(notes, ncol=3, nrow=5, byrow = TRUE)

notes2=c(sample(1:20, 10), "a", "b", "c", "d", "e")
matrix(notes2, ncol=3, nrow=5, byrow = TRUE)

notesDesEleves = matrix(notes, ncol=3, nrow=5)
?colnames
colnames(notesDesEleves)=c("SVT", "Mathématiques", "Français")
rownames(notesDesEleves)=c("Jean", "Léa", "Thomas", "Julien", "Zoé")

notesDesEleves[1,]
notesDesEleves[,1]
notesDesEleves[1,2]
notesDesEleves[1,2:3]
notesDesEleves[1,c(2, 3)]
notesDesEleves["Thomas", "Français"]
notesDesEleves[c("Léa", "Thomas"), "Français"]
notesDesEleves[c("Léa", "Thomas"), "Français"]=c(15, 10)

notes[3]=15

notes2=c(rep(0.5, times=5), rep(1, times=5), rep(0.9, times=5))
matriceDesNotes = matrix(notes2, ncol=3, nrow=5)
notesDesEleves * matriceDesNotes
notesDesEleves + matriceDesNotes
notesDesEleves / matriceDesNotes

rowSums(notesDesEleves)
colSums(notesDesEleves)

rowMeans(notesDesEleves)
colMeans(notesDesEleves)



install.packages("Stat2Data")
# charge le package
library("Stat2Data")
data("HorsePrices")
# créer une matrice à partir d'une matrice en enlévant la première et la dernière ligne
matricePrixCheval=as.matrix(HorsePrices[, -c(1,5)])
?as.matrix()
# nommes les lignes avec l'id du cheval au lieu d'avoir une colonne ID
rownames(matricePrixCheval)=HorsePrices[,1]

# permet de nommer les colonnes de la matrice
colnames(matricePrixCheval)=c("Prix", "Age", "hauteur")
colnames(matricePrixCheval)=c("Prix", "Age", "Taille")

# Je sais qu'un hand fait 0.1016 mètres
matricePrixCheval[,3]= matricePrixCheval[,3] * 0.1016
# Je sais qu'un hand fait 0.86 euros

matricePrixCheval[,1]= matricePrixCheval[,1] * 0.86
?dim
# donne le nombre de lignes et de colonnes
dim(matricePrixCheval)

# recapitulatif des colonnes de la matrice
summary(matricePrixCheval)

#enlever des lignes NA (qui n'ont pas de valeur)
matricePrixCheval=na.omit(matricePrixCheval)
dim(matricePrixCheval)

# affiche toutes les ligne du cheval avec la plus petite taille
matricePrixCheval[matricePrixCheval[,1] == 946, ]
# affiche toutes les ligne du cheval avec la plus grande taille
matricePrixCheval[matricePrixCheval[,1] == 51600, ]

# modifie la ligne
matricePrixCheval[matricePrixCheval[,1] == 946, ]=c(2500, 19, 1.651)
# réafficher
matricePrixCheval[matricePrixCheval[,1] == 2500, ]

# afficher toutes les valeur qui sont supérieure a la moyenne
matricePrixCheval[matricePrixCheval[,1] > 23082, ]

dim(matricePrixCheval[matricePrixCheval[,1] > 23082, ])
matricePrixCheval[matricePrixCheval[,3] > 1.6, ]

# fait la moyenne des chevaux plus grand qu'un 1.6
colMeans(matricePrixCheval[matricePrixCheval[,3] > 1.6, ])

colMeans(matricePrixCheval[matricePrixCheval[,3] <= 1.6, ])

colSums(matricePrixCheval)