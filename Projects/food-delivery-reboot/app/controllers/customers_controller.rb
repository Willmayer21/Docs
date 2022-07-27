require_relative '../repositories/customer_repository'
require_relative '../views/customer_view'

class CustomersController

  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customer_view = CustomerView.new
  end

  def list
    # On récupère tout les customers
    customers = @customer_repository.all
    # On affiche
    @customer_view.display(customers)
  end

  def add
    # ask user for name to add -> On store
    name = @customer_view.ask_for("a name")
    # ask user for price to add -> On store
    address = @customer_view.ask_for("a address")
    # On crée une instance de meal
    customer = Customer.new(name: name, address: address)
    # On ajoute l'instance de meal au repo
    @customer_repository.create(customer)
  end
end
