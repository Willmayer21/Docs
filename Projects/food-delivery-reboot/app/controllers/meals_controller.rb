require_relative '../views/meals_view'
require_relative '../models/meal'

class MealsController

  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def list
    # On récupère tout les meals
    meals = @meal_repository.all
    # On affiche
    @meals_view.display(meals)
  end

  def add
    # ask user for name to add -> On store
    name = @meals_view.ask_for("a name")
    # ask user for price to add -> On store
    price = @meals_view.ask_for("a price").to_i
    # On crée une instance de meal
    meal = Meal.new(name: name, price: price)
    # On ajoute l'instance de meal au repo
    @meal_repository.create(meal)
  end
end

