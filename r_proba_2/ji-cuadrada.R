library(ggplot2)
library(purrr)
n <- 1000000
sims.ji2 <- (sims.norm(n,0,1))^2+(sims.norm(n,0,1))^2+(sims.norm(n,0,1))^2
sims_ji2 <- sims.ji2
sims_ji2[1:10]
df.ji2 <-  data.frame(Distribución=rep("Ji cuadrada", n), Simulación= sims_ji2)
p.ji2 <- ggplot(df.ji2, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.ji2


