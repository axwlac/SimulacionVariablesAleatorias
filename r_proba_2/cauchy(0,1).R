library(ggplot2)
library(purrr)
n <- 100000
k <- 100000
sims.norm1 <- function(n){
  u <- runif(n)
  w <- runif(n)
  s <- (-2*log(u))^.5
  t <- (2*3.141516*w)
  x <- s*cos(t)
  y <- s*sin(t)
}
sims.norm2 <- function(k){
  j <- runif(k)
  h <- runif(k)
  a <- (-2*log(j))^.5
  b <- (2*3.141516*h)
  c <- a*cos(b)
  d <- a*sin(b)
}
sims.cau <- sims.norm1(n)/sims.norm2(k)
sims.cau[1:10]
df.cau <- data.frame(Distribución=rep("Cauchy",n), Simulación= sims.cau)
p.cau <- ggplot(df.cau, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.cau

