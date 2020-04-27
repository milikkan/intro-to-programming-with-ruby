my_array = ["john", "mary", "bob", "cynthia", "Captain Ahab"]

my_array.each_with_index do |value, index|
  puts "#{index}.#{value}"
end