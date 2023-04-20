#Maria Fernanda Prado Leão Silva
#linkedin.com/in/mafe-silva-08a387234
#Aula ministrada pelo professor Wandré Nunes de Pinho Veloso
#linkedin.com/in/wandreveloso


a <- 1
class(a)
b <- 1
class(b)

# ls: funcionamento do código(quais variáveis eu declarei)
ls()
ls

paises <- c('Brasil', 'EUA')
class(paises)
class('paises')
rank <- c(1,3)
class(rank)
class('rank')
names(rank) <- paises
rank


# ls = lista de variaveis
# help = ?

# log

log(exp(1))
log(2, base=3) 
log(2,3)


#'^'(x,y) [exponenciação]
#'+'(x,y) [soma]

#descobrir valor de pi
pi
?pi

#instalando bibliotecas

installed.packages()
data()
CO2

#Como calcular a soma dos 10 primeiros numeros inteiros
10*(10+1)/2

#25 primeitos
n <- 25

#100 primeiros
n*(n+1)/2


n <- 1000
x <- seq(1,n)
'+'(x)


pop <- murders$population
length(pop)
class(pop)
class(murders$state)
class(murders$region)


installed.packages("dslabs")
installed.packages("murders")

#dataframes
library(dslabs)
data(murders)
class(murders)
str(murders)
head(murders)

#obs = objetos
#factor= transformar qualitativo em quantitativo (texto em numero)

murders$population
names(murders)
levels(murders$region)
murders$region = murders[["region"]]

#class: saber o tipo
class(murders[["region"]])
class(murders["region"])

#para tabular os dados
x <- c("a", "a", "b", "b", "c")
table(x)

#quais são as duas respostas para a equação
# 2x^2-x-4=0

a <- 2; b <- -1; c <- -4

(-b + sqrt(b^2 - 4*a*c))/(2*a)
(-b - sqrt(b^2 - 4*a*c))/(2*a)

#str= estrutura

library(dslabs)
str(movielens)
ls(movielens)
data('movielens')
head(movielens)

#criando vetor

firstvector <- 1:5
firstvector
secondvector <- 1:100
secondvector

#matrizes

e <- matrix(ncol = 2, nrow = 2, data = 1:4)
e
e[2,1]
e[2, ]
e[ ,2]
e[ ,1:2]
e[1:2, 1]
as.data.frame(e)

i <- list(2, 3, 'c', 'd', FALSE, 2+3i, 4+2i)
class(i)
class(i[1])
class(i[2])

#ordenação de dados

library(dslabs)
data(murders)
sort(murders$total) #ordem crescente de dados
x <- c(31, 4, 15, 92, 65)
class(x)
x
sort(x)
index<-order(x) #pega os elementos na ordem(indice)
index
x[index] #organizar o x conforme o "order"
order(x)
x
murders$state[1:10]
murders$abb[1:10]
index <- order(murders$total)
murders$abb[index]
murders$state[index]
max (murders$total)
i_max <- which.max(murders$total)
i_max
murders$abb[i_max]

mim (murders$total)
i_min <- which.min(murders$total)
i_min
murders$abb[i_min]
murders$state[i_min]

x
rank(x) #coloca indice nos elementos


#sort: ordem crescente
#order: indice dos elementos 
#rank: fala qual é a ordem dos elementos

#order responde a pergunta: "no vetor original, qual a posição do 1° elemento após a ordenação?"
#rank mostra qual a posição dos elementos do vetor original... "Tipo, o 31 é o 3° menor"

#exercício: qual o tamanho da população e armazene na variavel pop
pop <- murders$population
order(pop)
pop[51]


#exercício 

temp<-c(35, 88, 42, 84, 81, 30)
city<-c("Beijing", "Lagos", "Paris", "Rio de janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
states <- murders$state
ranks <- rank(murders$population)
my_df <- data.frame(states = states, ranks = ranks)

#exercicio 

states <- murders$state
states
rank <- rank(murders$population)
rank


#PRATICA CONJUNTA

library(dslabs)
data(na_example)
str(na_example)
mean(na_example)
ind <- is.na(na_example)
sum(ind)
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]
x[ind]

# ! = NÃO

library(dslabs)
data(na_example)
ind <- is.na(na_example)
mean(na_example)
#para calcular média de algo que não são NA
mean(na_example[!ind])
mean(na_example[!is.na(na_example)])

# which.max = índice do maior elemento
murders$state[which.max(murders$population)]

#quantos habitantes tem esse maior estado
max(murders$population)

alturas <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)
mean(alturas)

#converter polegadas para centímetros multiplica por 2.54
alturas * 2.54

# qual a distancia de cada um até a media?
alturas - 69

#Como calcular o número de assassinatos per capita?
murder_rate <- murders$total / murders$population * 100000

#qual o estado realmente mais perigoso?
murders$state[order(murder_rate, decreasing=TRUE)]

city <- c('Pequim', 'Lagos', 'Paris', 'Rio de Janeiro', 'San Juan', 'Toronto')
temp <- c(35, 88, 42, 84, 81, 30)

#Converta as temperaturas para Celsius, sobrescrevendo os valores originais do vetor temp

c = 5/9*(temp-32)

temp<-(5/9*(temp-32))
temp

#Defina um objeto x com os números de 1 até 100
x <- seq(1,100)
x

#Realize a soma da seguinte sequência:

sum(1/x^2)


murder_rate <- sum(murders$total / murders$population * 100000)
murder_rate

no_west <- murders$state
no_west

############################################################################

installed.packages("dslabs")
installed.packages("murders")
library(dslabs)
data(murders)
muder_rate <- murders$total/murders$population*100000
index <- murder_rate < 0.71
class(index)
murders$state[index]
sum(index)

!TRUE

#qual regiao esta no oeste (west) e tenha murder_rate menor ou igual a 1
west <- murders$region == "West"
class(west)
west


safe <- murder_rate <=1
safe

index <- safe & west
murders$state[index]

#funções  lógicas novas

# which = quais indices do vetor sao TRUE / ele trabalha com indices no vetor

x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)
index <- which(murders$state == "Massachusetts")
index

#match = compara um valor a outro / compara dois vetores

index <- match(c("New York", "Florida", "Texas"),murders$state)
index
murders$state[index]

# %in% = se cada um dos elementos está no outro valor

x <- c('a', 'b', 'c', 'd', 'e')
y <- c('a', 'd', 'f')
y %in% x
# quais de y está em x

c('Boston', 'Dakota', 'Washington') %in% murders$state


murder_rate <- murders$total/murders$population*100000
murder_rate
low <- murder_rate < 1
low
which(low) 
murders$state[low]

Northeast <- murders$region == "Northeast"
Northeast
index <- Northeast & low
murders$state[index]

#quantos estão abaixo da média
mean (murder_rate)
sum(murder_rate<mean (murder_rate))

#comparar lista de abreviações com o dataset murders
abbs <- c('AK', 'MI', 'IA')
index <- match(c(abbs),murders$abb)
index
murders$state[index]

#função %in% para verificar quais das abreviações são válidas de estados
abbs <- c('MA', 'ME', 'MI', 'MO', 'MU')
abbs %in% murders$abb

#para saber qual não pertence 
ind <- which(!abbs%in%murders$abb)
abbs[ind]

#biblioteca para trabalhar com dataframes
install.packages("dplyr")
library(dplyr)

data("murders")
murders <- mutate(murders, rate = total/ population*100000)
head(murders)

#filter = quais linhas eu quero pegar 
filter(murders, rate<= 0.71)

#select = seleciona as colunas que voce quer e cria uma nova tabela
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)
murders %>% select (state, region, rate) %>% filter (rate<= 0.71)

#função pipe %>% = pega o dadp. seleciona e filtra
murders %>% select(state, region, rate) %>% filter (rate <= 0.71)

#Criando data frames

grades <- data.frame (names = c("Jao", "Jes", "Jo", "Ju"),
                      exam_1 = c(95L, 80L, 90L, 85L),
                      exam_2 = c(90L, 85L, 85L, 90L))

class(grades)
class(grades$exam)
class(grades$exam_1)


#EXERCICIO

library(dslabs)
data("murders")
library(dplyr)

murders <- mutate(murders, rate = total/population * 100000)

x <- c(88, 100, 83, 92, 94)
rank(x)
rank(-x)

murder_rate <- murders$total/murders$population*100000
murder_rate
murders <- mutate(murders, rank = rank(-murder_rate))
murders

new_table2 <- select(murders, state, abb, rate)
new_table2

filter(murders, rank <=5)

no_south <- filter (murders, region != "South")
nrow(no_south)

# | = ou

murders_nw <- filter(murders, region == "Northeast" | region == "West")
nrow(murders_nw)

#ou

murders_nw <- filter(murders, region %in% c("Northeast", "West"))
nrow(murders_nw)


murders_nw <- filter(murders, region == "Northeast" | region == "West", rate < 1)
nrow(murders_nw)

my_states <- select(murders_nw, state, rate, rank)
my_states

#ou

murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))
my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)
select(my_states, state, rate, rank)

mutate(murders, rate = total / population * 100000, rank = (-rate)) %>% select(state, rate, rank)


data("murders")
select(my_states, state, rate, rank)
----------------------------------------------------

#Aula de Gráficos
x <- murders$population /10^6
y <- murders$total
plot(x, y)

head(murders)
murders$population

murders <- mutate(murders, rate = total/ population*100000)
hist(murders$rate)
boxplot(rate~region, data = murders)
boxplot(rate~abb, data = murders)

library(dslabs)
data(murders)

population_in_millions <- murders$population*log10(x)
total_gun_murders <- murders$total*log10(x)
plot(population_in_log, total_gun_murders)


log10_population<- log10(murders$population)
log10_total_gun_murders <- log10(murders$total)
plot(log10_population, log10_total_gun_murders)

#Exercício:

#Calcule a população em milhões e salve-a no objeto population_in_milions
#Crie um histograma das populações do estado usando a função hist()

population_in_millions <- murders$population/10^6
hist(population_in_millions)

##### !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
boxplot(population~region, data = murders)

#sumarizando dados
murders <- mutate(murders, rate = total / population * 10^5)
s <- murders %>% filter(region == "West") %>%
  summarize(minimum = min(rate), median = median(rate), maximum = max(rate))

s$median
s$maximum

#como calcular a media da taxa de assassinatos?
us_murder_rate <- murders %>%
  summarize(rate=sum(total)/sum(population)*10^5)


######################################

install.packages("dplyr")
library(dplyr)
library(dslabs)
data("murders")
population_in_millions <- murders$population /10^6
total_gun_murders <- murders$total
plot(log(population_in_millions), log(total_gun_murders))
plot(log10(population_in_millions), log10(total_gun_murders))

murders %>% filter(region =="West") %>%
  summarize(range = quantile(rate, c(0, 0.5, 1)))

murders <- mutate(murders, rate = murders$total/murders$population)
min(murders$rate)


murders %>% filter(region == "West") %>% summarize(min(rate))


#ordenação de dados com arrange

murders %>% arrange(population) %>% head()

murders %>% arrange(rate) %>% head()

murders %>% arrange(desc(rate)) %>% head()

murders %>% arrange (region, rate) %>% head()

install.packages("data.table")
library(data.table)

murders <- setDT(murders)

select(murders, state, region)

murders[, c("state", "region")] |> head()
murders[, .(state, region)] |> head()

murders <- mutate(murders, rate = total / population * 10^5)

murders[, rate := total / population * 100000]
murders[, ":=" (rate =total / population * 100000, rank = rank(population))]

# := é usado para atualização por referência, sem criar nova variável(como um ponteiro) 

library(dslabs)
data(heights)
options(digits = 3)


averate_height<-mean(heights$height)
averate_height


ind<- filter (heights, sex != "Male")
ind

filter(ind, height >= averate_height)

mean(heights$sex == "Female")

x <- max(heights$height)
x

y <- seq(50, 83, 2)
y


averate_height<-mean(heights$height)
averate_height              
              
data(olive)
head(olive)

palmitic_acid <- olive$palmitic
palmitoleic_acid <- olive$palmitoleic
plot(palmitic_acid, palmitoleic_acid)


hist(olive$eicosenoic)

boxplot(palmitic ~ region, data = olive)

################################################


#projeto estrutura de dados

data <- data.frame(CCARDBALANCE)
View(data)

filter <- select(data, Renda, Rating, Limite, Gasto.Mensal)
filter

bom <- filter(data, Rating >= 352, Limite >= 5353)
bom

otimo <- filter(data, Rating >= 683, Limite >= 5353)
otimo

data %>% arrange (Rating >= 352, Limite >= 5353)

ruim <- filter(data, Rating <= 352)
ruim  
  
pessimo <- filter (data, Rating <= 219)
pessimo  

?factor
?as.numeric

x <- data$Estudante <- as.factor(data$Estudante)
x  
  

as.numeric(x) 

hist(as.numeric(x))
  
  
mean(bom$Educacao)
hist(otimo$Cartoes)  
  
#################################################################################

# aula de R - graficos

install.packages("tidyverse")
library(tidyverse)
data(mpg)
mpg
str(mpg)
?mpg

#ggplot = área do gráfico
#geom point = camadas de pontos geográficos
#aes = parte estética do gráfico
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)

ggplot(data=mpg) + geom_point(mapping = aes(x = class, y = drv))

# quais variaveis são categóricas?

ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class), size = 3)

ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = 'red')


#wrap = 1 grafico para cada variavel
ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~class, nrow = 2)

ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(drv ~ cyl)

######################################################################################################################################


































