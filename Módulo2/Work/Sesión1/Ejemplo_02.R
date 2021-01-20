# Ejemplo 2. Matrices

# Objetivo

# Crear nuevas matrices
# Extraer datos dentro de una matriz
# Calcular sus dimensiones
# Realizar operaciones básicas entre matrices

# Requisitos

# Tener instalados R y RStudio
# Haber estudiado el Prework

# Desarrollo

# Se debe seguir el código propuesto y tratar de compreder que es lo que realiza

# Crear Matrices. 

(m <- matrix(1:9, nrow = 3, ncol = 3))

# Extrayendo la primera entrada

m[1,1]

# Extrayendo la primer columna, con todas sus filas

m[ ,1]

# ¿Qué sucede si se suma un vector y una matriz?

(sum.vecmat <- c(1, 2) + m)

# Creando otra matriz

(n <- matrix(2:7, 4, 6))

# Podemos conocer la dimensión de la matriz así

dim(n)

# Extrayendo subconjuntos de la matriz

#Etrae los elementos de n que sean mayores a 4
n[n > 4] 
#Extrayendo los valores lógicos que sean mayores a 4
n>4

# Ahora veremos como localizar la posición de las entradas anteriores
#Forza a la matriz a ser vector y da las posiciones en la matriz que sean
#mayores a 4 
which(n > 4)

# Uniendo Vectores para formar una matriz

a <- 2:6
b <- 5:9

# Construyendo la matriz utilizando la función cbind, para unirlos por culumna
#Combina los vectores por columnas
cbind(a,b)

# Construyendo la matriz utilizando la función rbind, para unirlos por fila
#Combina los vectores por fila
rbind(a,b)

# Aplicando una función a las filas o columnas de una matriz (mean, sort)

#Utiliza un arreglo como una matriz, el índice 1 indica que es por filas
#Mean obtiene promedios
#Obtiene el promedio por cada fila
apply(n, 1, mean)
#El índice 2 se refiere a columnas
#sort  ordena los valores, como tiene 2 lo hace por columnas
apply(n, 2, sort)

#Para comprobar el promedio de cada fila:
mean(n[1,])
mean(n[2,])
mean(n[3,])
mean(n[4,])

# Algunas operaciones básicas de matrices

# Producto matricial: A %*% B
# Producto elemento a elemento: A*B
# Traspuesta: t(A)
# Determinante: det(A)
# Extraer la diagonal: diag(A)
# Resolver un sistema de ecuaciones lineales (( Ax=b )): solve(A,b)
# Inversa: solve(A)
# Autovalores y autovectores: eigen(A)