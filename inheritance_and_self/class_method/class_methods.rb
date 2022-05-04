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

  def self.average_price(cuisine) # self == Restaurant (class)
    case cuisine
    when "Japanese" then 3
    when "Mexicaine" then 2
    when "Mauricien" then 0.5
    end
  end

  def self.categories
    ["Japenese", "Mexicaine", "Mauricien"]
  end
end


