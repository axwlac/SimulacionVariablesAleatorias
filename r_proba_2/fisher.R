sims.f <- (sim.t)^2
sims.f[1:10]
df.f <- data.frame(Distribución=rep("F", n), Simulación= sims.f)
p.fisher <- ggplot(df.f, aes(x=Simulación, fill=Distribución)) +
  geom_density()
p.fisher
