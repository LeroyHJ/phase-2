require 'diary_entry'

RSpec.describe DiaryEntry do
  it "title method" do
    titles = DiaryEntry.new("makers", "makers academy")
    expect(titles.title).to eq "makers"
  end

  it "contents method" do 
    content = DiaryEntry.new("makers", "makers academy")
    expect(content.contents).to eq "makers academy"
  end
  
  it "count_word method" do
    words = DiaryEntry.new("makers", "makers academy")
    expect(words.count_words).to eq 2
  end

  it "count_word method" do
    words = DiaryEntry.new("makers", "")
    expect(words.count_words).to eq 0
  end

  it "reading_time" do
    time = DiaryEntry.new("makers", "hello " * 555)
    expect(time.reading_time(200)).to eq 3
  end

  it "fails" do 
    time = DiaryEntry.new("makers", "hello" * 0)
    expect { time.reading_time(0) }.to raise_error "reading time must be more than 0"
  end

  it "reading_chunk method" do
    diary_entry = DiaryEntry.new("makers", "makers academy august is an awsome cohort")
    expect(diary_entry.reading_chunk(1, 5)).to eq "makers academy august is an"
  end

  it "reading_chunk method returns the next 2 words" do
    diary_entry = DiaryEntry.new("makers", "makers academy august is an awesome cohort")
    diary_entry.reading_chunk(1, 5)
    expect(diary_entry.reading_chunk(1, 5)).to eq "awesome cohort"
  end

  it "reading_chunk method resets the contents if all contents has been read" do
    diary_entry = DiaryEntry.new("makers", "makers academy august is an awesome cohort")
    diary_entry.reading_chunk(1, 5)
    diary_entry.reading_chunk(1, 5)
    expect(diary_entry.reading_chunk(1, 5)).to eq "makers academy august is an"
  end
end