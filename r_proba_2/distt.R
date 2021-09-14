library(ggplot2)
library(purrr)
k <- 1000000
sims.normx <- function(k){
  q <- runif(n)
  e <- runif(n)
  d <- (-2*log(q))^.5
  f <- (2*3.141516*e)
  xo <- (d*cos(f))
  yo <- (d*sin(f))
}
sim.t <- sims.normx(n)/(sims.ji2/3)^2
sim.t[1:10]
df.t <-  data.frame(Distribución=rep("t", n), Simulación= sim.t)
p.t <- ggplot(df.t, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.t
