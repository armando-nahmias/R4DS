##======================================================================
## Resolução das Atividades
## Módulo 6
## Aula
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
da <- read.csv2("Modulo 04/dados/JF_Secao_25_Ago_2020.csv",  encoding = "latin1")

str(da)

summary(da)

sapply(da, function(x) any(is.na(x)))

da$chave  

db <- da %>%
  separate(
    col = "chave",
    into = c("Trib", "UF", "Ano"),
    sep = "-",
    remove = FALSE,
    convert = TRUE
  )

library(readxl)
url <- "Modulo 04/dados/crabs.xls"

da <-  read_excel(url, range="A1:g31", sheet = ) 

?read_excel

str(da)
