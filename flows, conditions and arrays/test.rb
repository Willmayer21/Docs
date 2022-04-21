puts 'Which action? [read|write|exit]'
action = gets.chomp

case action
when 'read' then puts 'You are in READ mode'
when 'write' then puts 'You are in WRITE mode'
when 'exit' then puts 'Bye Bye'
else puts 'Wrong action'
end
