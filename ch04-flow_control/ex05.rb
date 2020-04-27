# When you run the following code...

=begin

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

# end missing here

equal_to_four(5)

=end

# You get the following error message..

# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

# Why do you get this error and how can you fix it?

# Answer: the closing "end" for the equal_to_four method is missing and Ruby is complaning about it.
# We should add one more "end" after the "end".