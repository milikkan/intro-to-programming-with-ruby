y = 0
3.times do
  y += 1    # y = 1, y = 2, y = 3
  x = y     # x = 1, x = 2, x = 3
end
puts x      # NameError, x is not accessible within outer scope