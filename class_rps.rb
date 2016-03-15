comp_choices = ["rock", "paper", "scissors"]
puts "Welcome to Rock, Paper, Scissors"
puts " "
puts "What is your name? "
name = gets.chomp
name.capitalize!
puts "Hi #{name}! Please type Rock Paper or scissors: "
answer = gets.chomp
answer.downcase!
comp_answer = comp_choices.sample

user_score = 0
comp_score = 0

until answer == "quit"
    puts ""
    if comp_answer == answer
        puts "Tie!"
    elsif answer == "rock" && comp_answer[2]
        puts "Rock crushes scissors, you win!"
        user_score += 1
    elsif answer == "rock" && comp_answer[1]
        puts "Paper covers rock, I win!"
        comp_score += 1
    elsif answer == "scissors" && comp_answer[0]
        puts "Rock crushes scissors, I win!"
        comp_score += 1
        #more elsifs needed
    end  
end



