# Ch.13

class Die
  def initialize
    # I'll just roll the die, though we could do something else
    # if we wanted to, such as setting the die to have 6 showing.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def luck
    puts "pssst..what number would you really like that die to show"
    puts "go ahead, change it. no one will see."
    while true
    slight_of_hand = gets.chomp.to_i
      if (slight_of_hand >= 1) && (slight_of_hand <= 6)
        @number_showing = slight_of_hand 
        puts "Today is ur lucky day the die is #{@number_showing}"
        break
      else
        puts "what do you want to let them know you are cheating?"
        puts "enter something you could have rolled."
      end
    end
  end
end

die = Die.new
die.roll
puts "The die is showing #{die.showing}"

Die.new.luck






