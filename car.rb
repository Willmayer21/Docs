class Car
    attr_reader :brand
    attr_accessor :color
    
    def initialize(brand,color)
        @engine_started = false
        @brand = brand
        @color = color
    end

    def engine_started?
        return @engine_started
    end

    def start_engine
        @engine_started = true
    end
end

my_car = Car.new('honda','white')
your_car = Car.new('porsche','black')

puts "Engine Started: #{my_car.engine_started?}"
my_car.start_engine
puts "Engine Started: #{my_car.engine_started?}"

puts "My car is a #{my_car.color} #{my_car.brand}"
my_car.color = "red"
puts "My car is a #{my_car.color} #{my_car.brand}"

