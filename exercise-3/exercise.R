# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red","orange", "yellow", "green", "blue", "purple")

# Use the `sample` function to select a single marble
print(sample(marbles, size = 1))

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function (guess) {
  ans <- sample(marbles,size = 1) 
  if (guess == ans) {
    return ("RIGHT :)")
  }else {
    return ("WRONG!")
  }
}

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take
MarbleGameWtracking <- function (guess, n) {
  ans <- sample(marbles,size = 1) 
  if (guess == ans) {
    if (n == 0) {
      return ("LUCKY")
    } else {
    return (paste("RIGHT in " , n ,"times",":)"))
    }
  }else {
    n <- n + 1
    MarbleGameWtracking (guess, n)
  }
}


## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability