class Diary
  def initialize
    @entries = []
  end

  def add(entry) 
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    @entries.sum do |word|
      word.contents.split(" ").length
    end
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    fail "wpm cannot be 0" if wpm == 0
    (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    readable_entries = @entries.filter do |entry| 
      entry.reading_time(wpm) <= minutes
    end
    sort_by_longest = readable_entries.max_by do |entry| 
      entry.count_words
    end
  end
end