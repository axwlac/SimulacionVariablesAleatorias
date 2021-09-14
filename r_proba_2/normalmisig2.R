library(ggplot2)
library(purrr)
sims.norm <- function(n, mu, sig){
  u <- runif(n)
  w <- runif(n)
  s <- (-2*log(u))^.5
  t <- (2*3.141516*w)
  x <- ((s*cos(t))+mu)/sig
  y <- ((s*sin(t))+mu)/sig
}
n <- 10000000
mu <- 0
sig <- 1
sims_norm <- sims.norm(n, mu, sig)
sims_norm[1:10]
df.norm <-  data.frame(Distribución=rep("Normal", n), Simulación= sims_norm)
p.norm <- ggplot(df.norm, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.norm

