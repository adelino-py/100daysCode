# Data Frames
#head() and tail()

head(mtcars) #first observations
tail(mtcars) #last observations
#hp: potência - datsun menor

#structure - str()
str(mtcars)

# Creating a data frame
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
print (planets_df)

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]

#Another way is use the variable names to select columns

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]

# Select the rings variable from planets_df
# You can use name_dataframe$column
rings_vector <- planets_df$rings
print (rings_vector)

# Quero saber o nome dos planetas que tem aneis
print (planets_df[rings_vector, ])

# To create the subset rings_vector, you can also use subset() function:
#subset(planets_df, subset = rings)

# Like this: 
# Select planets with diameter < 1
small_planets <- subset(planets_df, subset = diameter <1)

# order() function
a <- c(100, 10, 1000)
print (order(a))
print (a[order(a)]) #ordena a

# Use order() to create positions
# Reordenar planetas pelo diametro
# $ cria um data set de uma coluna 
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]