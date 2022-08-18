require 'improve_grammar'

RSpec.describe "improve_grammar method" do
  it "returns true" do
    expect(improve_grammar("Hello, my name is Yichao.")).to eq true
  end

  it "returns false" do
    expect(improve_grammar("hello, my name is Yichao.")).to eq false
  end

  it "returns false" do 
    expect(improve_grammar("Hello, my name is Yichao")).to eq false
  end

  it "returns true" do 
    expect(improve_grammar("Hello, my name is Yichao!")).to eq true
  end
end