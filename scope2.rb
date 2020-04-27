a = 5

3.times do |n|
  a = 3         # a is reassigned 3 times
  b = 5         # b is initialized in this scope 
end

puts a          # prints 3 
puts b          # NameError, b is not accessible in outer scope