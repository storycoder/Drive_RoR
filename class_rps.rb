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
    elsif answer == "scissors" && comp_answer[1]
        puts "Scissors cuts paper, You win!"
        user_score += 1
    elsif  answer == "paper" && comp_answer[0]
        puts "Paper covers rock. You win!"
        user_score += 1
    elsif answer == "paper" && comp_answer[2]
        puts "Scissors cuts paper. I win!"
        comp_score +=1
    elsif answer != comp_choices
        puts "Please type 'rock', 'paper', or 'scissors'."
    else
    end
    puts "You have #{user_score} points and I have #{comp_score} points."
    if comp_score == 3
        puts "I win the game! Losers go home!!"
        break
    elsif user_score == 3
        puts "You win the game! I'm such a loser!!"
        break
    end
    puts ""
    puts "Type quit to end the game or rock, paper, scissors to keep playing. "
    answer = gets.chomp.downcase
    comp_answer = comp_choices.sample
    
end



