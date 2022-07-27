# ROCK PAPER SCISSORS vs computer
# take player choice
# 'rock', 'paper', 'scissors'
# if player choose somthing else, ask again
# take RANDOM choice for computer
# the rules => compare between player and computer
# display outcomes

choices = ['rock', 'paper', 'scissors'] # line 10 does the same thing, just another way to write
# choices = %w[rock paper scissors]

computer_choice = choices.sample

puts "Choose between 'rock', 'paper', 'scissors'"
player_choice = gets.chomp.downcase
# until player_choice == 'rock' || player_choice == 'paper' || player_choice == 'scissors'
# we can also use line 16 or line 18, they do the same thing
until choices.include?(player_choice) # check if player_choice is in array choices
  puts "Choose between 'rock', 'paper', 'scissors'"
  player_choice = gets.chomp
end

puts "Computer chose #{computer_choice}"
puts "You chose #{player_choice}"

if computer_choice == player_choice
  puts 'draw' # DRAW
else  # if outcome is not DRAW
  player_wins = false # LOSE condition by default

  # WIN condition is in following lines
  if computer_choice == 'rock' && player_choice == 'paper'
    player_wins = true
  elsif computer_choice == 'paper' && player_choice == 'scissors'
    player_wins = true
  elsif computer_choice == 'scissors' && player_choice == 'rock'
    player_wins = true
  end
  # check if player has won
  puts player_wins ? 'You have won' : 'You have lost'
  # if player_wins
  #   puts 'You have won'
  # else
  #   puts 'You have lost'
  # end
end
