# Construct a matrix with 3 rows that contain the numbers 1 up to 9
#byrow = TRUE por constroi por linha
#byrow = FALSE por constroi por coluna
#nrow numero de linhas

matrix(1:9, byrow= TRUE, nrow=3)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow= TRUE, nrow= 3)

#Dando nomes a linhas e colunas
region <- c("US", "non-US")
title <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

rownames(star_wars_matrix) <- title #rownames(matrix) <- name
colnames(star_wars_matrix) <- region #colnames(matrix) <- name
print (star_wars_matrix)

#Calcular a bilheteria mundial
worldwide_vector <- rowSums(star_wars_matrix) #rowSums som as linhas e cria um novo vetor
print (worldwide_vector)

#Calculating the worldwide box office
