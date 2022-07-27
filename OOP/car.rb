class Car
  # Car.new => call initialize by default
  def initialize(color = "white") # contructor
    # Define instance variables here
    @engine_starte = false
    @color = color
  end

  #definition of another instance method
  #to show the color fo the car
  #(otherwise, car_instance.color does not work)

  # def color
  #   return @color
  # end

  # you can also use attr_reader :color and delete here above.
  attr_reader :color # expose instance variable to lecture
  # you can also use attr_writter :color and change the color.
  attr_writer :color # expose instance variable to writing

  # attr_reader :color + attr_writer :color = attr_accessor :color
  # the symbole :color need to match the name of the instance variable.

  # car.color <==> car.send(:color)
  # using car.color is like sending a message to the instance.


  def paint(color)
    @color = color
  end

  def start_engine
    @engine_started = true
  end

  def stop_engine
    @engine_started = false
  end
end
