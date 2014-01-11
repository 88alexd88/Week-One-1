# --- Pass by reference vs value ---
# Calling a methed that does not mutate the caller 
# will not change the array outside the method. 



def some_method(x)
  x = [1, 2, 3, 2]
  puts x
end

x = [ 5, 6, 7 ]
some_method(x)
puts x
puts ' '

# Calling a method that mutates the array will change 
# the result.

def some_method(x)
  puts x.uniq!
end

x = [ 5, 6, 7, 5]
some_method(x)
puts ' '

def some_method(x)
  x.pop
end

x = [ 5, 6, 7, 5]
some_method(x)
puts x
puts ' '

# Var Scope

# 1 

a = 5 # local var

[ 1, 3, 3 ].each do |e|
  a = [12 , 13, 13, 14] # a- re-assigning var to something else
    
    def num(a) # b- does not mutate
    a = 4
    end

  a.pop # c- does mutate
  puts a.to_s

end

puts ' '
puts num(a) + 5 
puts a

# 2

puts ' '

p = 10

[ 1, 2, 3 ].each do |e|
  b = 7
  m = 1
  

  [1].each do |e|
  b = 8
  m = 5
  d = 70
  p += 10 # adds 10 per activation
  end

  puts b
  puts p
  puts m
  # puts d  "`block in <main>': undefined local variable or method `d' for main:Object (NameError)""
  # d not initialized in this scope

end

puts p
puts e # "undefined local variable or method `e' for main:Object (NameError)""












