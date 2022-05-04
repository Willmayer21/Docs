# def timer
#   start_time = Time.now
#   yield
#   puts "Elapsed time: #{Time.now - start_time}s"
# end

# timer do 
#   puts "Doing something"
#   sleep 3
#   puts "something is done..."
# end 

# timer do 
#   puts "Doing something else"
#   sleep 5
#   puts "something else is done..."
# end 


def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  return yield(full_name)
end

greet('john', 'lennon') do |full_name|
  puts "Good morning, #{full_name}"
end

greet('john', 'lennon') do |full_name|
  puts "Bonjour, #{full_name}"
end

