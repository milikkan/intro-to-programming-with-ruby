# What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# Answer: the program doesn't print anything. It returns a proc object. 
# call method must be called on the block to execute it.