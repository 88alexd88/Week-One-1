# Ch.13 Class
#class Integer
class Integer 
  def to_w

    def english_number number
      if number < 0 # No negative numbers.
        return 'Please enter a number that isn\'t negative.'
      end

      if number == 0
        return 'zero'
      end

        # No more special cases! No more returns!
      num_string = '' # This is the string we will return.
      ones_place = ['one', 'two', 'three',
                    'four', 'five', 'six',
                    'seven', 'eight', 'nine']
      tens_place = ['ten', 'twenty', 'thirty',
                    'forty', 'fifty', 'sixty',
                    'seventy', 'eighty', 'ninety']
      teenagers = ['eleven', 'twelve', 'thirteen',
                   'fourteen', 'fifteen', 'sixteen',
                   'seventeen', 'eighteen', 'nineteen']

      
      left = number

        write = left / 1_000_000 
        left = left - write * 1_000_000

      if write > 0
      # Now here's the recursion:
        million = english_number write
        num_string = num_string + million + ' million'
        if left > 
          num_string = num_string + ' '
        end
      end

      write = left / 1_000 
      left = left - write * 1_000 

      if write > 0
        thousand = english_number write
        num_string = num_string + thousand + ' thousand'
        if left > 0
        # So we don't write 'two hundredfifty-one'...
          num_string = num_string + ' '
        end
      end


      write = left/100 # How many hundreds left?
      left = left - write*100 # Subtract off those hundreds.

      if write > 0
      # Now here's the recursion:
        hundreds = english_number write
        num_string = num_string + hundreds + ' hundred'
          if left > 0
          # So we don't write 'two hundredfifty-one'...
            num_string = num_string + ' '
          end
      end

      write = left/10 # How many tens left?
      left = left - write*10 # Subtract off those tens.

      if write > 0
        if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
          num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
        left = 0
        else
          num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
        end

        if left > 0
      # So we don't write 'sixtyfour'...
          num_string = num_string + '-'
        end
      end

      write = left # How many ones left to write out?
      left = 0 # Subtract off those ones.

      if write > 0
        num_string = num_string + ones_place[write-1]
      # The "-1" is because ones_place[3] is
      # 'four', not 'three'.
      end

      # Now we just return "num_string"...
        num_string
    end
   english_number(self)

  end
end

puts 12890.to_w

# Array


class Array
  def shuffle
  arr = self
  # Now we can just copy the old shuffle method.
  shuf = []
    while arr.length > 0
    # Randomly pick one element of the array.
    rand_index = rand(arr.length)
    # Now go through each item in the array,
    # putting them all into new_arr except for
    # the randomly chosen one, which goes into
    # shuf.
    curr_index = 0
    new_arr = []
      arr.each do |item|
        if curr_index == rand_index
        shuf.push item
        else
        new_arr.push item
        end
      curr_index = curr_index + 1
      end
    # Replace the original array with the new,
    # smaller array.
    arr = new_arr
    end
    
  shuf
  end
end

puts [1, 2, 3, 4, 5, 6, 7].shuffle


# factorial

class Integer

  def factorial
    if self <= 1
    1
    else
    self * (self-1).factorial
    end
  end

end

puts [1,2,3,4,5].shuffle
puts 7.factorial

