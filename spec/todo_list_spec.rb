require 'todo_list'

RSpec.describe "todo_list method" do
  it "fails when the string #TODO is missing" do
    expect(todo_list("get groceries")).to eq false
  end

  it "passes when the string #TODO is included" do
    expect(todo_list("#TODO do the laundry")).to eq true
  end

  it "fails when #TODO is not uppercase" do
    expect(todo_list("#todo walk the dog")).to eq false
  end

  it "fails when there is no hashtag #" do
    expect(todo_list("TODO clean the house")).to eq false
  end
end
