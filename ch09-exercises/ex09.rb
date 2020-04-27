h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
p h[:b]
# or
p h.fetch(:b)

# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h
# or
h.store(:e, 5)
p h

# 3. Remove all key:value pairs whose value is less than 3.5
#h.each {|key, value| h.delete(key) if value < 3.5}
#puts h
# or
h.delete_if {|key, value| value < 3.5}
p h