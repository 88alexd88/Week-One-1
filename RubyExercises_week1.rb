#rubyExercises_week1

# 1
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.each { |e| puts e }
puts ' '

# 2 
a.each { |e| puts e if e > 5 }
puts ' '

# 3
a.select { |e| e % 2 == 1 if e > 5 }
a.select { |e| puts e.odd? e > 5}
puts ' '

# 4
a << 11
a.unshift(0)

# 5
a.pop
a << 3

# 6
a.uniq

a.uniq # mutation on caller

# 7
# Hashes have key value pairs, and call the hash by the key, and have {}. 
# Arrays are order groupes of input and pull from a library, and have []

# 8

# 1.8
{:name => 'alex'}
# 1.9
h = {name: 'alex'}
h [:name]

# 9
h = { a:1, b:2, c:3, d:4 }

h[:b]

# 10
h[:e] = 5


# 11
# 12
# what happen to those two

# 13
h.delete_if{|k,v| v < 3.5}

# 14
# yes

{ a: [ 1, 2, 4 ], b: "hi", c: 4}


[{ a: [ 1, 2, 4 ], b: "hi", c: 4}]

# 15
"http://api.rubyonrails.org"
# I like the look of this and it is pretty 
# straight forward. the hope is rubyonrails.org will
# keep everytthing up to date.



