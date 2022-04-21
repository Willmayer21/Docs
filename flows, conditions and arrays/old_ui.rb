puts 'What do you want to do?'
action = gets.chomp
age = 18
# condition d'égalité
# >, >=, <
if age < 18
  #assfad
elsif age == 18
  # ldjanjkd
elsif age  > 25
  #ksdskd
else
  #sdkfnsd
end

case action
when 'read'         # action == 'read
  puts 'You are in READ mode'
when 'write'        # action == 'write'
  puts 'You are in WRITE mode'
when 'exit'         # action == 'exit'
  puts 'Bye Bye'
else
  puts 'Wrong action'
end

# case action
# when 'read' then puts 'You are in READ mode'
# when 'write'then puts 'You are in WRITE mode'
# when 'exit' then puts 'Bye Bye'
# else puts 'Wrong action'
# end
