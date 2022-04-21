# computer : 1-5
# user : 1-5

price_to_find = rand(1..5)

player_choice = nil

while price_to_find != player_choice
  puts 'find the price from 1 to 5'
  player_choice = gets.chomp.to_i
end

# until choice == price_to_find
#   puts "How much (between $1 and $5)?"
#   choice = gets.chomp.to_i
# end

puts "you have won! price was #{price_to_find}"