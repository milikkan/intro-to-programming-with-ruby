# What method could you use to find out if a Hash contains a specific value in it? 
# Write a program to demonstrate this use.

# Hash#value? or Hash#has_value? methods can be used to search for a value in the hash

my_hash = {
  one: 1,
  two: 2,
  five: 5,
  ten: 10,
  name: "joe"
}

p my_hash.value?(10)          # true
p my_hash.has_value?("joe")   # true
p my_hash.value?(3)           # false