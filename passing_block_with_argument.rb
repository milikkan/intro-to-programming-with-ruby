def take_block(number, &block)
  block.call(number)
end

take_block(5) do |num|
  puts num
end