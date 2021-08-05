# a)
odd50 <- seq(1, 50, 2)
print("Odd numbers between 1 and 49: ")
print(odd50)

# b)
odd50Sum <- sum(odd50[1:length(odd50)])
print(sprintf("Sum: %d", odd50Sum))

# c)
mult3 <- odd50[odd50 %% 3 == 0]
print(mult3)

# d)
mult3div3 <- mult3 / 3
print(mult3div3)
