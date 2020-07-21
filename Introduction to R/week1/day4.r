#Day3 code
new_hope <- c(461.0, 314.4)
empire_strikes <- c(290.5, 247.9)
return_jedi <- c(309.3, 165.8)
phantom_menace <- c(474.5, 552.5)
attack_clones <- c(310.7, 338.7)
revenge_sith <- c(380.3, 468.5)

# Create box_office
box_office1 <- c(new_hope, empire_strikes, return_jedi)
box_office2 <- c(phantom_menace, attack_clones, revenge_sith)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office1, byrow= TRUE, nrow= 3)
star_wars_matrix2 <- matrix(box_office2, byrow = TRUE, nrow= 3)

# Dando nomes a linhas e colunas
region1 <- c("US", "non-US")
title1 <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi") 

region2 <- c("US", "non-US")
title2 <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")

rownames(star_wars_matrix) <- title1 #rownames(matrix) <- name
colnames(star_wars_matrix) <- region1 #colnames(matrix) <- name
#print (star_wars_matrix) 

rownames(star_wars_matrix2) <- title2 #rownames(matrix) <- name
colnames(star_wars_matrix2) <- region2 #colnames(matrix) <- name

#Calcular a bilheteria mundial
worldwide_vector <- rowSums(star_wars_matrix) #rowSums som as linhas e cria um novo vetor
#print (worldwide_vector)

#Calculating the worldwide box office
#You can add a column or multiple columns to a matrix with the cbind()

all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
print (all_wars_matrix)

#Calculate the total revenue for the US and the non-US region
total_revenue_vector <- colSums (all_wars_matrix)


