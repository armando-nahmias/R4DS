## Questão do tipo cloze (respostas numéricas ou textuais):
##  Os valores entre parênteses no início das questões (quando houver) indicam o número de casas decimais e a tolerância considerada, respectivamente. Por exemplo: (3, 0.01) significa que a sua resposta numérica deve ter 3 casas decimais e a tolerância considerada é de ±0.01

## Em questões que envolvem contas com arredondamentos, arredonde o resultado final para o número de casas decimais especificado (ex.: round(<resposta final>, 3)).
## Use vírgula como separador de decimal. Por exemplo, se a resposta for 3.142, digite 3,142
## Se a resposta for um caracter (string), digite apenas o nome, da maneira retornada pelo R, mas sem as aspas. Por exemplo, se a resposta for "Tony Dog", digite Tony Dog

## Para esse exercício vamos utilizar o conjunto de dados starwars do pacote dplyr, ele já será carregado com library(dplyr),
## e você pode utilizá-lo a partir disso. Essa base de dados contém informações sobre personagens da série de filmes Star Wars, para informações sobre cada coluna acesse a página de ajuda com ?starwars e com isso, responda as questões sobre o pacote stringr.

library(dplyr)

starwars

## (0, 0) Quantos personagens contém o string ‘brown’ na coluna hair_color e tem mass maior do que 50?
unique(starwars$hair_color)

starwars %>%
  filter(str_detect(hair_color, 'brown'), mass > 50) %>% 
  count()

## (0, 0) Quantos personagens contém o string ‘green’ na coluna skin_color?

sum(str_count(starwars$skin_color, 'green'))


## (0, 0) Quantos personagens começam com vogal?
unique(starwars$name)

sum(str_starts(starwars$name, '^[AEIOU]'))




  Questão do tipo cloze (respostas numéricas ou textuais):
    
    Os valores entre parênteses no início das questões (quando houver) indicam o número de casas decimais e a tolerância considerada, respectivamente. Por exemplo: (3, 0.01) significa que a sua resposta numérica deve ter 3 casas decimais e a tolerância considerada é de ±0.01
  
  Em questões que envolvem contas com arredondamentos, arredonde o resultado final para o número de casas decimais especificado (ex.: round(<resposta final>, 3)).
  Use vírgula como separador de decimal. Por exemplo, se a resposta for 3.142, digite 3,142
  Se a resposta for um caracter (string), digite apenas o nome, da maneira retornada pelo R, mas sem as aspas. Por exemplo, se a resposta for "Tony Dog", digite Tony Dog
  
  Para esse exercício vamos utilizar o conjunto de dados starwars do pacote dplyr, ele já será carregado com library(dplyr), e você pode utilizá-lo a partir disso. Essa base de dados contém informações sobre personagens da série de filmes Star Wars, para informações sobre cada coluna acesse a página de ajuda com ?starwars. Para essa questão, transforme a coluna homeworld em um fator e com isso, responda as questões sobre o pacote forcats.
  
##  (0, 0) Quantos níveis diferentes temos na coluna homeworld
unique(starwars$homeworld)

factor(starwars$homeworld) %>% nlevels()
  
##  Qual o nível da coluna homeworld é o mais frequente?
head(factor(starwars$homeworld) %>% fct_count(sort = TRUE))

  
##  (2, 0.01) Qual a média de height para homeworld sendo ‘Coruscant’?

starwars %>%
  filter(homeworld == 'Coruscant') %>% 
  summarise(med = mean(height))


  Questão do tipo cloze (respostas numéricas ou textuais):
    
    Os valores entre parênteses no início das questões (quando houver) indicam o número de casas decimais e a tolerância considerada, respectivamente. Por exemplo: (3, 0.01) significa que a sua resposta numérica deve ter 3 casas decimais e a tolerância considerada é de ±0.01
  
  Em questões que envolvem contas com arredondamentos, arredonde o resultado final para o número de casas decimais especificado (ex.: round(<resposta final>, 3)).
  Use vírgula como separador de decimal. Por exemplo, se a resposta for 3.142, digite 3,142
  Se a resposta for um caracter (string), digite apenas o nome, da maneira retornada pelo R, mas sem as aspas. Por exemplo, se a resposta for "Tony Dog", digite Tony Dog
  
  Para esse exercício vamos utilizar o conjunto de dados lakers do pacote lubridate, ele já será carregado com library(lubridate), e você pode utilizá-lo a partir disso. Para informações a descrição dessa base acesse a página de ajuda com ?lakers. Para esse exercício, transforme a coluna date para uma coluna de classe date e responda as questões sobre o pacote lubridate.
library(lubridate)
  
  data(lakers)
  

str(lakers)
    
##  (0, 0) Qual a diferença entra a data mais antiga e a mais recente da coluna date (em dias)?
difftime()

difftime(max(ymd(lakers$date)), min(ymd(lakers$date)), units = 'days')
  
##  (0, 0) Qual é a ocorrência do mês de ‘Novembro’ nessa base de dados?
head(lakers$date)

table(month(ymd(lakers$date), label = TRUE))


lakers %>% 
  ymd(date) %>% 
  month(label = TRUE)
  
##  (0, 0) Qual o dia da semana referente a linha 17589? (Dica: Para configurar a função wday corretamente utilize label = FALSE e week_start = 7)

wday(ymd(lakers$date)[17589], label = FALSE, week_start = 7)
  