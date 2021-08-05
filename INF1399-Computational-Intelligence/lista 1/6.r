# a)
months <- c("Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez")
values <- c(8839, 9159, 9476, 9736, 10249, 10664, 11057, 11569, 11969, 12310, 12672, 13002)
eletricidade <- data.frame(months, values)
print(eletricidade)

# b)
eletricidade.consumo <- diff(eletricidade$values)
print(eletricidade.consumo)

# c)
eletricidade.range <- c(min(eletricidade.consumo),max(eletricidade.consumo))
print(eletricidade.range)

# d)
eletricidade.media <- mean(eletricidade.consumo)
print(eletricidade.media)

eletricidade.mediana <- median(eletricidade.consumo)
print(eletricidade.mediana)

eletricidade.variancia <- var(eletricidade.consumo)
print(eletricidade.variancia)

eletricidade.desviopadrao <- sd(eletricidade.consumo)
print(eletricidade.desviopadrao)
