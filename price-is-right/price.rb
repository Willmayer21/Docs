# Choisir un chiffre au hasard entre 1 et 100
random_number = rand(1..100)
# Demander au user de donner un chiffre
puts "Choose a number between 1 and 100"
user_number = gets.chomp.to_i

#p user_number.class

# On initialise notre variable counter
counter = 1
# Comparer les 2 chiffre (égaux ou non) -> On fait une boucle
while user_number != random_number # -> contraire de ==
  # On incrémente notre variable counter
  counter = counter + 1
  # On compare les 2 chiffres (plus ou moins)
  if user_number > random_number # condition
    puts "It's less"
  else
    puts "It's more"
  end
  # Demander au user de donner un chiffre
  puts "Give another number : "
  user_number = gets.chomp.to_i
end
# Dire au user qu'il a gagné et son nombre de tentative
puts "Congratulations ! You needed #{counter} tries"
