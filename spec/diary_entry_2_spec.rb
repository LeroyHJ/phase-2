require 'diary_entry_2'

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_content")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_content"
  end

  it "counts the length of words in contents" do
    diary_entry = DiaryEntry.new("my_title", "my_content")
    diary_entry.contents
    expect(diary_entry.count_words).to eq 1
  end

  it "counts 0 when nothing has been entered into the contents" do
    diary_entry = DiaryEntry.new("my_title", "")
    diary_entry.contents
    expect(diary_entry.count_words).to eq 0
  end

  it "fails if wpm = 0" do
    diary_entry = DiaryEntry.new("my_title", "my_content " * 520)
    expect { diary_entry.reading_time(0) }.to raise_error "wpm cannot be 0"
  end

  it "returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm." do
    diary_entry = DiaryEntry.new("my_title", "my_content " * 520)
    expect(diary_entry.reading_time(200)).to eq 3
  end

  it "returns all the contents if it is readable within the given wpm and minutes" do
    diary_entry = DiaryEntry.new("my_title", "my_content " * 520)
    expect(diary_entry.reading_chunk(200, 3)).to eq "my_content " * 520
  end

  it "returns wpm * words if it is unreadable within the given wpm and minutes" do
    diary_entry = DiaryEntry.new("my_title", "my_content " * 520)
    expect(diary_entry.reading_chunk(200, 2)).to eq ("my_content " * 400).strip
  end

  it "returns the next chunk" do
    diary_entry = DiaryEntry.new("my_title", "my_content " * 520)
    diary_entry.reading_chunk(200, 2)
    expect(diary_entry.reading_chunk(200, 2)).to eq ("my_content " * 120).strip
  end
end