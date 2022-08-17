def make_snippet(str)
  if str.split(" ").length <= 5
    str
  else
    str.split(" ")[0..4].push("...").join(" ")
  end
end