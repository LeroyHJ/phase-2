require 'reading_time' 

RSpec.describe "reading_time method" do
  it "fails" do
    expect { reading_time(nil) }.to raise_error "no text given"
  end

  it "returns seconds when passed a text" do
    expect(reading_time("one")).to eq 0.3
  end

  it "returns seconds when passed a text" do
    expect(reading_time("one " * 200)).to eq 60
  end

  it "returns seconds when passed a text" do
    expect(reading_time("one " * 1000)).to eq 300
  end
end