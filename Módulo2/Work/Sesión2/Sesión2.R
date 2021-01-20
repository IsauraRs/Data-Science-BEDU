#Calcular promedio
x = c(4000, 9000, 9000, 10000); mean(x)

#Calcular la mediana
median(x)

#Moda
library(DescTools)
Mode(x)

#Cuartiles
quantile(x, c(0.25,0.50,0.75))
#Deciles
quantile(x, seq(0.1, 0.9, by = 0.1))

IQR(x)
quantile(x, probs = 0.75) - quantile(x, probs = 0.25)

#Varianza
var(x)

#Desviación estándar
sd(x)