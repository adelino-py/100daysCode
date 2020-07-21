# factor: estruturas de dados para ordenar strings categoricas
#http://material.curso-r.com/forcats/


# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)

# Print out factor_sex_vector
print (factor_sex_vector)

# dois tipos de variaveis categoricas:
# nominal: sem ordem implicita

animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)

# ordinal: tem ordem natural (uma é maior que a outra)
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels <- c("Low", "Medium", "High"))
print (factor_temperature_vector)

# renomeando dados
survey_vector <- c("M", "F", "F", "M", "M") #sem o fator, são só dados soltos
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

# summary() quik overview of the contents of a variable
print (summary(survey_vector))
print (summary(factor_survey_vector))

# Ordered factors - evaluate performance
speed_vector <- c('medium','slow','slow','medium','fast')

#menor vem primeiro
factor_speed_vector <- factor(speed_vector, order =TRUE, levels <- c("slow", "medium", "fast"))
print (factor_speed_vector)

#Comparing ordered factors
print (factor_speed_vector[2] > factor_speed_vector[5])