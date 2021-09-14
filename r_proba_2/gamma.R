library(ggplot2)
library(purrr)
G <- function(k,l)sum(sims.exp(k,lambda))
sims.gamma <- function(n,k,lambda){
  x <- G(k,lambda)
  for(i in 2:n){
    x <- c(x,G(k,l))
  }
  return(x)
}
n <- 10000
k <- 2
lambda <- 2
sims_gamma <- sims.gamma(n,k,lambda)
sims_gamma[1:10]
df.gamma <- data.frame(Distribución=rep("Gamma",n), Simulación= sims_gamma)
p.gamma <- ggplot(df.gamma, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.gamma

