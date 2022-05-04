class CustomerView

  def display(customers)
    customers.each do |customer|
      puts "#{customer.id} - #{customer.name} - #{customer.address}"
    end
  end

  def ask_for(item)
    puts "Please give : #{item}"
    gets.chomp
  end
end
