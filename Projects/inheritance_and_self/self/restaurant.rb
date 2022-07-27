require_relative 'chef'

class Restaurant
  attr_accessor :city
  attr_reader :chef

  def initialize(city, name, chef_name, chef_year)
    @city = city
    @name = name
    @chef = Chef.new(chef_name, chef_year, self)
    @clients = []
  end

  def presentation
    self
    # "#{@name} - #{@city}"
  end

  def add_chef(new_name)
    @chef = new_name
  end

  def add_client(new_client)
    @clients << new_client
  end
end
