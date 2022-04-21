# 10.00 - bonjour
# 15.00 - bon aprem

puts 'what time(HOUR) is it?'
hour = gets.chomp.to_i

# ORDER of condition is IMPORTANT
if hour < 12
  puts "Good morning!"
elsif hour >= 20
  puts "Good night!"
elsif hour > 12 # new syntax
  puts "Good afternoon!"
else
  # le reste
  puts "Lunch time!"
end
