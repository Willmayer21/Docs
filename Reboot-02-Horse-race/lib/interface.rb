pari = 100

until pari == 0
  # horse1, horse2, horse3, horse4 #-> array
  horses = ["horse1", "horse2", "horse3", "horse4"]
  # On choisi un cheval aléatoire (gagnant)
  computer_choice = horses.sample
  # On lui liste tout les chevaux.
  puts "Choose between :"
  horses.each do |horse|
    puts horse
  end
  # On demande au user de choisir un cheval (On lui demande de rentrer l'index)
  puts "Please choose a horse :"
  user_horse = gets.chomp
  # On compare les 2 chevaux
    # -> On lui dit si il a gagné ou pas
  if computer_choice == user_horse
    puts "You win, the winner is #{computer_choice}"
    puts "You have #{pari = pari + 50}"
  elsif computer_choice != user_horse
    puts "You lose, the winner is #{computer_choice}"
    puts "You have #{pari = pari - 10}"
  end
end
