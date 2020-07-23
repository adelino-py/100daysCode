# Import swimming_pools.csv: pools
# http://www.estatisticacomr.uff.br/?p=176

pool <- read.csv ("swimming_pools.csv", stringsAsfactors = TRUE)
#print (pool)

#getwd() retorna em que pasta do seu computador está “trabalhando”.
#dir() in the console to list the files in your working 

## exotic file format read.table any yabular file as a data frame
# header - primeira linha é nome de variaveis

# or
#hotdogs <- read.table
# read.table header é false

# txt read.delim
hotdogs <- read.delim("http://s3.amazonaws.com/assets.datacamp.com/production/course_1477/datasets/hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))
print (str(hotdogs))

# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]

# Select the observation with the most sodium: tom
tom <- hotdogs[which.max(hotdogs$sodium), ]

hotdogs2 <- read.delim("http://s3.amazonaws.com/assets.datacamp.com/production/course_1477/datasets/hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"), colClasses = c("factor", "NULL","numeric"))
print (str(hotdogs2))