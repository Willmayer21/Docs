def display(gift_list)
  gift_list.each_with_index do |gift, index| # => .each_with_index
    puts "#{index + 1} - #{gift[:mark] == true ? '[x]' : '[ ]'} #{gift[:name]}"            # => display si le cadeau on là ou pas
  end
end
# puts welcome
puts " Welcome to your Christmas gift list"
# On boucle (On sort quand le user fait quit)
action = ""

# On va initialiser la liste (array vide)
gift_list = [] # -> [ { name: "macbook", mark: false}, { name: "ipad", marl: true}]

until action == "quit"
  # On demande au user ce qu'il veut -> On liste les actions
  puts "Which action [list|add|delete|mark|quit]?"
  # On récupère la réponse du user (variable)
  action = gets.chomp
  # On affiche un puts différent en fonction de l'action (if)
  if action == "list"
    # On lui affiche l'array (each)
      # Si l'array est vide on lui dit qu'il y a rien
    display(gift_list)

    puts "Not list yet" if gift_list == []

  elsif action == "add"
    # On demande au user ce qu'il veut rajouter
    puts "What do you want to add ?"
    user_add = gets.chomp
    # On ajoute à la liste (array)
    gift_list.push({ name: user_add, mark: false }) # -> add un hash ({name: user_add, mark: false})
    ## On peut lui afficher toute sa liste
    display(gift_list)
  elsif action == "delete"
    # On lui affiche la liste
    display(gift_list)
    # On demande au user ce qu'il veut effacer
    puts "What do you to delete (index) ?"
    user_delete = gets.chomp.to_i - 1
    # On supprime l'élément de l'array
    gift_list.delete_at(user_delete) # -> On delete grâce à l'index
    # On lui affiche la liste
    display(gift_list)
  # add action mark => if mark
  elsif action == "mark"
    # On affiche la liste
    display(gift_list)
    # On demande au user ce qu'il veut mark
    puts "Which item have you bought (give the index)?" # On demande un index
    # On stock le cadeau qu'il veut
    user_mark = gets.chomp.to_i - 1

    # On le mark => mark passe à true
    gift_list[user_mark][:mark] = true

  elsif action == "quit"
    # good bye
    puts "Goodbye"
  end
end



## On a changé de l'array => On intialise toujours un array
## Au niveau de l'affichage, ajouter les lindex pour avoir une liste (1)
## Faire l'action mark
## Modifier l'action add => On ajoute un hash

## Modifier l'affichage => mettre si il est acheté ou pas
# Delete avec l'index

# Refacto l'affichage => def display(gift_list)
