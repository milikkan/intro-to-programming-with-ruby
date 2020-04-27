words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each do |word|
  if /lab/.match(word)  # or # word =~ /lab/
    puts "match for #{word}"
  else
    puts "no match for #{word}"
  end
end