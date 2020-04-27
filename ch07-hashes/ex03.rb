employee = {
  name: "John Doe",
  age: 32,
  department: "Operations",
  remaining_leave_days: 12,
  city: "Spring Field" 
}

employee.each_key { |key| puts key }

puts "-----------"

employee.each_value { |value| puts value }

puts "-----------"

employee.each { |key, value| puts "#{key}: #{value}" }