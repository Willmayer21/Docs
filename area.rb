require "pry-byebug"

def square(num)
    binding.pry
    num * num
end

def area_of_circle(radius)
    binding.pry
    3.142 * square(radius)
end

puts(area_of_circle(10))