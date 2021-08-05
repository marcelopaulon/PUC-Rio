library("RSNNS")
library("ggplot2")

gdpdataOriginal <- read.table("PIB.csv", header=T, sep=';', dec=",", row.names=NULL)

normalize <- function(x) { normalizeData(x, type = "norm") }
unnormalize <- function(x, params) { denormalizeData(x, params) }

Valor <- normalize(gdpdataOriginal)
gdpdata <- data.frame(Valor)

getMovingWindow <- function(n) {
  c(rep(NA,n), head(gdpdata$Valor,-n))
}

for(i in 1:6) {
  gdpdata[, paste('pd',i, sep='')] <- getMovingWindow(i)
}

gdpdata <- gdpdata[7:nrow(gdpdata),]

plot(gdpdata$Valor)

data.test <- gdpdata[1:24,]
testParams <- getNormParameters(normalize(gdpdataOriginal[1:24,]))
data.train <- gdpdata[25:nrow(gdpdata),]
trainParams <- getNormParameters(normalize(gdpdataOriginal[25:nrow(gdpdata),]))

result <- array(NA, dim=c(120,4))

run <- function(nSlidingWindow, nHiddenLayers) {
  set.seed(0)
  trainDf <- data.frame(data.train$pd1)
  testDf <- data.frame(data.test$pd1)
  
  for(i in 2:nSlidingWindow) {
    pdN <- paste('pd',i, sep='')
    trainDf[, pdN] <- data.train[, pdN]
    testDf[, pdN] <- data.test[, pdN]
  }
  
  fit <- elman( trainDf, data.train$Valor, size=c(nHiddenLayers) )
  
  testError <- unnormalize(data.test$Valor, testParams) - unnormalize(predict(fit, testDf), testParams)
  testRMSE <- sqrt(mean(testError^2))
  trainError <- unnormalize(data.train$Valor, trainParams) - unnormalize(predict(fit, trainDf), trainParams)
  trainRMSE <- sqrt(mean(trainError^2))
  
  print(paste("N=", nSlidingWindow, " HL=", nHiddenLayers, ": Training = ", toString(trainRMSE), "; Test = ", toString(testRMSE)), sep="")
  return(c(nSlidingWindow, nHiddenLayers, testRMSE, trainRMSE))
}

count = 1
for(i in 1:30) {
  for(j in 1:4) {
    execution <- run(j+2, i)
    result[count,] <- as.matrix(execution)
    print(result[count,])
    count <- count + 1
  }
}

ordered <- result[order(result[,3],result[,4],decreasing=F),]
top5 <- ordered[1:5,]

dataParams <- getNormParameters(normalize(gdpdataOriginal))

for(i in 5:1) {
  nSlidingWindow <- top5[i,1]
  nHiddenLayers <- top5[i,2]
  execution <- run(nSlidingWindow, nHiddenLayers)
  execution <- execution[-seq(1,4)]
  
  df <- data.frame(gdpdata$pd1)
  
  for(j in 2:nSlidingWindow) {
    pdN <- paste('pd',j, sep='')
    df[, pdN] <- gdpdata[, pdN]
  }
  
  fit <- elman( df, gdpdata$Valor, size=c(nHiddenLayers) )
  predicted <- unnormalize(predict(fit, df), dataParams)

  df1<-data.frame(x=1:76,y=gdpdataOriginal$Valor[7:82])
  df2<-data.frame(x=1:76,y=predicted)
  
  print(i)
  
  abc <- ggplot(df1,aes(x,y))+geom_line(aes(color="Original"))+
    geom_line(data=df2,aes(color=paste("Predicted #",i,sep="")))+
    labs(color="Legend text")
  
  print(abc)
  
  readline(prompt="Press [enter] to continue")
}
