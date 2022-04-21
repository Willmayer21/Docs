# puts 'How old are you?'
# age = gets.chomp.to_i

# condition = age >= 18

# if condition
#   # what to do when TRUE
#   puts 'you can vote'
# end

# in RUBY EVERYTHING is TRUE except 'false' and 'nil'
# condition = nil    # empty string
# # BOOLEAN
# puts condition.class

# if condition
#   puts 'this is true'
# end
# condition = true
# puts condition.class
# !false = true

# if !condition
  # this will be executed when FALSE
#   puts 'this is false'
# end

# condition = false
# # with UNLESS the condition needs to be FALSE
# unless condition
#   puts 'this is false'
# end

# puts 'How old are you?'
# age = gets.chomp.to_i

# if age >= 18
#   # what to do when TRUE
#   puts 'you can vote'
# else
#   # what to do when FALSE
#   puts 'you CANNOT vote'
# end

# TERNARY OPERATOR
# condition ? code_when_truthy : code_when_falsey

# puts age >= 18 ? 'you can vote' : 'you CANNOT vote'

# if condition
#   # ...
# elsif other_condition
#   # ...
# else
#   # ...
# end

# INLINE CONDITION
# do_something if condition
# do_something unless condition
puts 'nnumber ? '
number = gets.chomp.to_i
puts "your number #{number} is even!" if number.even?
