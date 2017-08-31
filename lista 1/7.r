desvio.padrao <- function(values) {
  N = length(values)
  valuesMean = mean(values)
  return(sqrt((1/(N-1))*sum((values-valuesMean)^2)))
}

# Test:

months <- c("Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez")
values <- c(8839, 9159, 9476, 9736, 10249, 10664, 11057, 11569, 11969, 12310, 12672, 13002)
eletricidade <- data.frame(months, values)
eletricidade.consumo <- diff(eletricidade$values)

eletricidade.desviopadrao <- sd(eletricidade.consumo)
expected <- eletricidade.desviopadrao
actual <- desvio.padrao(eletricidade.consumo)
print(c(expected, " must be equal to ", actual))
print(c("Result: ", expected == actual))
