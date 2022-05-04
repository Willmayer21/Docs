class Restaurant
  attr_accessor :city

  def initialize(city, name)
    @city = city
    @name = name
    @chef = nil
    @clients = []
  end

  def presentation
    "#{@name} - #{@city}"
  end

  def add_chef(new_name)
    @chef = new_name
  end

  def add_client(new_client)
    @clients << new_client
  end
end
