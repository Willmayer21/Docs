# definire  une classe
# initialise parameters
# define actions
# behaviors of calss
# 1- list of task
# 2~ add a task
# 3¬ remove task
# 4 Mark task as complete

class Task
  attr_reader :description
  
  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end 

  def mark_as_done!
    @done = true
  end
end
