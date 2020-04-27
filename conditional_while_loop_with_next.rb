x = 0

while x <= 10
  if x == 3 
    x += 1
    next         # skip 3
  elsif x.odd?
    puts x
  end
  x += 1
end
    