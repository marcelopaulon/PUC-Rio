# a) (Assumindo que são os primeiros 60 números naturais)
array3d = array(data = seq(0,59), dim = c(4,5,3))
print(array3d)

# b)
print(sum(array3d[,4,]))

# c)
print(sum(array3d[1,1,]))

# d)
print(array3d * 2 + 5)
