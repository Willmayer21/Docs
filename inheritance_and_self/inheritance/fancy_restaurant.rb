require_relative 'restaurant'

class FancyRestaurant < Restaurant

  def initialize(city, name, stars)
    # @city = city
    # @name = name
    # @chef = nil
    # @clients = []
    super(city, name)
    @stars = stars
  end

  def presentation
    "#{super()} - #{@stars}"
  end

  # def add_chef(new_name)
  #   @chef = new_name
  # end

  # def add_client(new_client)
  #   @clients << new_client
  # end
end
