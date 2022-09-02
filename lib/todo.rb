class Todo
  def initialize(task) # task is a string
    @task = task
    @done = false
  end

  def task
    # Returns the task as a string
    @task
  end

  def mark_done!
    # Marks the todo as done
    @done = true
  end

  def done?
    # Returns true if the task is done
    if @done == true
      true 
    else 
      false
    end
  end
end