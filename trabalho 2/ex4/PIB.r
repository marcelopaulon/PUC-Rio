library("forecast")
library("ggplot2")

gdpdataOriginal <- read.table("PIB.csv", header=T, sep=';', dec=",", row.names=NULL)

df1 <- data.frame(x=1:82,y=gdpdataOriginal$Valor[1:82])

ggplot(df1,aes(x,y))+geom_line(aes(color="Original"))+
  labs(color="Legend text")

count_ma = ts(na.omit(gdpdataOriginal$Valor), frequency=30)
decomp = stl(count_ma, s.window="periodic")
deseasonal_cnt <- seasadj(decomp)
plot(decomp)

fit <- auto.arima(gdpdataOriginal$Valor[1:77])

fit

tsdisplay(residuals(fit), lag.max=45, main='(1,1,1) Model Residuals')

fcast65 <- forecast(fit, h=5, level = 0.65)

plot(fcast65)

fcast80 <- forecast(fit, h=5, level = 0.8)

plot(fcast80)
lines(x = 1:82, y= gdpdataOriginal$Valor[1:82], col="green", lwd=2)

accuracy(fcast65, x = gdpdataOriginal$Valor[78:82])
accuracy(fcast80, x = gdpdataOriginal$Valor[78:82])
