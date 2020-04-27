contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {
  "Joe Smith" => {},
  "Sally Johnson" => {}
}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
index = 0
contacts.each_value do |value|
  value[:email] = contact_data[index][0]
  value[:address] = contact_data[index][1]
  value[:phone] = contact_data[index][2]
  index += 1
end

p contacts