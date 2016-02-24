#We created an array inside a variable called 'comp_choices'. The array is away to store multiple values in one varible, perfect for  creating the only three choices we want our computer to make against a user. 
comp_choices = ["rock", "paper", "scissors"]
#The next three lines welcome our user and require them to enter a name
puts "Welcome to Rock, Paper, Scissors"
puts " "
puts "What is your name? "

#We used the next two lines to create a varible called 'name' to store the user's name. We first allow the user to enter the name in the console/terminal and we make sure the it will be capitalized. 
name = gets.chomp
name.capitalize!

#Now we prompted the user via the interpolated 'name' varible to start playing the game by choosing either rock, paper, or scissors. 
puts "Hi #{name}! Please type Rock Paper or scissors: "
answer = gets.chomp

#For every time a user answers, we want the computer to randomly answer either 'rock', 'paper' or 'scissors'. We accomplished this by writing a new varible called 'comp_answers' and made it equal to the a random choice of one of the terms in the 'comp_choices' variable. 
comp_answer = comp_choices.sample

#The line directly below is a test line to see if our all of our variables we created are working together properly so far. 
puts comp_answer + ", " + answer + ", " + name

#We left off with these two variables in class. We'll get into more about this during the next class. Essentially this counter will store points, allow our program to keep score in this competition. 
user_score = 0
comp_score = 0


