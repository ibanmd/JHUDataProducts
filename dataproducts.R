library(manipulate)
library(UsingR)
data(galton)

manipulate(plot(1:x), x=slider(1,100))

myHist <- function(mu) {
  hist(galton$child, xlab='child height', col='lightblue', main='Histogram')
  lines(c(mu,mu), c(0,150), col="red", lwd=5)
  mse <- mean((galton$child - mu)^2)
  text(63, 150, paste("mu = ", mu))
  text(63, 140, paste("MSE = ", round(mse, 2)))  
}

manipulate(myHist(mu), mu=slider(62,74, step=.5))