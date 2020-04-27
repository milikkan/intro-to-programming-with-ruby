def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# prints the given words to the screen but still returns nil
# because there is an implicity return (puts is the last evaluated expression)
# can be checked using 'p scream("Yippeee")'