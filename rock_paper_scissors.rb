#We will be writing this together in our cloud9 workspaces this Tuesday.

comp_choices = ["rock", "paper", "scissors"]
puts "Welcome To Rock, Paper, Scissors"
puts " "
puts "What's your name? "
name = gets.chomp.capitalize
puts "Hi #{name}! Please enter rock, paper or scissors: "
answer = gets.chomp.downcase
comp_answer = comp_choices.sample

user_score = 0
comp_score = 0

until answer == "quit"
	puts ""
	if answer == comp_answer
		puts "You got #{answer} and I got #{comp_answer}!"
		puts ""
		puts "We tied!"
	elsif answer == "rock" && comp_answer == comp_choices[2]
		puts "Your rock crushed my scissors."
		puts ""
		puts "Congratulations #{name}! You win!"
		user_score += 1
	elsif answer == "rock" && comp_answer == comp_choices[1]
		comp_score += 1
		puts "My paper covered your rock."
		puts ""
		puts "Sorry #{name}, but I win!"
	elsif answer == "paper" && comp_answer == comp_choices[0]
		puts "Your paper covered my rock."
		puts ""
		puts "Congratulations #{name}! You win!"
		user_score += 1
	elsif answer == "paper" && comp_answer == comp_choices[2]
		puts "My scissors cut your paper."
		puts ""
		puts "Sorry #{name}, but I win!"
		comp_score += 1
	elsif answer == "scissors" && comp_answer == comp_choices[1]
		puts "Your scissors cut my paper."
		puts ""
		puts "Congratulations #{name}! You win!"
		user_score += 1
	elsif answer == "scissors" && comp_answer == comp_choices[0]
		puts "My rock crushed your scissors."
		puts ""
		puts "Sorry #{name}, but I win!"
		comp_score += 1
	elsif answer != comp_choices
		puts "Oops! #{name}, you must enter 'rock', 'paper', or 'scissors': "
	else
	end
	puts ""

	puts "#{name}, your score is #{user_score}. My score is #{comp_score}"

	#if user_score == 5 || comp_score == 5
		if user_score == 5
			puts "You've won 5 games #{name}. You won the game! You are the master of Rock, Paper, Scissors"
			break
		elsif comp_score == 5
		puts "I've won 5 games #{name}. I won the game! I am the master of Rock, Paper, Scissors"
			break
		end
	#end
	puts ""
	puts "Type 'quit' if you would like to end the game."
	puts "Otherwise #{name}, please enter 'rock', 'paper', or 'scissors': "

	answer = gets.chomp.downcase

	if answer == "quit"
		break
	end

	comp_answer = comp_choices.sample

end