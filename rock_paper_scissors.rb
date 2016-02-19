#We will be writing this together in our cloud9 workspaces this Tuesday.

comp_choices = ["rock", "paper", "scissors"]
puts "Welcome Rock, Paper, Scissors"
puts " "
puts "What's your name? "
name = gets.chomp.capitalize
puts "Hi #{name}! Please enter rock, paper or scissors: "

answer = gets.chomp.downcase
comp_answer = comp_choices.sample

user_score = 0
comp_score = 0

until answer == "quit"
	if answer == comp_answer
		puts "Tie!"
	elsif answer != comp_choices
		puts "Oops! #{name}, you must enter 'rock', 'paper', or 'scissors': "
	elsif answer == "rock" && comp_answer == comp_choices[2]
		puts "Congratulations #{name}! You win!"
		user_score += 1
	elsif answer == "rock" && comp_answer == comp_choices[1]
		comp_score += 1
		puts "Sorry #{name}, but I win!"
	elsif answer == "paper" && comp_answer == comp_choices[0]
		puts "Congratulations #{name}! You win!"
		user_score += 1
	elsif answer == "paper" && comp_answer == comp_choices[2]
		puts "Sorry #{name}, but I win!"
		comp_score += 1
	elsif answer == "scissors" && comp_answer == comp_choices[1]
		puts "Congratulations #{name}! You win!"
		user_score += 1
	elsif answer == "scissors" && comp_answer == comp_choices[0]
		puts "Sorry #{name}, but I win!"
		comp_score += 1
	else
	end

	puts "#{name}, your score is #{user_score}. My score is #{comp_score}"

	if user_score == 5 || comp_score == 5
		break
	end

	puts "Type 'quit' if you would like to end the game."
	puts "Otherwise #{name}, please enter 'rock', 'paper', or 'scissors': "

	answer = gets.chomp.downcase

	if answer == "quit"
		break
	end

	comp_answer = comp_choices.sample

end