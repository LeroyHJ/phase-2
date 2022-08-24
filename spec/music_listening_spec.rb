require 'music_listening'

RSpec.describe Music do
  it "add method adds new songs onto the playlist" do
    playlist = Music.new
    playlist.add("one")
    playlist.add("two")
    playlist.add("three")
    expect(playlist.show_list).to eq ["one", "two", "three"]
  end

  it "does adds an empty into the playlist array when user does not enter name of the song" do
    playlist = Music.new
    playlist.add("one")
    playlist.add("")
    playlist.add("three")
    expect(playlist.show_list).to eq ["one", "", "three"]
  end
end