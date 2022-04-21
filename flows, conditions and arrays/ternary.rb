# PILE OU FACE
# HEADS OR TAILS

# user chooses h/t
# computer chooses h/t
# if both same, user wins
puts 'choose heads or tails'
choice = gets.chomp

computer_choice = ['heads', 'tails'].sample
puts "computes chose #{computer_choice}"
# if choice == computer_choice 
#   result = 'you won'
# else
#   result = 'you lost'
# end
# puts result

# condition ? code_when_truthy : code_when_falsey
result = choice == computer_choice ? 'you won' :  'you lost'
puts result
