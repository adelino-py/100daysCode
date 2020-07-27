# http://rstudio-pubs-static.s3.amazonaws.com/478659_26b84af940d04ea3b4f564f47e47502e.html

library(readr)

# Column names
properties <- c("area", "temp", "size", "storage", "method", "texture", "flavor", "moistness")
potatoes <- read_tsv("http://s3.amazonaws.com/assets.datacamp.com/production/course_1477/datasets/potatoes.txt", col_names= properties)
print (head(potatoes))