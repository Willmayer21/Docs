
# # musicians.size                  # => 4  (other methods = .length, .count)
# # musicians[1]                    # => "Roger Waters"
# # musicians << 'Syd Barrett'      # => [..., 'Syd Barrett']  other method = ,musicians.push('Syd Barrett')


# # # Create
# # musicians << "Miles Davis"
# # puts musicians.length

# # # Read
# # puts musicians[1]

# # # Update
# # musicians[0] = "Richard Marks"

# # # Delete
# # musicians.pop
# # musicians.delete_at(musicians.length - 2)
# # musicians.delete("Miles Davis")

# # for index in 0...(musicians.size)
# #   musician = musicians[index]
# #   puts "#{index + 1} - #{musician}"
# # end

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# # each

# musicians.each do |element|
#   puts " Hello #{element}"
# end

# # each_with_index

# musicians.each_with_index do |musician, index|
#   puts " #{index + 1} - #{musician}"
# end

musicians.map { |musician| musician.upcase }


# p musicians
# p upcased_musicians
musicians_with_r = []
musicians_count = musicians.count do |musician|
  musician.start_with?("R")
  if musician.start_with?("R")
    musicians_with_r << musician
  end
end

p musicians_count
p musicians_with_r





