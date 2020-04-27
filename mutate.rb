a = [1, 2, 3]

def mutate(array)
  array.pop        # this method call mutates the array parameter
end                # pop method mutates the caller  

def no_mutate(array)
  array.last       # last method doesn't mutate the caller 
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"