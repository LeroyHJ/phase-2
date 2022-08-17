require "snippet"

RSpec.describe "make_snippet method" do
  it "when the string is less than 5 words" do
    result = make_snippet("My name is Yichao.")
    expect(result).to eq "My name is Yichao."
  end

  it "when the string is more than 5 words." do
    result = make_snippet("My name is Yichao and I live in Oxford")
    expect(result).to eq "My name is Yichao and ..."
  end
end