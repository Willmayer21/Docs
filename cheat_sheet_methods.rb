
#each.slice
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.each_slice(2).to_a
# => [[1, 2], [3, 4], [5, 6], [7, 8], [9]]

#capitalize!
name = "john"
name.capitalize!
puts name
# => "John"

#map!
names = ["JOHN", "paul", "Ringo", "gEOrgEs"]
names.map! do |name|
  name.capitalize
end
puts names
# => ["John", "Paul", "Ringo", "Georges"]

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

#reject
musicians = ["Jimmy Page", "Robert Plant", "John Paul Jones", "John Bonham"]
musicians.reject do |musician|
  musician.start_with? "J" # reject only the elements that start with a "J"
end
# => ["Robert Plant"]
