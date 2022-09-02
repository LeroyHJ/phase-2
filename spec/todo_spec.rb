require 'todo'

RSpec.describe Todo do
  it "shows the task" do
    todo = Todo.new("clean the bath")
    expect(todo.task).to eq "clean the bath"
  end

  it "returns true if the task is marked done" do
    todo = Todo.new("clean the bath")
    todo.mark_done!
    expect(todo.done?).to eq true
  end
end