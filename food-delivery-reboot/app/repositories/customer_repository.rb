require_relative '../models/customer'
require 'csv'

class CustomerRepository

  def initialize(csv_file)
    @next_id = 1
    @csv_file = csv_file
    @customers = []
    load_csv if File.exist?(@csv_file)
  end

  def create(customer)
    customer.id = @next_id
    @customers << customer
    @next_id += 1
    save_csv
  end

  def all
    @customers
  end

  def find(customer_id)
    @customers.find { |customer| customer.id == customer_id }
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      id = row[:id].to_i
      name = row[:name]
      address = row [:address]
      customer = Customer.new(id: id, name: name, address: address)
      @customers << customer
    end
    @next_id = @customers.last.id + 1 if @customers != []
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << ["id", "name", "address"]
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end
end


