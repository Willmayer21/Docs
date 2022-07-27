require_relative 'view'
require_relative 'recipe'
require_relative 'scraping'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def create
    # ask user for name
    name = @view.ask_user_for("a name")
    # ask user for description
    description = @view.ask_user_for("a description")
    rating = @view.ask_user_for("a rating")
    # create recipe instance
    recipe = Recipe.new(name, description, rating)
    # store recipe in cookbook
    @cookbook.add_recipe(recipe)
    # display all recipes
    list
  end

  def destroy
    # Display all recipes
    list
    # Ask user for index
    index = @view.ask_user_for_index
    # Remove from cookbook
    @cookbook.remove_recipe(index)
    # display all recipes
    list
  end

  def import
    # Ask user for an ingredient
    ingredient = @view.ask_user_for("an ingredient")
    # Use service Scraping to get the results
    results = ScrapingService.new(ingredient).call
    # Display 5 first recipes
    @view.display(results)
    # Ask user to Choose one of the 5 recipes to import
    index = @view.ask_user_for_index
    # Add to cookbook
    @cookbook.add_recipe(results[index])
    # display recipes
    list
  end

  def mark_as_done
    # list recipes
    list
    # Ask user for an index
    index = @view.ask_user_for_index
    # Change at this index the value of done
    @cookbook.mark_recipe_as_done(index)
    list
  end
end
