require_relative 'restaurant'
require_relative 'chef'

# restaurant_nantes = Restaurant.new("Nantes", "Paws")

# restaurant_moka.add_chef("William")

# restaurant_moka.presentation

# chef_william = Chef.new("William", 2000)
# chef_william.add_restaurant(restaurant_moka)

# chef_william

restaurant_moka = Restaurant.new("Moka", "Joe", "William", 2000 )
p restaurant_moka
p restaurant_moka.chef
