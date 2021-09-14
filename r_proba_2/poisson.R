library(ggplot2)
library(purrr)
rpoisI <- function(lambda = 1){
  U <- runif(1)
  i <- 0
  p <- exp(-lambda)
  P <- p
  while(U >= P){
    p <- lambda * p / (i + 1)
    P <- P + p
    i <- i + 1
  }
  i
}
sims_pois <- rerun(1000000, rpoisI()) %>% flatten_dbl()
qplot(sims_pois, binwidth = 1)

