
links <- read.csv("all_inlinks.csv", header = T, sep=";")
links <- subset(links, Type=="AHREF")

write.csv(links, file = "all_inlinks_AHREF.csv") # Output file.
