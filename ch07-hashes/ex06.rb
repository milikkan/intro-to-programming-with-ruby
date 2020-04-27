# Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

p my_hash[:x]

p my_hash2[x]
p my_hash2["hi there"]

# for my_hash, the key is symbol type and for my_hash2, the key is string type