class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
    @tracker = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split.length
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    fail "wpm cannot be 0" if wpm == 0
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    if minutes >= reading_time(wpm)
      return @contents
    else
      # number_of_words = wpm * minutes
      # chunk = @contents.split[@tracker...(@tracker + number_of_words)]
      # @tracker += number_of_words
      chunk = @contents.split[@tracker, wpm * minutes]
      @tracker = wpm * minutes
    end
    return chunk.join(" ")
  end
end