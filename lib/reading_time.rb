def reading_time(text)
  fail "no text given" if text.nil?
  words = text.split(" ").length
  time = words * 0.3 
end