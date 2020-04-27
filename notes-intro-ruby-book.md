### Debugging Ruby Code With "pry"

- gem install pry
- both used for debuging and as an alternative to irb
- to debug
  - require "pry" at the top of the file
  - add binding.pry at the line where you want the execution to stop
  - you can inspect the variables at that point when you run the file
  - to exit pry and continue running the file, hit CTRL + D

### Strings

- use double quotes for string interpolation
- syntax "my favorite color is #{color}"

### Symbols

- created using colon (:) in front of the identifier
- symbols are immutable

### nil

- represents nothing (like null or undefined)
- nil? method checks for nil. "hello".nil? returns false
- nil is falsy, it can be used in an expression such as if statement
- false is not equal to nil, false == nil returns false
- nil == nil returns true

### Comparison

* "3" == 3 returns false because types are different.

### Concatenation

* You cannot concatenate a string with a number. You should explicitly convert the number to string
* "2" + 2.to_s => "22"
* "2".to_i + 2 => 4
* "abc".to_i returns 0, not an error
* "3abc".to_i returns 3
* "3.5abc".to_f returns 3.5
* "abc3".to_i returns 0, "abc3".to_f returns 0.0

### Variable Scope

* In Ruby, scope is defined by a block.
* A block is either delimited by { } or do..end (for loops do not create a new block scope)
* Inner scope can access variables that are initialized in an outer scope.
* Outer scope variables cannot access inner scope variables.

### Types of Variables

* There are 5 types of variables: constants, global vars, class vars, instance vars, local vars
* constants are denoted by capitalizing all of the letters of the variable. While you can reassign a constant, Ruby will give a warning about it.
* constants cannot be declared in methods and they are available to the whole application's scope
* global vars start with a dollar sign. ($my_global). They are available to the who application scope. Stay away from global vars as they may cause unexpected complications.
* class vars are declared starting with two at sign (@@instances = 0)
* instance vars are declared with starting one at sign (@my_var)
* do not use all-caps or $, @ signs for starting a local variable.

### Methods

* Number of arguments provided to the method must match with the number of parameters at the method definition.
* You can provide default parameters, def say(msg="hello")
* During method invocation, parentheses can be omitted. say "hello" or say("hello")
* Method definition creates its own scope. Method variables (and parameters) are local to the method scope and cannot be accessed from outside. 
* Local variables within the method cannot reference the data outside the method unless provided as a parameter.
* Remember that method invocation with a block can access outside variables but methıd definition cannot.

### Return Statement

* In Ruby, every method returns the result of last line that is executed. This is called implicit return. (unless an explicit return comes before)

### if statement

* if expression  / elsif expression / else / end
* use "then" keyword for the one-line syntax
  * if x == 3 then .... end
* if and unless can be appended at the back
  * puts "true" if true
  * puts "true" unless false 

### Operator Precedence

1. comparison (<, <=, >, >=)
2. equality (==, !=)
3. logical AND (&&)
4. logical OR (||)

### case statement

* case expression / when value / when value / else / end
* You can assign the result of a case statement into a variable 
* second form of case: without the expression
  * case / when expression / when expression / else / end
* then keyword can be used with when for a one-line statement
  * when 5 then puts "it is 5"

### True and False

* In Ruby, every expression that evaluates to a value other then **false** and **nil** is true.
* 0, "" (empty string) or "false" is truthy.
* Only false and nil are falsy.

### Loops

* Use break to exit loop
* Use next to skip the rest of the current iteration
* **while** expression ...... **end**
* **until** expression ...... **end** -> opposite of the while loop
* while and until loops return nil after execution
* **for** variable **in** collection or range **do** ...... **end**
  * ranges 1..3 captures 1, 2, 3 and 1...3 captures 1, 2
* for loop returns the collection or range after execution

### Arrays

* Trying to access an index that is higher than the length of the array returns nil, not an error.
  * Likewise, trying to reference an index of a string that is beyond its length returns nil.
* shovel operator ( << ) does the same job as push method. This also mutates the array.
* We can check for array equality using ==
  * [1, 2, 3] == [1, 2, 3] -> true
* array.to_s method returns the string representation of the array
* Array(1..3) creates an array from the range. The result is [1, 2, 3].

### Hashes

* We can pass optional parameters as a Hash to methods.
  * def greeting(name, options = {})
  * we can call this method greeting("Bob", {age: 62, city: "New York City"})
  * or greeting("Bob", age: 62, city: "New York City"), curly braces are not required when the hash is last parameter
* hash syntax (both examples use symbols as key)
  * hash = { name: "Bob"} -> new syntax
  * hash = { :name => "Bob" } -> old syntax prior to Ruby 1.9
* Key should be symbol type. 
  * Actually keys can be any type of data such as String, Array etc. We should use hash rocket in this case (=>). Symbol is the recommended key type.

### Regex

* To check if certain characters or patterns exist use /pattern/
  * "powerball" =~ /b/ -> this expression returns 5, which is the index of first matching "b"
  * /b/.match("powerball") -> returns a matchdata object that can be used as if expressions

### Blocks

* To pass a block to a method use &. If there are multiple parameters, block must come last.
  * def take_block(number, &block)
* Block can be called with the call method
  * block.call(number) -> number parameter is passed to the block

### Procs

* Procs can be saved and passed into methods without typing every time like blocks.
* Use Proc.new to define. Procs can also take parameters.

### Exception Handling

* use begin / rescue / end structure
* there is also inline rescue versşon
  * "some error code" .... rescue puts "error"
* we can rescue against a specific exception
  * begin / ....  / rescue ZeroDivisionError => e /  ......(puts e.message) ....  / end

## Ruby Methods That I Encountered

* p -> same as puts but returns the argument instead of nil. puts returns nil. 

  ​       p prints nil return values whereas puts prints nothing to the screen

* print -> prints without new line, returns nil

* array.pop -> takes out and returns the last element of the array. Mutates the array

* array.push -> pushes the item at the end, returns the new array. Mutates the array.

* array.last -> returns the last element without mutating the array

* array.first -> does the opposite

* loop -> takes a block and repeats the block until it sees a break statement

* array.each {block} -> executes the block for each element and returns the original array

* array.map {block} -> like each method, but returns an array of the results

* array.collect -> alias of map

* array.delete_at(index) -> deletes the item at the index, returns the deleted item, mutates the array

* array.delete(item) -> deletes the all instances of the item from the array and returns the item, mutates the array

* array.delete_if{ |value| .... } -> deletes values for which the block returns true.  Mutates and returns the array.

* array.uniq -> returns a new array with all the duplicates removed.

* array.uniq! -> mutates the caller

* array.select {block} -> goes over each element and returns a new array that is built from the items that return a true. It does not mutate the caller.

* array.unshift(item) -> pushes item at the beginning, returns the new array, mutates the array. This is opposite of array.push

* array.shift -> removes the item at the fist positin and returns. Mutates the array. This is the opposite of array.pop

* array.include?(item) -> checks for the existence of the item

* array.flatten -> returns one dimensional array from a nested array. It doesn't mutate the caller.

* array.each_index{block} -> iterates over each element, the block accepts the index (not the item) as the parameter. Returns the original array.

* array.each_with_index {block} -> takes value as the first argument and the index as the second argument to the block provided.

* array.sort -> sorts the array in ascending order by default. Returns the sorted array and doesn't mutate the array.

* array.sort! -> destructive version of sort

* array.product(array) -> returns a combination array that includes pairs of arrays

* array.index(item) -> returns the index of the first occurrence of the item 

* hash.delete(key) -> deleted key-value pair and returns the deleted value.

* hash.delete_if {block |key, value| .... } -> deletes k-v pairs for which the block returns true. Mutates the hash and return new hash.

* hash.merge(new_hash) -> merges two hashes and returns the combined hash

* hash.merge! -> does the same destructively

* hash.empty? -> returns true if there is no key value pair

* hash.has_key?(key) -> checks for the existence of key and returns a boolean

* has.has_value?(value) -> check the existence of value and returns a boolean

* hash.value?(value) -> sames has_value?

* hash.select { |key, value| ... } -> selects the key-value pairs that return true and returns a new hash formed of these

* hash.fetch(key) -> returns value associated with the key. We can pass an optional value to be returned when the key is not present. 

* hash.store(key, value) -> adds key-value pair and returns the value. Mutates the hash.

* hash.to_a -> returns the array version of the hash. It is 2 2 dimensional array where each key-value pair forms an array inside the array.

* hash.keys -> returns all keys as an array

* hash.values -> returns all values as an array

* hash.each {|key, value| .....} -> applies block to each key-value pair, returns caller hash.

* hash.each_key{ |key| ..... } ->applies block to each key, returns caller hash.

* hash.each_value{ |value| .... } -> applies block to each value, returns caller hash.

* string.start_with(prefix1, prefix2 ...) -> return true if str starts with either one of the prefixes 

