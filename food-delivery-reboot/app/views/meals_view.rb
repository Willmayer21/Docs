class MealsView

  def display(meals)
    meals.each do |meal|
      puts "#{meal.id} - #{meal.name} - #{meal.price}"
    end
  end

  def ask_for(item)
    puts "Please give : #{item}"
    gets.chomp
  end
end
