#Reto 2
#1. Genera un vector de 44 entradas (aleatorias) llamado ran
ran <- rnorm(44)

#2. Escribe un loop que eleve al cubo las primeras 15 entradas y les sume 12
ranc <- 0
for (i in 1:15){
    ranc[i] <- (ran[i]**3) + 12

}
#3. Guarda el resultado en un data frame, donde la primera columna sea el número 
#aleatorio y la segunda el resultado, nómbralo df.al

df.al <- data.frame(numero = ran[1:15], resultado = ranc)

#4. Escribe el pseudocódigo del loop anterior
'''
Generar vector de 44 elementos aleatorios

Crear una variable para almacenar los resulta

para(cada uno de los primeros 15 elementos){
    elevar cada valor al cubo, sumarle 12 y asignarlo a una variable
}
crear data frame de dos columnas del primer
'''