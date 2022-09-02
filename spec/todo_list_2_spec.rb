require 'todo_list_2'

RSpec.describe TodoList do
  it "add method adds a task as a string into an array" do
    to_do_list = TodoList.new
    to_do_list.add("Clean the bath")
    to_do_list.add("Do food shopping")
    expect(to_do_list.incomplete).to eq ["Clean the bath", "Do food shopping"]
  end

  it "returns nil if nothing has been added to the todo list" do
    to_do_list = TodoList.new
    expect(to_do_list.incomplete).to eq nil
    expect(to_do_list.complete).to eq nil
  end

  it "returns list of uncompleted tasks" do
    to_do_list = TodoList.new
    to_do_list.add("Clean the bath")
    to_do_list.add("Do food shopping")
    expect(to_do_list.incomplete).to eq ["Clean the bath", "Do food shopping"]
  end
end
