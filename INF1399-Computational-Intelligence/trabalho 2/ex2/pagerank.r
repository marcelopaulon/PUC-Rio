library("igraph")

links <- read.csv("all_outlinks.csv", skip = 1)
links <- subset(links, Type=="AHREF")
links <- subset(links, Follow=="true")
links <- subset(links, select=c(Source,Destination))

g <- graph.data.frame(links)
pr <- page.rank(g, algo = "prpack", vids = V(g), directed = TRUE, damping = 0.85)

values <- data.frame(pr$vector)
values$names <- rownames(values)

row.names(values) <- NULL
values <- values[c(2,1)]

names(values)[1] <- "url"
names(values)[2] <- "pr"

values <- values[grepl("http?:\\/\\/(.*\\.)?puc-rio\\.br*", values$url),] # Domain filter.

write.csv(values, file = "output-pagerank.csv") # Output file.