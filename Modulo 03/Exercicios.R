##======================================================================
## Resolução dos exercícios
## Módulo 3
## Exercício 1
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## 3.1.1. Crie um vetor com os valores: 88, 5, 12, 13
vetor311 <- c(88, 5, 12, 13)
vetor311

## 3.1.2. Selecione o elemento na posição 3
vetor311[3]

## 3.1.3. Selecione o valor 88
vetor311[vetor311 == 88]

## 3.1.4. Selecione os valores 13 e 5 (nessa ordem)
vetor311[c(4,2)]

## 3.1.5. Selecione todos os valores, menos o 88 e o 13
vetor311[-c(4,2)]

## 3.1.6. Insira o valor 168 entre os valores 12 e 13, criando um novo objeto
vetor316 <- c(vetor311[1:3], 168, vetor311[4])
vetor316a <- append(vetor311, 168, after = 3)

  ##======================================================================
## Resolução dos exercícios
## Módulo 3
## Exercício 2
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------

##3.2.1. Crie a seguinte matriz ⎡⎣⎢⎢⎢⎢41092165902115NA⎤⎦⎥⎥⎥⎥
matriz321 <- matrix(c(4, 10, 9, 2, 16, 5, 9, 0, 2, 11, 5, NA), nrow = 4)
matriz321

##3.2.2. Acesse o elemento na quarta linha e na segunda coluna
matriz321[4,2]

##3.2.3. Acesse todos os elementos, com exceção da segunda coluna e da terceira linha
matriz321[-3,-2]

##3.2.4. Crie uma lista (nomeada) com 3 componentes:
## um vetor numérico de comprimento 10,
## um vetor de caracteres de comprimento 7, e
## a matriz do exercício anterior
lista324 <- list(v1 = 1:10, v2 = letters[1:7], matriz = matriz321)
lista324

##3.2.5. Acesse os elementos nas posições de 5 a 3 do primeiro componente da lista
lista324[[1]][5:3]

##3.2.6. Acesse os caracteres de todas as posições, menos na 2 e 6
lista324[[2]][-c(6,2)]

##3.2.7. Acesse todas as linhas da coluna 3 da matriz dentro desta lista
lista324[[3]][,3]

##3.2.8. “Crie” um novo componente nessa lista (usando $),
## contendo 30 valores aleatórios de uma distribuição normal N(12,4)
##(veja ?rnorm)
lista324$normal <- rnorm(30, mean = 12, sd = 2)
lista324

##3.2.9. Crie um data frame que contenha duas colunas:
## a primeira com as letras de “A” até “J”, e
## outra com o resultado de uma chamada da função runif(7, 1, 5)
df329 <- data.frame(
  letras = LETTERS[1:10],
  numeros = c(runif(7, 1, 5), rep(NA, 3))
)
df329

##3.2.10. Extraia as duas primeiras linhas desse data frame
df329[1:2,]
head(df329, 2)

##3.2.11. Extraia as duas últimas linhas desse data frame
df329[9:10,]
tail(df329, 2)

##3.2.12. Qual é o valor que está na linha 6 e coluna 1?
df329[6,1]

##3.2.13. Qual é o valor que está na linha 4 da coluna 2?
df329[4,2]


##3.2.14. Como você faria para contar quantos valores perdidos (NAs) existem nesse data frame?
sum(is.na(df329))

##3.2.15. Elimine os NAs deste data frame.
df3215 <- df329[complete.cases(df329),]
df3215

##3.2.16. Crie uma nova coluna neste data frame, com valores numéricos (quaisquer)
df329$nova <- c(runif(1:7), rep(NA,3))
df3215$nova <- 1:7
df329                
df3215

##3.2.17. Crie mais um componente na lista anterior, que será também uma lista com dois componentes:
## A com os valores 1:5, e
## B com as letras de “a” a “f”
lista324
lista324[[7]] <- list(
  A = 1:5,
  B = letters[1:6]
)


##3.2.18. Acesse o número 4 de A
lista324$l1$A[4]

##3.2.19. Acesse a letra “c” de B
lista324$l1$B[3]

##======================================================================
## Resolução dos exercícios
## Módulo 3
## Exercício 3
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## 3.3.1. Crie um vetor (x) com os valores 3, 8, 10, 4, 9, 7, 1, 9, 2, 4.
x331 <- c(3, 8, 10, 4, 9, 7, 1, 9, 2, 4)
x331

## 3.3.2. Selecione os elementos maiores ou iguais a 5
x331[x331 >= 5]

## 3.3.3. Selecione todos os elementos menos o 4
x331[x331 != 4]

## 3.3.4. Selecione os elementos maiores que 4 e menores que 8
x331[x331 > 4 & x331 < 8]

## 3.3.5. Crie um vetor (a) com as letras de A até J
a335 <- LETTERS[1:10]

## 3.3.6. Selecione os elementos de x onde a for igual a “F”
x331[a335 == "F"]

## 3.3.7. Selecione os elementos de x onde a for igual a “B”, “D”, e “H”
x331[a335 %in% c("B", "D", "H")]

## 3.3.8. Qual a posição do número 10 em x?
which(x331 == 10)

## 3.3.9. Quais as posições dos valores maiores ou iguais a 8 e menores ou iguais a 10 em x?
which(x331 >= 8 & x331 <= 10)

## 3.3.10. Quais as posições das letras “A”, “B”, “D” em a?
which(a335 %in% c("A", "B", "D"))  

##======================================================================
## Resolução dos exercícios
## Módulo 3
## Exercício 4
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------

## 3.4.1. Você observou 42 processos em SC, 34 no PR, 59 no RN, e 18 no AM.
## Crie um data frame para armazenar estas informações (número de processos observados e estado).
dados <- data.frame(processos = c(42, 34, 53, 18),
                    estado = c("SC", "PR", "RN", "AM"))
dados


## 3.4.2. Com o data frame criado no exercício anterior,
## mostre qual o estado onde foram observados menos de 30 processos (usando seleção condicional!).
dados[dados$processos<30, "estado"]
dados$estado[dados$processos < 30]

## 3.4.3. Crie uma nova coluna (região) neste data frame
## indicando a qual região do país pertence cada estado.
dados$regiao <- c("Sul", "Sul", "Nordeste", "Norte")
dados
## 3.4.4. Você está interessado em saber em qual dos estados da região sul
## o número de processos observados foi maior do que 40.
## Usando a seleção condicional, mostre essa informação na tela.
dados$estado[dados$regiao == "Sul" & dados$processos > 40]

## 3.4.5. Qual região do país possui mais de 50 processos observados?
dados$regiao[dados$processos > 50]

