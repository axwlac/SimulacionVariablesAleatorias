set.seed(15926535)
library(ggplot2)
sim.exponenciales <- function(n, lambda){
  uniformes <- runif(n)
  exponenciales <- -log(uniformes/lambda)
  return(exponenciales)
  
}
n <- 1000000
lambda <- 5
simulaciones.exp<-sim.exponenciales(n = n, lambda = lambda)
simulaciones.exp[1:10]
df.exp <- data.frame(Distribución=rep("Exponencial", n), Simulación= simulaciones.exp)
p.exp <- ggplot(df.exp, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.exp
