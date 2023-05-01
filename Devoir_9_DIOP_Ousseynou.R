datapath <- "C:\\Users\\dell\\Desktop\\ENSAE\\ISEP2\\Semestre_2\\Programmation R\\EHCVM"
library(haven)
cereal <- read_dta(file = paste0(datapath,"\\cereales.dta"))

## sapply:voir les données manquantes pour chaque variable

sapply(cereal, function(x) sum(is.na(x)))

## Copie une base avec data.table
library(data.table)

copie_cereal_1<- copy(cereal)
View(copie_cereal)


## Impute avec la library Hmisc de la variable s07Bq03c_cereales par la mean
library(Hmisc)
copie_cereal_1$s07Bq03c_cereales <- impute(copie_cereal_1$s07Bq03c_cereales, mean)
sapply(copie_cereal_1, function(x) sum(is.na(x)))


##par la mediane avec with
library(Hmisc)
copie_cereal_2<- copy(cereal)
copie_cereal_2$s07Bq03c_cereales <- with(copie_cereal_2, impute(s07Bq03c_cereales, median))
sapply(copie_cereal_2, function(x) sum(is.na(x)))

##Par la regression avec ifelse

copie_cereal_3<- copy(cereal)
model <- lm(s07Bq03c_cereales ~ ., data = copie_cereal_3[, -1])
copie_cereal_3$s07Bq03c_cereales <- ifelse(is.na(copie_cereal_3$s07Bq03c_cereales), predict(model, newdata = copie_cereal_3), copie_cereal_3$s07Bq03c_cereales)
sum(is.na(copie_cereal_3$s07Bq03c_cereales))

##par la LoCF

library(zoo)
copie_cereal_4<- copy(cereal)
copie_cereal_3$s07Bq03c_cereales <- na.locf(copie_cereal_3$s07Bq03c_cereales) 
#Vérifier que toutes les valeurs manquantes ont été remplacées
sum(is.na(copie_cereal_3$s07Bq03c_cereales))

##Lapply (Monte Carlo)

copie_cereal_5<- copy(cereal)
library(mice)
# Convertir les variables qualitatives en variables facteur
copie_cereal_5 <- data.frame(lapply(copie_cereal_5, factor))


##Mice 

m <- 1 # nombre d'itérations
imp <- mice(copie_cereal_5, m = m, method = "norm.predict")
summary(imp)

##Knn avec Vim

library(VIM)
copie_cereal_6<- copy(cereal)
dat.kNN=kNN(copie_cereal_6, k=5, imp_var=FALSE)

##Missforet 

library(missForest)
copie_cereal_7<- copy(cereal)
copie_cereal_7a <- missForest(midm_fa)
copie_cereal_7a.complete <- copie_cereal_7a$ximp


