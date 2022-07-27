# On défini tout les produits (hash)
store = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}
# On défini notre variable cart à 0
cart = 0
# On list tout les produits
store.each do |key, value|
  puts "#{key}: #{value}€"
end


# On demande au user ce qu'il veut (On stock)
puts "Which item? (or 'quit' to checkout)"
user_item = gets.chomp
# On fait boucle
until user_item == 'quit'
  # On vérifie que le produit est disponible
  if store.key?(user_item)
    puts "You have #{user_item}"
    # On ajoute le prix à cart
    cart = cart + store[user_item]
  else
    puts "Sorry we don't have"
  end
  # On demande au user si il veut continuer ou pas
  puts "Which item? (or 'quit' to checkout)"
  user_item = gets.chomp
end
# On donne le total

puts "Total = #{cart} €"





