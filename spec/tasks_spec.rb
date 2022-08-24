require 'tasks'

RSpec.describe ToDoList do
  it "add method a task as a string into an array" do
      to_do_list = ToDoList.new
      to_do_list.add("Clean the bath")
      to_do_list.add("Do food shopping") 
      expect(to_do_list.list).to eq ["Clean the bath", "Do food shopping"]
  end

  it "complete method removes and tasks already completed" do
      to_do_list = ToDoList.new
      to_do_list.add("Do food shopping") 
      to_do_list.add("Clean the bath") 
      to_do_list.complete("Clean the bath")
      expect(to_do_list.list).to eq ["Do food shopping"]
  end
end 