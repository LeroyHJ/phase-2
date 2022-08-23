require 'count_word'

class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @contents = contents
    @title = title
    @start_position = 0
  end

  def title
    # Returns the title as a string
    "#{@title}"
  end

  def contents
    # Returns the contents as a string
    "#{@contents}"
  end

  def count_words
    return count_word(@contents)
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    fail "reading time must be more than 0" unless wpm > 0
    return (count_words / wpm.to_f).ceil
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
 
    number_of_words = wpm * minutes
    if @start_position >= @contents.split.length
      @start_position = 0
    end
    result = @contents.split[@start_position...(@start_position + number_of_words)]
    @start_position += number_of_words
    return result.join(" ")
  end
end