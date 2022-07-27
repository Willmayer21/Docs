require_relative 'restaurant'

restaurant = Restaurant.new("Nantes", "Joe")

restaurant.city = "Moka"

restaurant.presentation

restaurant.add_chef("William")

# restaurant.add_client("Nicolas")
restaurant.add_client("Lorène")

p restaurant
