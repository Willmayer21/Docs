require_relative 'task'
require_relative 'task_view'

class TasksController
  def initialize(repository)
    @repository = repository
    @view = TaskView.new
  end

  def list
   tasks = @repository.all
   @view.display(tasks)
  end

  def create
    description = @view.ask_user_for_description
    task = Task.new(description)
    @repository.add(task)
  end

  def mark_as_done
    # display list with index
    list
    # Ask user for index to mark as done
    index = @view.ask_user_for_index
    # fetch task from repo
    task = @repository.find(index)
    # mark as done
    task.mark_as_done!
  end

  def destroy
    list
    index = @view.ask_user_for_index
    task = @repository.find(index)
    task.remove(index)
  end
end
