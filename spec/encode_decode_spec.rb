require 'encode_decode'

RSpec.describe "encode method" do
  it "turns a phrase into a secret code" do
    phrase = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
    expect(phrase).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end
end