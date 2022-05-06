## Questão do tipo V/F (Verdadeiro/Falso):
  
##   Cada afirmativa pode ser verdadeira (V) ou falsa (F)
## Marque somente as opções que julgar serem verdadeiras
## Caso marque uma sentença falsa como verdadeira, haverá o desconto de uma fração da pontuação da questão
## Isso serve para evitar “chutes”, ou que um aluno marque todas as opções e sempre tire nota máxima
## Por isso, marque somente as afirmativas que tiver certeza que são verdadeiras
## Na dúvida, não marque

## Em algumas alternativas será necessário o uso do conjunto de dados iris,
## carregado a partir de data("iris"), será informado nas alternativas quando precisar utilizá-lo.
## A respeito de programação funcional do R, responda:

data("iris")
str(iris)
  
##   Escolha uma ou mais:
## a. No R é recomendado utilizar funções prontas e que são computacionalmente eficiente
## do que estruturas de repetição como for e while.
TRUE

## b.A família de funções da base do R responsável por programação funcional é a família apply,
## e no tidyverse é o pacote lubridate
FALSE

## c. O código for (j in 1:nrow(iris)){print(mean(j))} nos resulta na média de cada coluna do dataset iris
for (j in 1:nrow(iris)){print(mean(j))}

## d. Utilize o conjunto de dados iris. Atribua um peso de 0.46 para a coluna Petal.Lenght e 0.54 para a coluna Petal.Width, a média ponderada será de 2.38.
weighted.mean(c(iris$Petal.Length, iris$Petal.Width), c(0.46, 0.54), na.rm = TRUE)

colunas <- 


## e. O método de ‘crescer um vetor’ dentro de um for no R acaba sendo preferível já que nem sempre sabemos o comprimento do vetor ao final do loop.

Questão do tipo cloze (respostas numéricas ou textuais):
  
  Os valores entre parênteses no início das questões (quando houver) indicam o número de casas decimais e a tolerância considerada, respectivamente. Por exemplo: (3, 0.01) significa que a sua resposta numérica deve ter 3 casas decimais e a tolerância considerada é de ±0.01

Em questões que envolvem contas com arredondamentos, arredonde o resultado final para o número de casas decimais especificado (ex.: round(<resposta final>, 3)).
Use vírgula como separador de decimal. Por exemplo, se a resposta for 3.142, digite 3,142
Se a resposta for um caracter (string), digite apenas o nome, da maneira retornada pelo R, mas sem as aspas. Por exemplo, se a resposta for "Tony Dog", digite Tony Dog

Em algumas alternativas será necessário o uso do conjunto de dados USArrests, carregado a partir de data("USArrests"), será informado nas alternativas quando precisar utilizá-lo. Nas demais utilize a lista de vetores a seguir:

  
data("USArrests")  

lista <-  list(c(19, 16, 20, 5, 20, 15, 11, 16, 10), c(2, 4, 3, 1, 2, 2), 1:7)

A seguir, a respeito do pacote purrr, responde:
  
  (0, 0) Qual a soma dos tamanhos desses vetores?

map_int(lista, sum)

cont

sum(cont)
  length(list()))
  
  
(0, 0) Multiplique pela lista (2, 10, 5), qual o resultado na 5ª posição do 3º vetor?
  Resposta
(2, 0.01) Para essa alternativa, utilize o conjunto de dados USArrests. Se assumirmos que a cada ano a taxa de murder aumenta em 1%, qual será o valor para o estado de New York daqui 3 anos?
  Resposta
str(USArrests)
