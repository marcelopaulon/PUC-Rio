# a)

sq1 <- seq(0, 100, length=20)
print(sq1)

# b)

sq2 <- sq1[sq1 != sq1[5] & sq1 != sq1[10]]
print(sq2)

# c)

sq3 <- sq1[c(seq(1,length(sq1), 2))]
print(sq3)

# d)
sq4 <- sq1
evenSeq <- seq(2,length(sq4), 2)
sq4[c(evenSeq)] <- evenSeq
print(sq4)
