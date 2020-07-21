# Listas - ultimo modulo
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Create a nameded list
my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)

# or: (named list)
# my_list <- list(your_comp1, your_comp2)
# names(my_list) <- c("name1", "name2")

#create a data set
vector <- my_list$vec
#or
vector <- my_list[["vec"]]
print (vector[2])

#Create a list
# Variables:
movie_title <- "The Departed"
movie_actors <- c("Leonardo DiCaprio", "matt Damon", "Jack Nicholson", "Mark Wahlberg", "Vera Farmiga", "Martin Sheen")
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")
avg_review <- mean(scores)
reviews_df <- data.frame(scores, comments)
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)
print (departed_list)

#the end