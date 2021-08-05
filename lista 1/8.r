# a)

nrows <- 3
ncols <- 5
matriz.normal = matrix(rnorm(nrows*ncols,mean=10,sd=3.6), nrow=nrows, ncol=ncols)
print(matriz.normal)

# b)
print(matriz.normal[2,])
print(matriz.normal[3,])

# c)
print(dim(matriz.normal))

# d)
print(sum(matriz.normal))

# e)
print(matriz.normal %*% t(matriz.normal))

# f)
print(sum(matriz.normal[1,]))

# g)
dataframe.linha <- data.frame(media=rowMeans(matriz.normal), variancia=apply(matriz.normal, 1, var))
print(dataframe.linha)

dataframe.coluna <- data.frame(media=colMeans(matriz.normal), variancia=apply(matriz.normal, 2, var))
print(dataframe.coluna)
