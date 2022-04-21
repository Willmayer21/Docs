# opening hours of our shop
# shop 9-12 and 14-18

puts 'what time(HOUR) is it?'
hour = gets.chomp.to_i
# 10
is_morning = (hour >= 9 && hour <= 12)
is_afternoon = (hour >= 14 && hour <= 18)

if is_morning || is_afternoon
  puts 'shop open'
else
  puts 'shop close'
end
