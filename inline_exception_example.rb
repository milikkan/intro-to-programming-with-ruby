zero = 0
puts "Before each call"
zero.each {|item| puts item} rescue puts "Cannot do that!"
puts "After each call"