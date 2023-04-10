###RESUME DES PAGES###


####PARTIE 1####CONTROLE DE DEBIT R #####


        ###BOOLEENS## opérateurs de comparaison et logiques###

# declare booleen 
x <- TRUE
print(x)
print(class(x)) ###dans R, les variables booléennes appartiennent à la classe logicaal

# declare Booleen avec une seule 
y <- F
print(y)
print(class(y))
 
##R Booléen avec opérateurs de comparaison
   
    ####voir Script_cours002_DIOP_Ousseynou#####


####R si... autre

   ##Syntaxe
if (test_expression) {
  # body of if
}

###Exemple

x=-2
if (x>0) {
  print("le nombre est positif")
}
print("JAJEF")


##IF else
moy=15
if (moy<12){
  print("redouble la classe ")
}else{
  print("admis en classe superieure")
}

###IF ElseIF ELSE

moy=14
if(moy<12){
  print("redouble")
}else if(moy<14 & moy>=12){
  print("passe assez bien")
}else if(moy<16 & moy>=14){
  print("bien")
}else{
  print("tres bien")
}

###Imbrique

moy=18.98
if (moy>12){
  if(moy<14 & moy>=13.97){
    print("arrondi, mention Bien")
  }else if(moy<16 & moy>=15.97){
    print("arrondi, mention Trés Bien")
  }else{
    print("pas necessaire")
  }
    
}else{
  print("pas d'arrondi")
}


###Ifelse

#syntaxe
ifelse(test_expression, x, y)

##exemple
note=c(9,2,19,17,18,13,12,16,14,11,13,15)
ifelse(note>12,"passe","redouble")


###les boucles

##WHILE
n=1
s=0
while(n<=20){
  s=s+n
  n=n+1
}

print(s)

##While et break
n=1
s=0
while(n<=20){
  s=s+n
  n=n+1
  if(n==12){
    break
  }
}

print(s)


##while et next
n=1
s=0
while(n<=20){
  s=s+n
  n=n+1
  if(n%%2==0){
    n=n+1
    print(n)
    next
    print(n)
  }
  
}
print(s)


###Boucle

###for

b=1:10
for(i in b){
  print(i)
}
  
##exemple1

num=1:100
p=0
for(i in num){
  if (i%%2==0){
    p=p+1
    print(p)
  }
}

##Exemple2
num=1:100
p=0
for(i in num){
  if (i==50){
   break
  }
  p=p+1
}
print(p)
print(i)

##Exemple3

num=1:100
p=0
for(i in num){
  if (i%%2!=0){
    p=p+i
    print(i)
  }
}
print(p)

###imbriquer

S=c(2,3,4,8,9,1)
V=c(1,0,3,6,5)
for(i in S){
  for(j in V){
    if (i+j%%2!=0){
      print(paste(i,j))
    }
  }
}




##Break et Next


##break

S=c(2,3,4,8,9,1)

for(i in S){
  if(i==8){
    break
  }
  print(i)
}

##imbrique

x = c(1, 2, 3)
y = c(1, 2, 3)

for(i in x) {
  for (j in y) {
    if (i == 2 & j == 2) {
      break
    }
    print(paste(i, j))
  }
}

###next

x = c(1, 2, 3, 4, 5, 6, 7, 8)
for(i in x) {

  if(i %% 2 != 0) {
    next
  }
  
  print(i)
}



###boucle de repetition

#syntaxe
repeat {
  # statements
  if(stop_condition) {
    break
  }
}


#exemple

d=1
repeat{
  print(d)
  if(d+1==10){
    break
  }
d=d+2
}

##exmple

x = 1

repeat {
  if ( x == 4) {
    break
  } 
  if ( x == 2 ) {
    x = x + 1
    next
  }
  
  print(x)
  x = x + 1
  
}



###Fonction dans R


##Syntaxe

func_name <- function (parameters) {
  statement
}

#Exemple

puiss<-function(a,b){
#  return(a**b)
   print(paste("a puissance b est:",a**b))
}
puiss(3,2)
puiss(a=3,b=2)
puiss(b=2,3)

#PAR DEFAUT

puiss<-function(a=0,b=0){
  #  return(a**b)
  print(paste("a puissance b est:",a**b))
}
puiss(3)


##FUNCTION IMBRIQUE

puiss<-function(a,b){
  #  return(a**b)
  print(a**b)
}
puiss(puiss(2,3),puiss(3,1))


##Function dans une autre function

dan<-function(a){
  int<-function(b){
    return (a**b)
  }
  return(int)
}
ent=dan(2)
print(ent(3))
N




##############PARTIE 2############STRUCTURE DE DONNEES R###############################




####CHAINES


"chaine"
'chaine'
 ##concaténé

msg<-"resumé"
cr<-"cours_005"
print(paste(msg,cr))


####Opérateur sur les chaines

#Longueur  nchar

lg<-"OusseynouDIOP"
print(nchar(lg))


###Comparé deux chaines

msg1<-'DIOP GALSEN'
msg2<-"DIOP SEN"
msg3<-"DIOP Sénégal"
print(msg1==msg2)


##MAJUSCULE MINISCULE

chaine1<-"r programmation"
chaine2<-"R SCRIPT"

print(toupper(chaine1))
print(tolower(chaine2))


###Sequence d'échappement

message<-"PROGRAMMATION \"R\" STUDIO"
cat(message)

###multiligne

message2<-"Ecole nationale de la 
Statistique et de
l'Analyse économique
ENSAE PIERRE NDIAYE"
print(message2)
cat(message2)


###les vecteurs

sen<-c('diop','NDIAYE','THIAM')
print(sen)

print(sen[1])
sen[1]<-'DIOP'
print(sen)

num<-c(1,4,7,3)
seq<-1:10
print(seq)
repe<-rep(num,times=2)
eac<-rep(num,each=2)
print(repe)
cat("repeat vector:", repe)
cat("each numbers;",eac)


##boucle sur les vecteurs
 for (nom in sen){
   if(nom=="DIOP")
   cat("the big boss is:",nom)
   else
     print(nom)
 }

cat("le nombre d'élément de sen est:", length(sen))




####les matrices

matrice2<-matrix(c(4,5,1,9,0,7,2,6,0),nrow=3,ncol=3)
matrice1<-matrix(c(1,3,5,8,12,0,3,2,7), nrow=3,ncol = 3,byrow=TRUE)
print(matrice1)
print(matrice2)

cat("élément de la matrice ligne2 colonne3 est:",matrice1[2,3])
cat("élément de la matrice ligne2 :",matrice1[2,])
cat("élément de la matrice colonne3 :",matrice1[,3])
cat("élément de la matrice colonne2-3 :",matrice1[,c(2,3)])
cat("élément de la matrice LIGNE1-3 :",matrice1[c(1,3),])

#Modifier élément de matrice

matrice2[1,1]<-10
print(matrice2)

##Combiner deux matrice

#par ligne
comlign<-rbind(matrice1,matrice2)
print(comlign)

#par colonne
comcol<-cbind(matrice1,matrice2)
print(comcol)


##Verification d'élément dans une matrice

12 %in% matrice1
15 %in%matrice2

###liste

liste1<-list("DIOP",2,FALSE,'only')

print(liste1)
print(liste1[4])

liste1[3]<-TRUE
print(liste1)
liste2<-append(liste1,3,4)
print(liste2)

##supprimer un élément

print(liste1[-3])

cat("la longuer de la liste est:",length(liste1))

##Boucle sur une liste
liste1<-list("DIOP",2,FALSE,'only')
for(i in liste1){
  print(i)
}
##verifier élément

'NDIAYE' %in% liste1



######les Tableaux


tab1<-array(1:12,dim=c(2,2,3))
print(tab1)

###ACCES  aux éléments

cat("ligne1 col2 mat3 est:",tab1[1,2,3])
 

###ACCES A UNE LIGNE OU COLLONE
cat("ligne1_2  mat3 est:",tab1[c(1,2),,3])
cat("col1_2  mat2 est:",tab1[,c(1,2),2])
 

##EXISTENCE

2 %in% tab1

cat("la longueur du tableau est:",length(tab1))




#####Dataframes##############"
###SYntaxe
#dataframe1 <- data.frame(
 # first_col  = c(val1, val2, ...),
  #second_col = c(val1, val2, ...),

#Example

data1<-data.frame(
  nat=c("SENEGAL","NIGER","TOGO","BURKINA FASO"),
  nam=c("NDIAYE","FAROUK","GADO","KABORE"),
  not=c(19,18,17,16)
)
print(data1)
print(data1[2])
print(data1[["nam"]])
print(data1$nam)

##combiné
data2<-data.frame(
  cours=c("Studio","TEC","ANGLAIS","TOPO"),
  autre=c("python","vba","opti","micro"),
  autre1=c(2,3,4,5)
)
print(data2)
C1=cbind(data1,data2)
print(C1)


cat("longueUr",length(C1))



#########R factors

#syntax factors(vector)


##exemple

age<-factor(c(12,14,19,12,19,10,10,15))
print(age)
print(age[4])
print(age[8])

age[3]<-15
print(age[3])





###################################Visualisation des données#####################


#Création diagramme en barre

note<-c(11,14,10,12,18,19,15,17,12)
result<-barplot(note)

 ##ajout titre

#library(ggplot2)
#ggplot(note,aes(x="fréquence des notes", y="Note"))+
 # geom_boxplot()

result<-barplot(note, main="NOTE EN CLASSE")

##ajout des etiquettes

result<-barplot(note, main="NOTE EN CLASSE", xlab="fréquence des notes", ylab="note")

##ajout non de chaque Barre

result<-barplot(note, main="NOTE EN CLASSE", xlab="fréquence des notes", ylab="note",names.arg =c("LALIA","MACHIN","CORREA","POUTINE","SDK","KAZY","BOTITO","ROUND","YENAPASBCP") )

###colors

result<-barplot(note, main="NOTE EN CLASSE", xlab="fréquence des notes", 
      ylab="note",
      names.arg =c("LALIA","MACHIN","CORREA","POUTINE","SDK","KAZY","BOTITO","ROUND","YENAPASBCP"),
      col="red")

##texture des barre

result<-barplot(note, main="NOTE EN CLASSE", xlab="fréquence des notes", 
                ylab="note",
                names.arg =c("LALIA","MACHIN","CORREA","POUTINE","SDK","KAZY","BOTITO","ROUND","YENAPASBCP"),
                col="red",
                density=30)

###Rendre horizontal


result<-barplot(note, main="NOTE EN CLASSE", xlab="fréquence des notes", 
                ylab="note",
                names.arg =c("LALIA","MACHIN","CORREA","POUTINE","SDK","KAZY","BOTITO","ROUND","YENAPASBCP"),
                col="red",
                density=30,
                horiz=TRUE)
###barre empilés
# create a matrix
titanic_data <-  matrix(c(122, 203, 167, 118, 528, 178, 673, 212),
                        nrow = 2, ncol = 4)

result <- barplot(titanic_data,
                  main = "Survival of Each Class",
                  xlab = "Class", ylab = "Effectif",
                  names.arg = c("1st", "2nd", "3rd", "Crew"),
                  col = c("blue","green"),
                  density=20
)

legend("topleft",
       c("Not survived","Survived"),
       fill = c("Blue","green")
)

print(result)



#####Histogrammes

temperatures <- c(67 ,72 ,74 ,62 ,76 ,66 ,65 ,59 ,61 ,69 )


# histogram of temperatures vector
result <- hist(temperatures,
               main = "Histogram of Temperature",
               xlab = "Temperature in degrees Fahrenheit",
               col = "blue",density=20)

print(result)


##Limité les axes
temperatures <- c(67 ,72 ,74 ,62 ,76 ,66 ,65 ,59 ,61 ,69 )

# histogram of temperatures vector
result <- hist(temperatures,
               main = "Histogram of Temperature",
               xlab = "Temperature in degrees Fahrenheit",
               col = "red",density=20,ylim=c(0,4),xlim=c(50,90))

print(result)


###Graphiques circulaires pie

expenditure <- c(600, 300, 150, 100, 200)
result <- pie(expenditure)
print(result)

##Ajouter titre et labels
expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
              main = "Monthly Expenditure Breakdown",
              labels = c("Housing", "Food", "Cloths", "Entertainment", "Other")
)

print(result)

##Ajouter couleur perso

expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
              main = "Monthly Expenditure Breakdown",
              labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
              col = c("red", "orange", "yellow", "blue", "green")
)

print(result)


###En 3d avec la bibliotheque plotrix et on ajoute pie3D

library(plotrix)
expenditure <- c(600, 300, 150, 100, 200)

result <- pie3D(expenditure,
              main = "Monthly Expenditure Breakdown",
              labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
              col = c("red", "orange", "yellow", "blue", "green")
)

print(result)





######BOXPLOT

####appelons un jeu de données déja disponibles sur R mtcars

head(mtcars)
print(mtcars)
boxplot(mtcars$mpg,
        main="Mileage Data Boxplot",
        ylab="Miles Per Gallon(mpg)",
        xlab="No. of Cylinders",
        col="blue")

###Boxplot entre deux variable avec la fonction

boxplot(mpg ~ gear, data = mtcars,
        main = "Mileage Data Boxplot",
        ylab = "Miles Per Gallon(mpg)",
        xlab = "No. of Cylinders",
        col = "orange")

##Ajouter une encoche

boxplot(mpg ~ gear, data = mtcars,
        main ="Mileage Data Boxplot",
        ylab ="Miles Per Gallon(mpg)",
        xlab ="No. of Cylinders",
        col ="orange",
        notch = TRUE)


####Crée des  graphiques R strip

head(airquality)
print(airquality)


###graphique en bande

stripchart(airquality$Ozone)

###avec chevauchement des point
stripchart(airquality$Ozone,
           main="Mean ozone in parts per billion at Roosevelt Island",
           xlab="Parts Per Billion",
           ylab="Ozone",
           col="orange",
           method = "jitter")

###avec deux vecteurs

list1 <- list("Ozone" = airquality$Ozone,  "Solar Radiations" = airquality$Solar.R)

stripchart(list1,
           main="Mean ozone in parts per billion at Roosevelt Island",
           xlab="Parts Per Billion",
           col= c("orange","brown"),
           method = "jitter")


####tracé des fonctions 

#point
plot(2,4)
x <- c(2, 4, 6, 8) 
y <- c(1, 3, 5, 7)
plot(x, y)

plot(1:10)
##RELIER type=(l,s,h,n,b,p)
plot(1:10,type="l")
plot(1:5,
     main="Plot Sequence of Points", 
     xlab="x-axis", 
     ylab="y-axis")

##Function trigonométrique

x = seq(-pi,pi,0.1)
y = sin(x)
plot(x,y)

###Enregistrer histogramme


jpeg(file="histogram1.jpeg")
hist(airquality$Temp)
dev.off() ###Pour sauvegarder


##Enregistrer en tant qu'image png


png(file="C:/Users/dell/Desktop/ENSAE/ISEP2/Semestre_2/Programmation R/Courshistrogram2.png",
    width=600, height=350)
hist(airquality$Temp)
dev.off()

###en pdf

# save histogram in pdf format in current directory
pdf(file="histogram1.pdf")
hist(airquality$Temp)
dev.off()


###COULEURS SUR R


# create a vector named temp
temp <- c(5,7,6,4,8)

barplot(temp, main="By default")

barplot(temp, col="coral", main="With coloring")
colors() #Pour voir les couleurs qui existent
barplot(temp, col="tomato4", main="With coloring")


#Avec les valeurs hexadécimales

# create a vector named temp
temp <- c(5,7,6,4,8)

barplot(temp, col="#c00000", main="#c00000")
barplot(temp, col="#AE4371", main="#AE4371")


##Avec rvb
# create a vector named temp
temp <- c(5,7,6,4,8)
barplot(temp, col = rgb(0.3, 0.7, 0.9), main="Using RGB Values")


##cycle des colors

# create a vector named temp
temp <- c(5,7,6,4,8)
barplot(temp, col=c("red", "coral", "blue", "yellow", "pink"), main="With 5 Colors")
barplot(temp, col=c("red", "coral", "blue"), main="With 3 Color")


###Palette de couleurs

temp <- c(5,7,6,4,8)

# using rainbow()

barplot(temp, col=rainbow(5), main="rainbow")
barplot(temp, col=heat.colors(5), main="heat.colors")
barplot(temp, col=terrain.colors(5), main="terrain.colors")
barplot(temp, col=topo.colors(5), main="topo.colors")

####Manipulation des données ####



###Lire un CSV
read_base=read.csv2("C:/Users/dell/Desktop/ENSAE/ISEP2/Semestre_2/Programmation R/Cours/base_004.csv")
print(read_base)
View(read_base)

###Nombre colonne et ligne

cat("nombre de colonne:",ncol(read_base))
cat("nombre de ligne:",nrow(read_base))

##Min Max dans une colonne

mini<-min(read_base$Revenu)
maxi<-max(read_base$Revenu)
print(mini)
print(maxi)

##filtrer

sub_base <- subset(read_base, Note > 10) 
print(sub_base)

###write

data2<-data.frame(
  cours=c("Studio","TEC","ANGLAIS","TOPO"),
  autre=c("python","vba","opti","micro"),
  autre1=c(2,3,4,5)
)

write.csv(data2,"Fichier_text.csv")
write.csv(data2,"Fichier_text.csv",quote=FALSE)


###Lecture fichier excel

install.packages("xlsx")
library("xlsx")

read_base_excel=read.csv2("C:/Users/dell/Desktop/ENSAE/ISEP2/Semestre_2/Programmation R/Cours/Base2_Cours_004.xlsx",sheetIndex = 1, rowIndex = 1:5,startRow=2)
print(read_base_excel)
##SheetIndes=numero de feuille
# rowIndex =nombre de ligne a lire
## startRow=le commence des entetes


##enregister
data3<-data.frame(
  cours=c("Studio","TEC","ANGLAIS","TOPO"),
  autre=c("python","vba","opti","micro"),
  autre1=c(2,3,4,5)
)

write.csv(data3,"Fichier_text2.xlsx")
##renommer la feuil 

write.csv(data3,"Fichier_text2.xlsx",sheetName="Base")




###Jeu de données sur R

##afficher des jeux de données

print(airquality)


##Info sur le jeu de données

cat("Dimension:",dim(airquality))
cat("\nRow:",nrow(airquality))
cat("\nColumn:",ncol(airquality))
cat("\nName of Variables:",names(airquality))


##trier une variable
sort(airquality$Temp)


##sortir les statistique avec summary

summary(airquality$Temp)



####Min Max
numbers <- c(2,4,6,8,10)

# return largest value present in numbers
max(numbers)  # 10

characters <- c("s", "a", "p", "b")

# return alphabetically maximum value in characters
max(characters)  # "s"

##avec des NA

numbers <- c(2, NA, 6, 7, NA, 10)

min(numbers)  # NA
numbers <- c(2, NA, 6, 7, NA, 10)

# return smallest value 
min(numbers, na.rm = TRUE)  # 2


## max min dans une colonne
# Create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Kay", "Jay", "Ray", "Aley"),
  Age = c(22, 15, 19, 30, 23),
  ID = c(101, 102, 103, 104, 105)
)

# return maximum value of Age column of dataframe1
print(max(dataframe1$Age)) # 30

# return minimum value of ID column of dataframe1 
print(min(dataframe1$ID)) # 101


##Moyenne median mode

# vector of marks
marks <- c(97, 78, 57, 64, 87)

# moy et median
moy1 <- mean(marks)
med<- median(marks)
print(moy1)
print(med)

###MODE

# vector of marks
marks <- c(97, 78, 57,78, 97, 66, 87, 64, 87, 78)

# define mode() function
mode = function() {
  
  # calculate mode of marks  
  return(names(sort(-table(marks)))[1])
}


# call mode() function
mode()


####LES PERCENTILES

marks <- c(97, 78, 57, 64, 87)
percen70<- quantile(marks, 0.70)
print(percen70)

##Plusieurs percentiles

marks <- c(97, 78, 57, 64, 87)

result <- quantile(marks, c(0.7, 0.5, 0.8))

print(result)


###dataframa

dataframe1 <- data.frame (
  Name = c("Juan", "Kay", "Jay", "Ray", "Aley"),
  Age = c(22, 15, 19, 30, 23),
  ID = c(101, 102, 103, 104, 105)
)

result <- quantile(dataframe1$Age, c(0.55, 0.27))

print(result)




###Date

#date actuelle
Sys.Date()
Sys.time()


# access lubridate package
library(lubridate) 
#Obtenez la date actuelle en utilisant le paquet de lubrification R

library(lubridate) 
now()

##Extraction des années, des mois et des jours à partir de valeurs de dates multiples dans R

#  import lubridate package
library(lubridate)

dates <- c("2022-07-11", "2012-04-19", "2017-03-08")
year(dates)
month(dates)
mday(dates)

# import lubridate package
library(lubridate)

dates <- c("2022-07-11", "2012-04-19", "2017-03-08")

# augmenter les ans
print(dates + years(1))

# augmenter les mois
print(dates + months(1))

# augmenter les jours
mday(dates) <- c(22, 18, 15)
print(dates) 

#Utilisation de update() pour mettre à jour plusieurs valeurs de dates dans R

# import lubridate package
library(lubridate)

dates <- c("2022-07-11", "2012-04-19", "2017-03-08")

new_dates <- update(dates, 
                    year = c(2022, 2015, 2019), 
                    month = c(9, 12, 1), 
                    day = c(21, 2, 13)
)


##les objets
#Un objet est simplement une collection de données (variables) et de méthodes (fonctions). 
#De même, une classe est un Blueprint pour cet objet.

##les classes
# R a trois systèmes de classes:

#Classe S3
#Classe S4
#Classe de référence


##classe S3

student1 <- list(name = "John", age = 21, GPA = 3.5)

class(student1) <- "Student_Info"

student1

#Classe S4

#ci, nous avons créé une classe nommée avec trois emplacements (variables membres)

setClass("Student_Info", slots=list(name="character", age="numeric", GPA="numeric"))

##Maintenant, pour créer un objet, nous utilisons la fonction.

student1 <- new("Student_Info", name = "John", age = 21, GPA = 3.5)

##EXEMPLE

# create a class "Student_Info" with three member variables
setClass("Student_Info", slots=list(name="character", age="numeric", GPA="numeric"))

# create an object of class 
student1 <- new("Student_Info", name = "John", age = 21, GPA = 3.5)

# call student1 object 
student1
#Les classes de référence ont été introduites plus tard, par rapport aux deux autres. 
#Il est plus similaire à la programmation orientée objet que nous avons l’habitude 
#de voir dans d’autres grands langages de programmation.

# create a class "Student_Info" with three member variables
Student_Info <- setRefClass("Student_Info",
                            fields = list(name = "character", age = "numeric", GPA = "numeric"))

# Student_Info() is our generator function which can be used to create new objects
student1 <- Student_Info(name = "John", age = 21, GPA = 3.5)

# call student1 object
student1

##Classe S3


employee1 <- list(name = "Peter", age = 21, role = "Developer")


class(employee1) <- "Employee_Info"

employee1 <- list(name = "Peter", age = 21, role = "Developer")

class(employee1) <- "Employee_Info"

employee1
################################""

employee1 <- list(name = "Peter", age = 21, role = "Developer")

class(employee1) <- "Employee_Info"

print.Employee_Info <- function(obj) {
  cat(obj$name, "\n")
  cat(obj$age, "years old\n")
  cat("Role:", obj$role, "\n")
}

print(employee1)

##classe et objet S4 dans R

setClass("Employee_Info", slots=list(name="character", age="numeric", role="character"))


employee1 <- new("Employee_Info", name = "Peter", age = 21, role = "Developer")

employee1

setClass("Employee_Info", slots=list(name="character", age="numeric", role="character"))

employee1 <- new("Employee_Info", name = "Peter", age = 21, role = "Developer")

##modifier l’emplacement de classe S4

setClass("Employee_Info", slots=list(name="character", age="numeric", role="character"))

employee1 <- new("Employee_Info", name = "Peter", age = 21, role = "Developer")

# access and modify name slot of Employee_Info 
employee1@name <- "Jack" 

# access and modify role slot of Employee_Info
employee1@role <- "Designer"

# print modified value for name slot
employee1@name # prints "Jack"

# print modified value for role slot
employee1@role  # prints "Designer"





# cree sa propre méthode

setMethod("show",
          "Employee_Info",
          
          function(object) {
            cat(object@name, "\n")
            cat(object@age, "years old\n")
            cat("Role:", object@role, "\n")
          }
)
employee1







##########################################################################"~~###
###############################################################################
 ##############################################################################
########################################FIN-FIN################################*
##########################################################################"~~###
###############################################################################
##############################################################################
########################################FIN-FIN################################*
###############################################################################
##############################################################################
########################################FIN-FIN################################*



# call employee1 object 

