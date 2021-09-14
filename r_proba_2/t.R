library(ggplot2)
library(purrr)
k <- 1000000
sim.t <- sims.norm(k,0,1)/((sims.ji2/3)^.5)
sim.t[1:100]
df.t <- data.frame(Distribución=rep("t de student", n), Simulación= sim.t)
p.t <- ggplot(df.t, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.t

