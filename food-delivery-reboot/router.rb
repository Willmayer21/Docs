# TODO: implement the router of your app.
class Router

  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    puts "Food delivery à ton service"
    while @running
      print_menu
      puts "Which action"
      action = gets.chomp.to_i
      route(action)
    end
  end

  private

  def print_menu
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "5 - stop"
  end

  def route(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    end
  end

  def stop
    @running = false
  end
end




