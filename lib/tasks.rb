class ToDoList
  def initialize
    @todo = []
  end

  def add(task)
    @todo.push(task)
  end

  def list
    @todo
  end

  def complete(task)
    @todo.delete(task)
  end
end