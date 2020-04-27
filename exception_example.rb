names = ["bob", "kevin", "joe", nil, "marry"]

names.each do |name|
  begin
    if name.length > 3
      puts "#{name} has more than 3 letters"
    end
  rescue NoMethodError => e
    puts "Something went wrong"
    puts e.message
  end
end