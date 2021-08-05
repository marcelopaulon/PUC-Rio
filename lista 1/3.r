fibonacci <- function(n) {
  result <- numeric(n)
  
  for(i in 0:n-1) {
    if(i == 0)
      result[i+1] <- 0
    else if(i == 1)
      result[i+1] <- 1
    else
      result[i+1] <- result[i-1] + result[i]
  }
  
  return(result)
}

# Tests:
all(fibonacci(1) == c(0)) # TRUE
all(fibonacci(2) == c(0,1)) # TRUE
all(fibonacci(3) == c(0,1,1)) # TRUE
all(fibonacci(4) == c(0,1,1,2)) # TRUE
all(fibonacci(5) == c(0,1,1,2,3)) # TRUE
all(fibonacci(6) == c(0,1,1,2,3,5)) # TRUE
all(fibonacci(7) == c(0,1,1,2,3,5,8)) # TRUE
