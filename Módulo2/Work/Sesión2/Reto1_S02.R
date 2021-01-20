set.seed(134)
x <- round(rnorm(1000,175,6),1)
med <- mean(x)
media <- median(x)
moda <- Mode(x) 

dec <- quantile(x, seq(0.1,0.9, by = 0.1)) 

ranI <- IQR(x)

sn <- sd(x)
sqsn <- var(x)

