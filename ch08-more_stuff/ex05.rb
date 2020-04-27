# Why does the following code...

def execute(block)   # works like this "def execute(&block)"
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# Answer: Because the method expects a block parameter but we didn't pass it a block.
# We must the ampersand (&) in front of the parameter to make it a block.