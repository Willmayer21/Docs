require_relative 'calculator'
# On défni la variable
again = 'Y'
# Rajouter une boucle
while again == 'Y'
  # On demande au user le first number
    # On stocke la réponse dans une variable
  puts "Enter a first number"
  first_number = gets.chomp.to_i
  # On demande au user le deuxième number
    # On stocke la réponse dans une variable
  puts "Can you give me an other number"
  second_number = gets.chomp.to_i
  # On demande au user le calcul
    # On stocke la réponse dans une variable
  puts "What operation do you want a perform +, -, / and * ?"
  operation = gets.chomp
  # On imprime le resultat
  puts calculate(first_number, second_number, operation)
  # On demande au user si il veut refaire un calcul
  puts "Do you want to calculate again? [Y/N]"
  again = gets.chomp
  # On sort si on a N et si on a Y on reste dedans
end

