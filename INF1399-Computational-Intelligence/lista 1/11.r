# a)
dfLaranja <- read.table(file="laranja.csv",header=TRUE,sep=";")
dfLaranja$IndiceAcidez <- as.numeric(gsub(",", ".", dfLaranja$IndiceAcidez)) # IndiceAcidez is using , as decimal separator
dfLaranja$Diametro <- as.numeric(gsub(",", ".", dfLaranja$Diametro)) # Diametro is also using , as decimal separator

print(dfLaranja)

# b)
define.categoria <- function(element) {
  i <- element$IndiceAcidez
  
  ifelse(i<=0.5, "A",
  ifelse(i>0.5 & i<=0.7, "B",
  ifelse(i>0.7 & i<=0.9, "C",
  ifelse(i>0.9 & i<=1.1, "D",
  ifelse(i>1.1 & i<=1.3, "E",
  ifelse(i>1.3 & i<=1.5, "F",
  ifelse(i>1.5 & i<=1.7, "G",
  ifelse(i>1.7, "H", "?"))))))))
}

dfLaranja$Categoria <- define.categoria(dfLaranja)
dfLaranja

# c)
calcula.volume <- function(element) {
  radius <- (element$Diametro / 2)
  return((4*pi*(radius^3))/3)
}

dfLaranja$Volume <- calcula.volume(dfLaranja)
dfLaranja

# d)
classifica.destino <- function(element) {
  ifelse(element$Categoria == "A", "descarte",
  ifelse(element$Peso / element$Volume > 0.7, "suco", "venda"))
}

dfLaranja$Destino <- classifica.destino(dfLaranja)
dfLaranja

# e)
summaryDf <- aggregate(dfLaranja$Destino, by=list(Destino=dfLaranja$Destino), FUN=length)
summaryDf

pie(summaryDf$x, labels = summaryDf$Destino)

# f)
hist(dfLaranja$IndiceAcidez, main="Histograma do Índice de Acidez", xlab="Índice de Acidez", ylab="Frequência", col="green")

# g)
# Taken from: https://stackoverflow.com/questions/17162013/add-a-normal-distribution-line-in-histogram
hist(dfLaranja$IndiceAcidez, probability = TRUE, main="Histograma do Índice de Acidez", xlab="Índice de Acidez", ylab="Densidade de Probabilidade", col="green")
x<-seq(0,100,0.01) # ?
curve(dnorm(x, mean=mean(dfLaranja$IndiceAcidez), sd=sd(dfLaranja$IndiceAcidez)), add=TRUE)
