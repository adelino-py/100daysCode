# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <- sum(roulette_vector)

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
print (total_week)

#Check if your total gains in poker are higher than roulette
print (total_poker > total_roulette) #TRUE

#Assign the poker results of Wednesday to poker_wednesday.
poker_wednesday = poker_vector[3]

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2,3,4)] 

#or poker_midweek <- poker_vector[2:4] 
roulette_selection_vector <- roulette_vector[2:5] #like this

#or
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]
mean(poker_start) #average - média

#Check which elements in poker_vector are positive and assign this to selection_vector.
selection_vectorPoker <- poker_vector > 0
print (selection_vectorPoker)

poker_winning_days <- poker_vector[selection_vectorPoker] # how much you won on that days 
print (poker_winning_days)

#Check which elements in roulette_vector are positive and assign this to selection_vector.
selection_vectorRoulette <- roulette_vector > 0
print (selection_vectorRoulette)

roulette_winning_days <- roulette_vector[selection_vectorRoulette])
print (roulette_winning_days)