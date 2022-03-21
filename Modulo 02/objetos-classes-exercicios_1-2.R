##======================================================================
## Resolução dos exercícios da página objetos-classes.html
##======================================================================

##----------------------------------------------------------------------
## ---- ex1
## 1.
runif(30, 0, 1)
runif(30, max = 5, min = -5)
runif(min = 10, max = 500, n = 30)
## 2.
?"+"
## 3.
soma <- function(x, y){
    x + y
}
soma(x = 2, y = 4)
soma(2, 4)
## 4.
dados1 <- function(){
    sample(1:6, size = 1)
}
dados1()
## 5.
dados2 <- function(){
    ## sample(1:6, size = 2, replace = TRUE)
    d1 <- sample(1:6, size = 1)
    d2 <- sample(1:6, size = 1)
    return(c(d1, d2))
}
dados2()
## 6.
## OBS.: Usando o argumento ...
dados3 <- function(x = 1:6, n = 1, ...){
    sample(x = x, size = n, ...)
}
dados3(n = 2, replace = TRUE)
dados3(n = 8)
dados3(n = 8, replace = TRUE)

##----------------------------------------------------------------------
## ---- ex2
## 1.
x <- 32 + 16^2 - 25^3
## 2.
y <- x/345
## 3.
uni <- runif(30, 10, 50)
## 4.
rm(y)
## 5.
rm(list = ls())
## 6.
apropos("poisson")
rpois(100, lambda = 5)

