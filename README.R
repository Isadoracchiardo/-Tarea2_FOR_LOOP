##Trabajo 6-08-20## 

###Desarrollo pregunta Nº1###

proteccion <- mp
oficios <- of

rm(list = ls())

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

mp <- 0
niños<- 0
totalpersonas <-0

for (enunciado_n in listaDocumentos) {
  if(enunciado_n [1]=="mp"){
    mp <- mp+1
    niños<- niños+(length(enunciado_n)-1)
    totalniños <- c(niños, length(enunciado_n))
  }
  
}

print(paste("se consideran", mp, "mp de", niños, "niños"))


###Desarrollo pregunta Nº2###

tema <- function(listaDocumentos){
  
  codi.av01 <- c("av01")
  codi.av02 <- c("av02")
  codi.av03 <- c("av03")
  codi.av04 <- c("av04")
  codi.av05 <- c("av05")
  codi.av07 <- c("av07")
  codi.av08 <- c("av08")
}

###Desarrollo pregunta Nº3###

antecedentes <- ante
datospersonales <- dape
medidas cautelares <- meca
audienciaderevisiondemedidas <- arme
empliacionmedidasdeproteccion <- ampr

#Segun el juez se consideran rechazados los oficios que se consideren par#

codi.av02
codi.av04
codi.av08

aprobar <- 0
rechazar <- 0
oficiostotales <- 0

for (tematica in listaDocumentos) {
  if(tematica[1]=="of"){
    oficiostotales <- oficiostotales+1
    if(tematica[2]=="av02"|| tematica[2]=="av04"|| tematica[2]== "av08" ){
      aprobar <- aprobar+1  
    } else if (tematica[2]=="av01"|| tematica[2]=="av03"|| tematica[2]=="av05"|| tematica[2]=="av07" ){
      rechazar <- rechazar+1
    }
  } 
}

print(paste("son", oficiostotales, "oficios que estan:", aprobar, "aprobados", rechazar, "rechazardos"))





