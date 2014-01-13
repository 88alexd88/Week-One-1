# Ch.12

karma = Time.new - Time.local(1988, 1, 7, 14, 15)

from_bil_s = 1_000_000_000 - karma


time = Time.new
time_bil_s = time + from_bil_s.to_f

puts time_bil_s  # show the date of when I'll be 1 billion seconds old 
                 # ( at the time it was 2019-09-15 17:01:40 -0400)
puts from_bil_s # show result form line 5
puts karma + from_bil_s # Math check

puts ' '
puts ' '

puts "What year were you born in?"
year = gets.chomp

puts "What number month were you born on?"
month = gets.chomp

puts "What number day of the month were you born on?"
day = gets.chomp

time = Time.new - Time.local(year, month, day)

years_old = time / 31_536_000

puts "I bet you are #{years_old}"

# I don't think I get the whole birthday spanking thing... lol 
congrats = "SPANK \n" * years_old
puts congrats


# Ch. 12.6 

# Party like it’s roman_to_integer 'mcmxcix'!


def roman_to_modern roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}

  total = 0
  prev = 0

  roman.reverse.each_char do |c_or_C|
  c = c_or_C.downcase
  value = digit_vals[c]

  if !value
    puts 'This is not a roman numeral!'
    return
  end

  if value < prev
    value *= -1
    else
    prev = value
  end

  total += value
  end

  total
end


puts(roman_to_modern('mx'))
puts(roman_to_modern('CCMD'))



# Birthday Helper

birth_dates = {}

File.read('important_birthdays.txt').each_line do |line|
  line = line.chomp

  first_comma = 0

  while line[first_comma].chr != ',' && first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-13..-1]
  birth_dates[name] = date

end

puts 'Whose birthday would you like to look up?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "You'll need to add that to the list."
else
  puts date[0..6]
end























