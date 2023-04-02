#Cours_004_Manipulation_de_données:Les bases

##Importation de données
##type_csv
chemin="C:/Users/dell/Desktop/ENSAE/ISEP2/Semestre_2/Programmation R/Cours"
file=paste0(chemin,"/base_004.csv")
Base=read.csv2(file)
View(Base)
##Autre méthode
#base=read.csv("C:/Users/dell/Desktop/ENSAE/ISEP2/Semestre_2/Programmation R/Cours/base_004.csv")
##selection 

region=Base$Region

##Filtrage

age_moins_de_45<-Base[Base$Age < 45,]
View(age_moins_de_45)

##Agrégation

mean_age_par_mention=aggregate(Base$Age, by=list(Base$Mention), FUN=mean)
print(mean_age_par_mention)

##Fusion des Données

Base2=read.csv2("C:/Users/dell/Desktop/ENSAE/ISEP2/Semestre_2/Programmation R/Cours/Base2_Cours_004.csv")
View(Base2)
fusion=merge(Base,Base2, by="Nom")
View(fusion) 

##Quelques sta_desc
 
moyenne_Age=mean(Base$Age)
ecart_type=sd(Base$Note)
variance=var(Base$Note)
print(moyenne_Age)
print(ecart_type)
print(variance)

## dplyr 

library(dplyr)
 jeune=Base%>%
   filter(Age<45, Sexe=="M")
   print(jeune)
   
##selection des F 
   
   femme=Base%>%
     filter(Sexe=="F")
   print(femme)
   
   ##Autre méthode
   feminin=Base[Base$Sexe=="F",]
   print(feminin)
   
##Visualisation avec ggplot

library(ggplot2)

  ##Histogramme
   
   ggplot(Base, aes(x=Age))+
     geom_histogram()
   ggplot(Base, aes(x=Note))+
     geom_histogram()
   
   ##Boxplot
   
   ggplot(Base, aes(x=Note))+
     geom_boxplot()
   ggplot(Base, aes(x=Age))+
     geom_boxplot()
   
   ##Nuage de point
   
   ggplot(Base,aes(x=Revenu,y=Age))+
     geom_point()
   
   ##Diagramme en Barre
   
   ggplot(Base, aes(x=Age, y=Note))+
     geom_boxplot() 
##Exportation des données

   write.csv(age_moins_de_45,"Base_manup_Age.csv",row.names = FALSE)
   
##visualisation avec les fonctions
   
   ##Histogramme
   
   data<-c(2,1,5,6,9,10,6,2,2,3,6,9,10)
   hist(data,main="Histogramme de data", xlab="Value", ylab="Frequence")
   
  ##Diagramme en boite
   
   boxplot(data, main="Boite a Moustache", ylab="Value")
   
  ##Diagramme nuage de point
   
   x<-c(2,1,5,0,9,8,10,8)
   y<-c(2,1,5,6,9,10,6,2)
   plot(x,y,main = "nuage de point", xlab="Value1", ylab="Value2")
 
   
   ##Graphique en barre
   
   lab<-c("A","Z","E","R","T","Y")
   x<-c(2,1,5,0,9,8)
   barplot(x,main.arg=lab, main="Diagramme en barre", xlab="labels", ylab="value")

   ##Graphique en Secteur
   
   lab<-c("A","Z","E","R","T","Y")
   x<-c(0.2,0.1,0.5,0.6,0.9,0.8)
   pie(x,labels=lab, main="diagramme circulaire", xlab="labels")

   
   ##Case thermique
   
   matrice<-matrix(c(1,1,1,4,2,2,0,4,3,4,3,8,9,6,2),ncol = 3)
   heatmap(matrice,main="Carte Thermique")   

   write.csv(Base,"Base_manup_last.csv",row.names = FALSE)
   
   
   ######Fin#############FIN#####################FIN##################FIN
   
   ######################
   
   
   #############################""""
   
   
   ###############################################   
   