
#> ###################################################################
#> #                                                                 #
#> #  Definition of the function that returns the estimate of sigma  #
#> #                                                                 #
#> ###################################################################

g <- function(x, n, k, s, s2, lod){
a <- (k*(lod^2-x^2)+s2-2*lod*s)/(x*(k*lod-s))
b <- s-k*(k*x^2+lod*s-s2)/(k*lod-s)-x*(n-k)*dnorm(a,0,1)/pnorm(a,0,1)
return(b)
}

#> ########################################################################
#> #                                                                      #
#> #  An example of generated sample with the computed estimate of sigma  #
#> #                                                                      #
#> ########################################################################

mu <- 5
sigma <- 4
n <- 100
lod <- 2
data <- rnorm(n, mu, sigma)
data2 <-  Filter(function(x) x>lod,data)
k <- length(data2)
s <- sum(data2)
s2 <- sum(data2^2)

h<-function(x){return(g(x,n,k,s,s2,lod))}
lsi <- sqrt(s2/k-(s/k)^2)
sigmaEst <- uniroot(h, lower=lsi/4,upper=4*lsi, tol=1e-6)$root

sigmaEst
