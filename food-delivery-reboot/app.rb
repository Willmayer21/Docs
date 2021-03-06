# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative "app/repositories/meal_repository"
require_relative "app/controllers/meals_controller"
require_relative "app/repositories/customer_repository"
require_relative "app/controllers/customers_controller"
require_relative "router"

meals_csv_file = "data/meals.csv"
customers_csv_file = "data/customers.csv"
meal_repository = MealRepository.new(meals_csv_file)
customer_repository = CustomerRepository.new(customers_csv_file)
meals_controller = MealsController.new(meal_repository)
customers_controller = CustomersController.new(customer_repository)

router = Router.new(meals_controller, customers_controller)
router.run
