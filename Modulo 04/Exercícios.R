##======================================================================
## Resolução dos exercícios
## Módulo 4
## Exercício 1
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## 4.1.1. Usando a função scan() crie objetos para armazenar os seguintes valores:
## 19, 13, 19, 23, 18, 20, 25, 14, 20, 18, 22, 18, 23, 14, 19
a411a <- scan(what = "integer")

## joaquina, armação, praia brava, praia mole, morro das pedras
a411b <- scan(what = "character")

## TRUE, TRUE, FALSE, FALSE, TRUE
a411c <- scan(what = "logical")

## 4.2.1. Baixe os arquivos abaixo e coloque os arquivos em um local apropriado
## (de preferência no mesmo diretório de trabalho que voce definiu no início da sessão),
## faça a importação usando a função read.table(), e confira a estrutura dos dados com str(). 
da421a <- read.table("http://leg.ufpr.br/~fernandomayer/data/BHH2/prb0519.dat", header = TRUE)
str(da421a)
da421b <- read.table("http://leg.ufpr.br/~fernandomayer/data/BHH2/tab0303.dat", header = TRUE)
str(da421b)
da421c <- read.table("http://leg.ufpr.br/~fernandomayer/data/BHH2/tab1208.dat", header = TRUE)
da421c
da421d <- read.table("http://leg.ufpr.br/~fernandomayer/data/BHH2/ReadMe.txt", header = TRUE, skip = 2, dec = ",")
da421d
da421e <- read.table("http://leg.ufpr.br/~fernandomayer/data/montgomery_6-26.csv", header = TRUE, sep = ",")
da421e
da421f <- read.table("http://leg.ufpr.br/~fernandomayer/data/montgomery_14-12.txt", header = TRUE)
da421f
da421g <- read.table("http://leg.ufpr.br/~fernandomayer/data/montgomery_ex6-2.csv", header = TRUE, sep = ",")
da421g
da421h <- read.table("http://www.leg.ufpr.br/~fernandomayer/data/ipea_habitacao.csv", header = TRUE, sep = ",")
da421h
da421i <- read.table("http://www.leg.ufpr.br/~fernandomayer/data/stratford.csv", header = TRUE, sep = "\t")
da421i

##======================================================================
## Resolução dos exercícios
## Módulo 4
## Exercício 4
## Docente: Fernando Mayer
## Discente: Armando Nahmias
##======================================================================

##----------------------------------------------------------------------
## 4.4.1. Considere a tabela abaixo com o resultado de uma pesquisa
## que avaliou o número de fumates e não fumantes por sexo.
## Sexo
## Condição 	Masculino 	Feminino
## Fumante 	49 	54
## 64 	61
## 37 	79
## 52 	64
## 68 	29
## Não fumante 	27 	40
## 58 	39
## 52 	44
## 41 	34
## 30 	44

## 4.4.2. Digite estes dados em uma planilha eletrônica
## em um formato apropriado para um data frame do R, e salve em um arquivo csv.

## 4.4.3. Importe esse arquivo para o R com read.table().
url = "http://www.leg.ufpr.br/~fernandomayer/data/dados_ex4.csv"
df443 <- read.table(url, header = TRUE, sep = ",")
str(df443)


## 4.4.4. Crie uma nova coluna no objeto que contém estes dados,
## sendo a coluna com o número de pessoas multiplicada por 2.
df443$N2 <- df443$Numero * 2
df443

## 4.4.5. Exporte esse novo objeto usando a função write.table().
write.table(df443, "Modulo 04/dados/df443.csv", sep = ",", row.names = FALSE)

## 4.4.6. Tente criar esse mesmo conjunto de dados usando comandos do R
## (ex.: c(), rep(), data.frame(), etc.)
df446 <- data.frame(
  Condicao = rep(c("Fumante", "Nao Fumante"), each = 5, times = 2),
  Sexo = rep(c("Masculino", "Feminino"), each = 10),
  Numero = c(49, 64, 37, 52, 68, 27, 58, 52, 41, 30,
             54, 61, 79, 64, 29, 40, 39, 44, 34, 44)
)

str(df446)
