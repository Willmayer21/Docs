require_relative 'fancy_restaurant'

fancy_restaurant = FancyRestaurant.new("Moka", "Joe", 3)

restaurant = Restaurant.new("Nantes", "Joe")

p fancy_restaurant.presentation

p restaurant.presentation

fancy_restaurant.add_chef("William")

fancy_restaurant.add_client("Nicolas")

fancy_restaurant
