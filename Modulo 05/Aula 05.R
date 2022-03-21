##======================================================================
## Resolução das Atividades
## Módulo 5
## Atividade
## Questão 1
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## Sobre o pacote tidyverse, responda:
##  Escolha uma ou mais:

## a. O pacote do tidyverse que utilizamos para a manipulação de strings (caracteres) é o stringr
library(tidyverse)


## b.Para utilizar o operador |> precisamos carregar o pacote magrittr.



## c. Ao importarmos um conjunto de dados com a função read_csv(), o objeto resultante será um tibble, com três classes: tbl_df, tbl, e data.frame.
base = read_csv("Modulo 04/dados/df443.csv") 
str(base)

## d. O tidyverse é um conjunto de pacotes para importação, transformação, visualização e análise de dados no R.
?tidyverse

## e. A função rename pertence ao pacote tidyr. (Dica: veja o help da função).
?rename

## f. O pacote ggplot2 é baseado na construção de gráficos por camadas.
?ggplot2

## g. Dado o vetor "y <- c(1, 5, 8, 7)", o código "y %>% max" retornará 8.
y <- c(1, 5, 8, 7)
y %>% max
max(y)


## h. A única forma de carregar um pacote do tidyverse é com library(tidyverse), carregando também, todos os demais pacotes.
library(tidyverse)


## i. O tibble é uma classe alternativa à estrutura de data.frame do R básico.
?ggplot2

## j. Ao carregar o tidyverse com library(tidyverse), os 8 principais pacotes que o compõe serão carregados, inclusive o hms.

library(tidyverse)
tidyverse_packages()
