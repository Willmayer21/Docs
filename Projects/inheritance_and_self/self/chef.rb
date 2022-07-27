class Chef
  attr_reader :name, :year

  def initialize(name, year, restaurant)
    @name = name # string
    @year = year # integer
    @restaurant = restaurant # Object (instance)
  end

  def add_restaurant(restaurant)
    @restaurant = restaurant
  end
end
