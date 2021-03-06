class TaskView
  def display(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1} - #{task.description}"
    end
  end

  def ask_user_for_description
    puts "What do you want to do?"
    return gets.chomp
  end

  def ask_user_for_index
    puts "Which task is completed?"
    return gets.chomp.to_i - 1
  end

end
