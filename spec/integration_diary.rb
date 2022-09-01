require 'diary'
require 'diary_entry_2'

RSpec.describe "integration" do 
  context "after adding some entries" do
    it "method all, it lists out all the entries added" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title 1", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end

    describe "count_words" do 
      it "counts the words in all diary entries content" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary_entry_2 = DiaryEntry.new("my title 1", "my contents 2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        diary.count_words
        expect(diary.count_words).to eq 5
      end
    end

    describe "reading_time" do 
      it "returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm." do
        diary = Diary.new
        diary_entry = DiaryEntry.new("my_title", "my_content " * 520)
        diary.add(diary_entry)
        expect(diary.reading_time(200)).to eq 3
      end
    end
    describe "best reading time entry behaviour" do
      context "we just have one entry" do
        it "returns that entry" do
          diary = Diary.new
          diary_entry_1 = DiaryEntry.new("my title", "my contents")
          diary.add(diary_entry_1)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq diary_entry_1
        end
      end

      context "the first entry is unreadable in time" do 
        it "returns nil" do
          diary = Diary.new
          diary_entry_1 = DiaryEntry.new("my title", "my contents longer")
          diary.add(diary_entry_1)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq nil
        end
      end

      context "where we have multiple entries" do
        it "returns the longest entry user can read in this time" do
          diary = Diary.new
          best_entry = DiaryEntry.new("my title", "one two")
          diary.add(DiaryEntry.new("my title", "one"))
          diary.add(best_entry)
          diary.add(DiaryEntry.new("my title", "one two three"))
          diary.add(DiaryEntry.new("my title", "one two three four"))
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq best_entry
        end
      end 
    end
  end
end