require 'count_words'

RSpec.describe "count_words method" do
  it "inputs a string and outputs the number of words" do
    count = count_words("Coding is fun")
    expect(count).to eq 3
  end

  it "inputs a string and outputs the number of words" do
    count = count_words("this string will be a long one this time")
    expect(count).to eq 9
  end
end