i = 0

loop do
  i += 2
  if i == 4
    next     # skip 4
  end
  puts i
  if i == 10
    break
  end
end