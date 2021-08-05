library("genalg")

maxWeight <- 20

names <- c("A","B","C","D","E","F","G")
points <- c(10,20,15,2,30,10,30)
weights <- c(1,5,10,1,7,5,1)
items <- data.frame(names, points, weights)

evalFunc <- function(x) {
  weight <- x %*% weights

  if(weight > maxWeight) {
    return(-1)
  }
  else {
    score <- x %*% points
    return(score)
  }
}

result <- rbga.bin(7, popSize = 600, iters = 200, mutationChance = 1/8,
                   evalFunc = evalFunc,
                   showSettings = F,
                   verbose = F)

best <- result$population[which.max(result$evaluations),]
labels <- names[best == 1]
print(paste("Melhor solução encontrada:", paste(labels,collapse = "+"),"score = ", best %*% points, "peso = ", best %*% weights))
