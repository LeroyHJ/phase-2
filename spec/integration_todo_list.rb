require 'todo'
require 'todo_list_2'

RSpec.describe "integration" do 
  context "after adding some tasks" do 
    it "returns the incompleted task" do
      todo = Todo.new("Clean the bath")
      to_do_list = TodoList.new
      to_do_list.add(todo)
      expect(to_do_list.incomplete).to eq [todo]
    end

    xit "returns nil if nothing has been added to the todo list" do
      to_do_list = TodoList.new
      expect(to_do_list.incomplete).to eq nil
      expect(to_do_list.complete).to eq nil
    end
  
    it "returns the completed task" do
      todo = Todo.new("Clean the bath")
      to_do_list = TodoList.new
      to_do_list.add(todo)
      todo.mark_done!
      expect(to_do_list.complete).to eq [todo]
    end

    it "marks all tasks as done" do
      todo = Todo.new("Clean the bath")
      to_do_list = TodoList.new
      to_do_list.add(todo)
      expect(to_do_list.give_up!).to eq [todo]
    end
  end
end