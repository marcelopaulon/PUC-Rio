dfPopulacaoEconomicamenteAtiva <- read.table(file="populacaoeconomicamenteativa.csv",header=TRUE,sep=";")
dfPopulacaoEconomicamenteAtiva

# a)
print(dim(dfPopulacaoEconomicamenteAtiva))
print(colnames(dfPopulacaoEconomicamenteAtiva))

# b)
allowedStates = c("RJ", "SP", "MG", "ES")
newDf <- dfPopulacaoEconomicamenteAtiva[dfPopulacaoEconomicamenteAtiva$Ano > 2003 & (dfPopulacaoEconomicamenteAtiva$Estado %in% allowedStates),]
newDf

# c)
summaryDf = aggregate(newDf$Populacao, by=list(Ano=newDf$Ano), FUN=sum)
summaryDf

# d)
barplot(summaryDf$x, names.arg=summaryDf$Ano, main="Sumário de dados anual", xlab="Ano", ylab="População Economicamente Ativa", col = c("blue"))
