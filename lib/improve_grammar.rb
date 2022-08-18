def improve_grammar(text)
  arr = text.split("")
  ("A".."Z").include?(arr[0]) && (".""!""?").include?(arr[-1])
end