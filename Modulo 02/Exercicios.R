##======================================================================
## Resolução dos exercícios
## Módulo 2
## Exercício 1
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## 2.1.1. Usando a função runif(), gere 30 números aleatórios entre
## 2.1.1.1. 0 e 1
r2111 = runif(30, 0, 1)
## 2.1.1.2. -5 e 5
r2112 = runif(min=-5, max=5, n=30)
## 2.1.1.3. 10 e 500
r2113 = runif(max=500, n=30, min=10)

## 2.1.2. Veja o help da função (?) "+"
?"+"

## 2.1.3. Crie uma função para fazer a soma de dois números: x e y
f_soma <- function(x,y){
  x+y
}
r213 <- f_soma(5,4)

## 2.1.4. Crie uma função para simular a jogada de um dado.
dado <- function(){
  sample(1:6, size = 1)
}
r214 <- dado()

## 2.1.5. Crie uma função para simular a jogada de dois dados.
dados2 <- function(){
  sample(1:6, size = 2)
}
r215 <- dados2()

## 2.1.6. Crie uma função para simular a jogada de n dados.
dados_n <- function(n = 5){
  sample(1:6, size = n)
}
r216 <- dados_n(5)

##======================================================================
## Resolução dos exercícios
## Módulo 2
## Exercício 2
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## 2.2.1. Armazene o resultado da equação 32+162−253 no objeto x
x <- 32 + 16 ^ 2 - 25 ^ 3

## 2.2.2. Divida x por 345 e armazene em y
y <- r221 / 345

## 2.2.3. Crie um objeto (com o nome que você quiser) 
## para armazenar 30 valores aleatórios de uma distribuição uniforme entre 10 e 50
r223 <- runif(30, 10, 50)

## 2.2.4. Remova o objeto y
rm(y)

## 2.2.5. Remova os demais objetos de uma única vez 
rm(list=ls())



##======================================================================
## Resolução dos exercícios
## Módulo 2
## Exercício 3
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## 2.3.1. Crie um objeto com os valores 54, 0, 17, 94, 12.5, 2, 0.9, 15.
r231 <- c(54, 0, 17, 94, 12.5, 2, 0.9, 15)

## 2.3.1.1. Some o objeto acima com os valores 5, 6.
r2311 <- r231 + c(5,6)

## 2.3.1.2. Some o objeto acima com os valores 5, 6, 7.
r2312 <- r231 + c(5,6,7)

## 2.3.2. Construa um único objeto com as letras: A, B, e C,
## repetidas cada uma 15, 12, e 8 vezes, respectivamente.
r232 <- rep(c("A", "B", "C"), times = c(15,12,8))

## 2.3.2.1. Mostre na tela, em forma de verdadeiro ou falso, onde estão as letras B nesse objeto.
r232 == "B"

## 2.3.2.2. Veja a página de ajuda da função sum() e descubra
## como fazer para contar o número de letras B neste vetor (usando sum()).
r232 = sum(r232 == "B")

## 2.3.3. Crie um objeto com 100 valores aleatórios de uma distribuição uniforme U(0,1).
## Conte quantas vezes aparecem valores maiores ou iguais a 0,5.
set.seed(11)
r233a <- runif(100, 0, 1)
r233 <- sum(r233a >= 0.5)

## 2.3.4. Calcule as 50 primeiras potências de 2, ou seja, 2,22,23,…,250.
r234 <- 2^(1:50)

## 2.3.4.1. Calcule o quadrado dos números inteiros de 1 a 50, ou seja, 12,22,32,…,502.
r2341 <- (1:50)^2

## 2.3.4.2. Quais pares são iguais, ou seja,
## quais números inteiros dos dois exercícios anteriores satisfazem a condição 2n=n2?
r2342 <- which(r234 == r2341)

## 2.3.4.3. Quantos pares existem?
r2343 <- sum(r234 == r2341)

## 2.3.5. Calcule o seno, coseno e a tangente para os números
## variando de 0 a 2π, com distância de 0.1 entre eles.
## (Use as funções sin(), cos(), tan()).
seno <- sin(seq(0, 2*pi, by = 0.1))
coseno <- cos(seq(0, 2*pi, by = 0.1))
tangente <- tan(seq(0, 2*pi, by = 0.1))


## 2.3.5.1. Calcule a tangente usando a relação tan(x)=sin(x)/cos(x).
tangente2 <- seno / coseno

## 2.3.5.2. Calcule as diferenças das tangentes calculadas
## pela função do R e pela razão acima.
difer <- tangente - tangente2
difer

## 2.3.5.3. Quais valores são exatamente iguais?
which(tangente == tangente2)
which(difer == 0)
all.equal(tangente, tangente2)


## 2.3.5.4. Qual a diferença máxima (em módulo) entre eles?
## Qual é a causa dessa diferença?
max(difer)
max(abs(difer))

##======================================================================
## Resolução dos exercícios
## Módulo 2
## Exercício 4
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## m2.ex4.q1. Crie um objeto para armazenar uma matriz: ⎡⎣⎢⎢209847415⎤⎦⎥⎥
matriz <- matrix(c(2, 0, 9, 8, 4, 7, 4, 1, 5), nrow = 3, ncol = 3)
matriz

## m2.ex4.q2. Atribua nomes para as linhas e colunas dessa matriz.
colnames(matriz) <- c('A', 'B', 'C')
rownames(matriz) <- c('x', 'y', 'z')

## m2.ex4.q3. Crie uma lista (não nomeada) com dois componentes:
## (1) um vetor com as letras A, B, e C, repetidas 2, 5, e 4 vezes respectivamente; e
## (2) a matriz do exemplo anterior.
lista_n_nomeada <- list(rep(c('A', 'B', 'C'), times = c(2, 5, 4)), matriz)
lista_n_nomeada

## m2.ex4.q4. Atribua nomes para estes dois componentes da lista.
names(lista_n_nomeada) <- c("vetor", "matriz")
names(lista_n_nomeada)

## m2.ex4.q5. Inclua mais um componente nesta lista, com o nome de praias,
## e que seja um vetor da classe factor, idêntico ao objeto caracter criado acima
## (que possui apenas os nomes brava, joaquina, armação).
praias <- as.vector(c('brava', 'joaquina', 'armação'))
praias
lista_n_nomeada$praias <- praias
lista_n_nomeada

## m2.ex4.q6. Crie um data frame para armazenar duas variáveis:
##  local (A, B, C, D), e contagem (42, 34, 59 e 18).
df <- data.frame(
  local = c("A", "B", "C", "D"),
  cont = c(42, 34, 59, 18)
)
df


## m2.ex4.q7. Crie um data frame com as seguintes colunas:
## Nome, Sobrenome, Se possui animal de estimação,
##  Caso possua, dizer o número de animais (caso contrário, colocar 0)
## Para criar o data frame, a primeira linha deve ser preenchida
##  com as suas próprias informações (use a função data.frame()).
## Depois, pergunte essas mesmas informações para dois colegas ao seu lado,
##  e adicione as informações deles à esse data frame (use rbind()).
## Acresente mais uma coluna com o nome do time de futebol de cada um.


df <- data.frame(
  Nome = "Armando",
  Sobrenome = "Nahmias",
  Animal = FALSE,
  Quantidade = 0
)

df

df <- rbind(df, list("Carlos", "Costa", FALSE, 0))

df

df <- rbind(df, list("Nero", "Nahmias", TRUE, 1))

df <- cbind(df, time = c("Chelsea", "Barcelos", NA ))

df
