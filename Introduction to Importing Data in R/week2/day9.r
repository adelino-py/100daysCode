# Import swimming_pools.csv: pools
# http://www.estatisticacomr.uff.br/?p=176

pool <- read.csv ("swimming_pools.csv", stringsAsfactors = TRUE)
#print (pool)

#getwd() retorna em que pasta do seu computador está “trabalhando”.
#dir() in the console to list the files in your working 

## exotic file format read.table any yabular file as a data frame
# header - primeira linha é nome de variaveis
# txt read.delim

hotdogs <- read.delim("http://s3.amazonaws.com/assets.datacamp.com/production/course_1477/datasets/hotdogs.txt", header = FALSE)
str(hotdogs)

# or
#hotdogs <- read.table(path, sep = "\t", col.names = c("type", "calories", "sodium"))



