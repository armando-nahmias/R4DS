##======================================================================
## Resolução das Atividades
## Módulo 4
## Atividade
## Questão 1
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## Responda as questões abaixo sobre indexação e seleção condicional.
## Escolha uma ou mais:

#4.1.a. Considere que x é uma lista com três elementos. O resultado de x[c(1, 3)] será também uma lista.
x <- runif(3)

y <- x[c(1, 3)]
str(x)

#4.1.b. Se m é uma matriz, então m <- 0 fará com que todos os elementos da matriz sejam iguais a zero.
matriz4b <- matrix(c(4, 10, 9, 2, 16, 5, 9, 0, 2, 11, 5, NA), nrow = 4)

matriz4b <- 0

#4.1.c. Se x <- c("y", "u"), então letters[x] retorna "y" "u".
x <- c("y", "u")
x
letters[x]

#4.1.d. Na indexação de um vetor, se o índice utilizado for um número não inteiro,
## a seleção dos elementos não poderá ser realizada
vetor4d = 1:10
vetor4d[sqrt(10)]


#4.e. Ao indexar um data frame com [ usando o argumento drop = FALSE,
## a classe do objeto resultante será um data frame.
?data.frame                               


##======================================================================
## Resolução das Atividades
## Módulo 4
## Atividade
## Questão 2
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

#4.2. Questão do tipo cloze (respostas numéricas ou textuais):
##  Os valores entre parênteses no início das questões (quando houver)
## indicam o número de casas decimais e a tolerância considerada, respectivamente.
## Por exemplo: (3, 0.01) significa que a sua resposta numérica deve ter 3 casas decimais
## e a tolerância considerada é de ±0.01

## Em questões que envolvem contas com arredondamentos,
## arredonde o resultado final para o número de casas decimais especificado
## (ex.: round(<resposta final>, 3)).
## Use vírgula como separador de decimal.
## Por exemplo, se a resposta for 3.142, digite 3,142
## Se a resposta for um caracter (string),
## digite apenas o nome, da maneira retornada pelo R, mas sem as aspas.
## Por exemplo, se a resposta for "Tony Dog", digite Tony Dog

## Carregue o conjunto de dados islands que já está disponível no R, com data(islands).
## Veja ?islands para entender o contexto e responda as perguntas abaixo.
## Dica: Note que esse conjunto de dados é um vetor do tipo numérico.
islands
?islands

## Carregue os dados com data(islands)
str(islands)
islands

## Veja do que se trata com
?islands

## Verifique a estrutura com
str(islands)


##4.2.a. Qual é o nome da massa de terra que possui 23 mil milhas quadradas?
names(islands[islands == 23])

##4.2.b. Quantas mil milhas quadradas possui a massa de terra South America?
islands[names(islands) == "South America"]

##4.2.c. Quantas massas de terra possuem áreas maiores do que 212 mil milhas quadradas?
length(islands[islands > 212])


##4.2.d. Quantas massas de terra possuem áreas menores ou iguais à 17 mil milhas quadradas?
length(islands[islands<=17])


##======================================================================
## Resolução das Atividades
## Módulo 4
## Atividade
## Questão 3
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

## Questão do tipo cloze (respostas numéricas ou textuais):
## Os valores entre parênteses no início das questões (quando houver)
## indicam o número de casas decimais e a tolerância considerada, respectivamente.
## Por exemplo: (3, 0.01) significa que a sua resposta numérica deve ter 3 casas decimais
## e a tolerância considerada é de ±0.01

## Em questões que envolvem contas com arredondamentos,
## arredonde o resultado final para o número de casas decimais especificado
## (ex.: round(<resposta final>, 3)).
## Use vírgula como separador de decimal. Por exemplo, se a resposta for 3.142, digite 3,142
## Se a resposta for um caracter (string), digite apenas o nome,
## da maneira retornada pelo R, mas sem as aspas.
##  Por exemplo, se a resposta for "Tony Dog", digite Tony Dog
## O arquivo de dados aval_carros_nota.txt contém a avaliação dos donos de diversos modelos de carro,
## de acordo com alguns itens (como estilo, acabamento, etc).
## Esse arquivo está disponível em http://www.leg.ufpr.br/~fernandomayer/data/aval_carros_nota.txt.
## Faça a importação desses dados como mostrado abaixo e responda as perguntas.

url <- "http://www.leg.ufpr.br/~fernandomayer/data/aval_carros_nota.txt"
da <- read.table(url, header = TRUE, sep = "\t")
str(da)
da

##4.2.d. (0, 0) Quantos modelos de carro estão presentes nessa base de dados?
length(unique(da$carro))

##4.2.d.Qual é o carro que ocorre com maior frequência? (Dica: use a função which.max())
table(da$carro)[which.max(table(da$carro))]


##4.2.d.Qual é a média geral para o carro hb20?
round(mean(da$nota[da$carro == "hb20"]),3)
?round

##4.2.d. (3, 0.01) Qual é a média do item Posição de dirigir para o carro hb20?
round(mean(da$nota[da$item == "Posição de dirigir" & da$carro == "hb20"]),3)


##4.2.d. (3, 0.01) Qual é a média geral que o dono 36 deu para o carro strada?
round(mean(da$nota[da$dono == 36 & da$carro == "strada"]),3)

##4.2.d. (0, 0) Qual é a nota que o dono 197 do carro celta deu para o item Freios?
da$nota[da$dono == 197 & da$carro == "celta" & da$item == "Freios"]

