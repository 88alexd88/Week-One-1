# ch.13 Orange tree
# This Orange tree should last for 50 years
# be about 50 feet tall 
# and in the end put out around 235 Oranges

class Orange_Tree
#def & events & explanation
puts " "
puts "Orange Tree"
puts ""
puts "You've planted an Orange tree."
puts "you will now be able to enjoy its"
puts "fruits for years to come. The first"
puts "few years their wont be much, but"
puts "in time it will be more then you"
puts "could possibly hope to eat alone."
puts ' '
puts "Whenever your are currious,"
puts "you may check the height, age,"
puts "count the Oranges, pick a Orange"
puts "until there are no more, and"
puts "age the tree one year to watch"
puts "it change"
puts " "
puts "Options to type:"
puts "check height"
puts "check how old"
puts "count fruit"
puts "pick fruit"
puts "age tree"
puts " "
puts "What will you name it?"


def initialize name
  tree = gets.chomp.capitalize
  name = tree
  @name = name
  @age = 1 # age when planted
  @fruit_on_tree = fruit # fruit on tree to start
  @height_current = 2  # when planted
  puts "#{@name} is planted."
end

def height
  # asks Height
  
  if @height_current > 25
    puts "The hieght of #{@name} is  #{@height_current} feet tall"
    puts "Perfect treehouse tree."
  else
    puts "The hieght of #{@name} is  #{@height_current } feet tall"
  end
end

def age
  # asks age
  puts "The age of #{@name} is  #{@age} years"
end

def count #fruit
  # how many fruit
  puts "There are #{@fruit_on_tree} on #{@name}"
  if @fruit_on_tree >= 20
    puts "You don't want to let those go to waste."
  elsif @fruit_on_tree < 20
    puts "not bad, not bad."
  elsif @fruit_on_tree == 0
    puts "There will be more fruit next year"
  end
end

def pick_eat

  if @fruit_on_tree > 0
    @fruit_on_tree -= 1
    puts "you picked a fruit. MMM...perfect"

  else @fruit_on_tree == 0
    puts "you'll have to wait until next year \n"
         "there is nothing left."
  end

end

def age_year
  if @age <= 50
    @age = @age + 1
    @height_current =  @height_current + 1
    @fruit_on_tree == fruit
    puts "One year has passed. Check how your tree has changed"
  else age_year > 50
    puts "This tree will have no more fruit. Time to plant a new tree"
    exit
  end
end

private

def fruit
  @fruit_on_tree = @age * rand(5)
end

end

tree =Orange_Tree.new(0)

while true
  puts "what will you do now?"
  action_input = gets.chomp.downcase
  if action_input == "check height"
    tree.height
  elsif action_input == "check age"
    tree.age
  elsif action_input == "count fruit"
    tree.count
  elsif action_input == "pick fruit"
    tree.pick_eat
  elsif action_input == "age tree"
    tree.age_year
  else
    puts "NO, who would do that to a fruit tree!"
  end
  
end






