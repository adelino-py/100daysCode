#day3Code
new_hope <- c(461.0, 314.4)
empire_strikes <- c(290.5, 247.9)
return_jedi <- c(309.3, 165.8)
phantom_menace <- c(474.5, 552.5)
attack_clones <- c(310.7, 338.7)
revenge_sith <- c(380.3, 468.5)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi, phantom_menace, attack_clones, revenge_sith)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow= TRUE, nrow= 6)

#Dando nomes a linhas e colunas
region <- c("US", "non-US")
title <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi", "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith") 

rownames(star_wars_matrix) <- title #rownames(matrix) <- name
colnames(star_wars_matrix) <- region #colnames(matrix) <- name

worldwide_vector <- rowSums(star_wars_matrix) #rowSums som as linhas e cria um novo vetor
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
print (all_wars_matrix)
#my_matrix[1,2] selects the element at the first row and second column.
#my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.

#If you want to select all elements of a row or a column, no number is needed before or after the comma
#my_matrix[,1] selects all elements of the first column.
#my_matrix[1,] selects all elements of the first row.

#Select the non-US revenue for all movies (the entire second column of all_wars_matrix)
non_us_all <- all_wars_matrix[,2]
print (non_us_all)

#Use mean() on non_us_all to calculate the average non-US revenue for all movies
print (mean(non_us_all))

#select the non-US revenue for the first two movies in all_wars_matrix
non_us_some <- all_wars_matrix[1:2, 1]

#Use mean() again to print out the average of the values in non_us_some
print (mean(non_us_some))

#Divide all_wars_matrix by 5
#visitors <- all_wars_matrix/5

#ticket_prices_matrix
tnew_hope <- c(5.0, 5.0)
tempire_strikes <- c(6.0, 6.0)
treturn_jedi <- c(7.0, 7.0)
tphantom_menace <- c(4.0, 4.0)
tattack_clones <- c(4.5, 4.5)
trevenge_sith <- c(4.9, 4.9)

ticket <- c(new_hope, empire_strikes, return_jedi, phantom_menace, attack_clones, revenge_sith)
ticket_matrix <- matrix(ticket, byrow= TRUE, nrow= 6)

region <- c("US", "non-US")
title <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi", "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith") 

rownames(ticket_prices_matrix) <- title #rownames(matrix) <- name
colnames(ticket_prices_matrix) <- region #colnames(matrix) <- name

visitors <- all_wars_matrix/ticket_prices_matrix
us_visitors <- visitors[,1]
print (mean(us_visitors))