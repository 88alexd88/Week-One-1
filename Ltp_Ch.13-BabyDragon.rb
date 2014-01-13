# Ch.13
# Baby Dragon


puts " "

puts "SUPRISE, now you OWN a DRAGON"

puts " "

class Dragon

puts "You need to talk care of your dragon. They have been know"
puts "to get desperate when hungry. To have a dragon grow big"
puts "and strong, you neend to play with it, walk it and feed it."
puts "You'll also need to makes sure it sleeps. Good luck."
puts " "
puts "So what would you like to do?"
puts "Your options are:"
puts "Feed -important!"
puts "Toss  - playing is good for young dragons."
puts "Walk  - you don't want a dragon making a mess in the house"
puts "bed - If doesn't fall asleep"
puts "rock - to rock to sleep."
puts "Please enter: feed, toss, walk, bed, or rock to interact."
puts " "
puts "Name your Dragon"

	def initialize name
		pet_name = gets.chomp.capitalize
		name = pet_name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # He's full.
		@stuff_in_intestine = 0 # He doesn't need to go.
		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
	puts "You put #{@name} to bed."
	@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts 'He giggles, which singes your eyebrows.'
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts 'He briefly dozes off...'
		passage_of_time
		if @asleep
			@asleep = false
			puts '...but wakes when you stop.'
		end

	end
	private
	# "private" means that the methods defined here are
	# methods internal to the object. (You can feed your
	# dragon, but you can't ask him whether he's hungry.)
	def hungry?
		# Method names can end with "?".
		# Usually, we do this only if the method
		# returns true or false, like this:
		@stuff_in_belly <= 2
	end
	def poopy?
		@stuff_in_intestine >= 8
	end
	def passage_of_time
		if @stuff_in_belly > 0
			# Move food from belly to intestine.
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		else # Our dragon is starving!
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			puts "Apparently, you are not a dragon trainer."
			puts "#{@name} flys away and gets a new home with a new trainer."
			exit # This quits the program.
		end
		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end
		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name}'s stomach grumbles..."
		end
		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
		end
			puts "#{@name} does the potty dance..."
		end
	end
end

pet = Dragon.new(0)


while true
	puts "what will you do now?"
	action_input = gets.chomp.downcase
	if action_input == "feed"
		pet.feed
	elsif action_input == "walk"
		pet.walk
	elsif action_input == "bed"
		pet.put_to_bed
	elsif action_input == "toss"
		pet.toss
	elsif action_input == "rock"
		pet.rock
	else
		puts "NO, whatever that is don't ever do that to a dragon!"
	end
	
end






