def convert_allcaps(str)
  if str.length > 10
    str.upcase
  else
    str
  end
end

puts convert_allcaps("hello world")
puts convert_allcaps("hello")