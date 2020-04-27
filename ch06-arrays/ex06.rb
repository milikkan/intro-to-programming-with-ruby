# You run the following code...

# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

#...and get the following error message:

#TypeError: no implicit conversion of String into Integer
#  from (irb):2:in `[]='
#  from (irb):2
#  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

# Answer: To access or set an array element at a specific index, we need to provide 
# an integer literal or any expression that will evaluate to an integer into the 
# sqaure brackets. Here, a string is provided, which causes this error.
# correct usage should be "names[3] = 'Jody'"