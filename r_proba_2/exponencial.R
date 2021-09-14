library(ggplot2)
library(purrr)
sims.exp <- function(n,lambda){
  u <- runif(n)
  l <- -log(1-u)/lambda
}
n <- 1000000
lambda <- 5
sims_exp <- sims.exp(n, lambda)
sims_exp[1:10]
df.exp <- data.frame(Distribución=rep("Exp", n), Simulación= sims_exp)
p.exp <- ggplot(df.exp, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.exp

