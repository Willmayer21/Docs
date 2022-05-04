class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      status = recipe.done? ? "[x]" : "[ ]"
      puts "#{index + 1}. #{status} #{recipe.name}: #{recipe.description} - #{recipe.rating}/5 - #{recipe.prep_time}"
    end
  end

  def ask_user_for(stuff)
    puts "Please give #{stuff}"
    gets.chomp
  end

  def ask_user_for_index
    puts "Please choose an index"
    gets.chomp.to_i - 1
  end
end
