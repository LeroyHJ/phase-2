class TodoList
  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    @list << todo
  end

  def incomplete
    # Returns all non-done todos
    # return @list if @list != []
    @list.select do |todo|
      todo.done? == false
    end
  end

  def complete
    # Returns all complete todos
    @list.select do |todo|
      todo.done? == true
    end
  end

  def give_up!
    # Marks all todos as complete
    @list.each do |todo|
      todo.mark_done! 
    end
  end
end