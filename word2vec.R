#best for multi-session work as there is a save function. Exploration functions found here: https://www.rdocumentation.org/packages/word2vec/versions/0.3.4

install.packages("word2vec")
library(word2vec)
#set.seed(123456789)

library(Sys)
user <- Sys.getenv("USER")
input_loc <- "/farmshare/learning/data/emerson/"
files <- dir(input_loc, full.names = TRUE)
text <- c()
for (f in files) {
  text <- c(text, paste(readLines(f), collapse = "\n"))
}
#create model, type can be cbow or skip-gram, dim is number of coordinates, iterations is number of trainings
model <- word2vec(x = text, type = "skip-gram", dim = 15, iter = 20) 
embedding <- as.matrix(model)
write.word2vec(model, "/scratch/user/outputs/mymodel.bin")
#model <- read.word2vec("/scratch/user/outputs/mymodel.bin")
