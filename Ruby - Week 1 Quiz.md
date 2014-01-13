# Week 1 Quiz
1. What is the value of `a` after the below code is executed?
 a = 1
    b = a
    b = 3

# Answer - a = 1

2. What's the difference between an `Array` and a `Hash`?

# Answer - Arrays are orderd and set as the number in that order. 
           Hashs are random and are called with their name.


3. Every Ruby expression returns a value. Say what value is returned in the below expressions:

    * `arr = [1, 2, 3, 3]`
    * `[1, 2, 3, 3].uniq`
    * `[1, 2, 3, 3].uniq!`

# Answer - [ 1, 2, 3, 3 ]
           [ 1, 2, 3 ]
           [ 1, 2, 3 ]

4. What's the difference between the `map` and `select` methods for the `Array` class? Give an example of when you'd use one versus the other.

# Answer - 

[1,2,3].select do |e| 
  puts e > 2
end

false, false, true


Select is used to return a new array that meets 
a certain criteria.


[1,2,3].map do |e| 
  puts e + 1
end

2, 3, 4

Map modifies each of the array elements


5. Say you wanted to create a `Hash`. How would you do so if you wanted the hash keys to be `String` objects instead of symbols?

# Answer -

months = Hash.new( "month" )

months = { "January" => 1,  "February" => 2}

puts months["January"]

6. What is returned?

 x = 1
    x.odd? ? "no way!" : "yes, sir!"

# Answer - "no way!"

7. What is x?

x = 1
    3.times do
      x += 1
    end

    puts x

# Answer - 4

8. What is x?

3.times do
    x += 1
    end

    puts x

# Answer - Error


_____________New Questions___________________


9. What are the proper steps to push files onto github?

10. What is the differnce between an float and an intiger?

11. What does -
    def initialize name
    end 
    do in the ruby code.



  