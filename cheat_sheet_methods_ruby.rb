#count -> count the number of Array elements matching a condition
musicians = ["Jimmy Page", "Robert Plant", "John Paul Jones", "John Bonham"]
musicians.count { |musician| musician.include? "J" }
# => 3

#capitalize!
name = "john"
name.capitalize!
puts name
# => "John"

#each.slice
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.each_slice(2).to_a
# => [[1, 2], [3, 4], [5, 6], [7, 8], [9]]

#each_with_index
musicians = ["Jimmy Page", "Robert Plant", "John Paul Jones", "John Bonham"]
musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}"
end
# 1 - Jimmy Page
# 2 - Robert Plant
# 3 - John Paul Jones
# 4 - John Bonham

#find -> get the first item of an Array satisfying a given condition / passing the condition in a block:
musicians = ["Jimmy Page", "Robert Plant", "John Paul Jones", "John Bonham"]
musicians.find { |musician| musician.split(" ").first == "John" }
# => "John Paul Jones"

#map -> get another Array where all the elements were subject to the same treatment
musicians = ["Jimmy Page", "Robert Plant", "John Paul Jones", "John Bonham"]
musicians.map do |musician|
  musician.upcase
end
# => ["JIMMY PAGE", "ROBERT PLANT", "JOHN PAUL JONES", "JOHN BONHAM"]

#map! 
names = ["JOHN", "paul", "Ringo", "gEOrgEs"]
names.map! do |name|
  name.capitalize
end
puts names
# => ["John", "Paul", "Ringo", "Georges"]

#reject -> clean an Array from items matching a condition
musicians = ["Jimmy Page", "Robert Plant", "John Paul Jones", "John Bonham"]
musicians.reject do |musician|
  musician.start_with? "J" # reject only the elements that start with a "J"
end
# => ["Robert Plant"]

#select -> transform an array into another one with only elements matching a condition
musicians = ["Jimmy Page", "Robert Plant", "John Paul Jones", "John Bonham"]
musicians.select do |musician|
  musician[0] == "J" # select only the elements that start with a "J"
end
# => ["Jimmy Page", "John Paul Jones", "John Bonham"]

#sort_by
["apple", "pear", "fig"].sort_by { |word| word.length }
#=> ["fig", "pear", "apple"]

#sum
numbers = [1, 2, 3, 4, 5]
numbers.sum
# => 15

#Yield
def timer
  start_time = Time.now
  yield
  puts "Elapsed time: #{Time.now - start_time}s"
end

timer do
  sleep(2)
end
# "Elapsed time: 2s"

#Yield(parameters)
def greet(name)
  capitalized_name = name.capitalize
  puts yield(capitalized_name)
end
me = "john"

greet(me) do |name|
  "Greetings, #{name}, you look quite fine today!"
end
# => "Greetings, John, you look quite fine today!"






musician.include? "J"
word.length
musician.start_with? "J"
musician.split(" ").first == "John"
