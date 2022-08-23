require 'count_word'

RSpec.describe "count_word method" do
  it "inputs a string and outputs the number of words" do
    count = count_word("Coding is fun")
    expect(count).to eq 3
  end

  it "inputs a string and outputs the number of words" do
    count = count_word("this string will be a long one this time")
    expect(count).to eq 9
  end
end