complete <- function(specdata, id = 1:332) {
    
    specdata <- setwd("C:/Users/grosa/Documents/Programa especializado Data Science/R Programming/Tarea de Programación 1 INSTRUCCIONES Contaminación del Aire/rprog_data_specdata/specdata")
    archivos <- list.files(pattern = "*.csv")
    datos <- data.frame()
    minid <- min(id)
    final <- max(id)
    
    for(i in minid: final) { 
        aux <- read.csv(archivos[i])
        good<-aux[complete.cases(aux),]
        nobs <- nrow(good)
        nuevo <- c(i, nobs)
        datos <- rbind(datos, nuevo)    
         }  
    datos
    
}

