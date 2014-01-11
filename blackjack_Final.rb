# Here is my Blackjack
# I've been through a few rounds of revisions and it is ok
# not as great as i fist planned but not bad.


def calculate_total(cards) 
  arr = cards.map{ |e| e[1] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end

  # ace correct

  arr.select{|e| e == "A"}.count.times do
    if total > 21
      total -= 10
    end
  end


  return total
end




puts "-----Blackjack-----"

puts ''

puts 'You sit down at a table at the casino.'
puts 'You aske what the game is'
puts ''
puts "The dealer tells you,"
puts 'The name of the game is Blackjack.'
puts 'The object of the game is to get'
puts 'closest to 21 without going over.'

puts 'So, whats your name'

player_name = gets.chomp.capitalize

puts "#{player_name}, want to play some Blackjack?"





while true
  player_play = gets.chomp.downcase
  if player_play == 'yes'
    puts "Alright great."
  

    while true
    suits = [ 'Hearts', 'Diamonds', 'Spades', 'Clubs']
    cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'  ]
    house =  cards * 5
    deck = suits.product(cards)
    deck.shuffle!

    # Deal Cards

    playercards = []
    playercard = []
    dealcards = []

    playercards << deck.pop
    dealcards << deck.pop
    playercards << deck.pop
    dealcards << deck.pop

    dealertotal = calculate_total(dealcards)
    mytotal = calculate_total(playercards)

    # puts "player cards" + playercards.to_s
    # puts "dealer cards" + dealcards.to_s

    puts "Dealer has: #{dealcards[1]} showing."
    puts "#{player_name}, you have: #{playercards[0]} and #{playercards[1]}, for a total of: #{mytotal}"
    puts " "

    if mytotal == 21
      puts "BLACKJACK, you win!"
      next
    end

    while mytotal < 21
      puts "What are you going to do? Hit or stay?"
      hit_or_stay = gets.chomp.downcase


      if !['hit', 'stay'].include?(hit_or_stay)
        puts "please put hit or stay"
        next
      end

      if hit_or_stay == "stay"
        puts "Stay, Dealer flips: #{dealcards[0]} for a total of #{dealertotal}"
        break
      end

      #hit
      new_card = deck.pop
      puts "Dealing card to player: #{new_card}"
      playercards << new_card
      mytotal = calculate_total(playercards)
      puts "Your total is now: #{mytotal}"


      if mytotal == 21
        puts "BLACKJACK, #{player_name} you win!"
        exit
      elsif mytotal > 21
        puts "Sorry #{player_name}, you busted!"
        exit
      end
    end

    if dealertotal == 21
      puts "Sorry #{player_name}, Dealer hit blackjack. You lose."
      exit
    end

    while dealertotal < 17
      new_card = deck.pop
      puts "Dealer gets #{new_card}"
      dealcards << new_card
      dealertotal = calculate_total(dealcards)
      puts "Dealer total is now #{dealertotal}"

      if dealertotal == 21
        puts "Sorry, Dealer hit blackjack. You lose."
        exit
      elsif dealertotal > 21
        puts "Dealer busted! you win"
        exit
      end
    end 


      puts "Dealer cards: "
      dealcards.each do |card|
          puts "=> #{card}"
      end

      puts ''

      puts "#{player_name}\'s cards: "
      playercards.each do |card|
          puts "=> #{card}"
      end

      if (dealertotal < 21) && (dealertotal > mytotal)
        puts "Sorry, Dealer wins"
      elsif (dealertotal < mytotal) && (mytotal < 21)
        puts "Congratulations, #{player_name}, you win!"
      else
        puts "Its a tie"
      end
    

      puts 'would you like to play again?'

      player_again = gets.chomp.downcase
      if player_again == 'yes'
      puts "Alright great."
      elsif player_again == 'no'
      puts "oh, Maybe another time #{player_name}"
      break
      else
      puts 'please put "yes" or "no"'
      end
    end


elsif player_play == 'no'
    puts "oh, Maybe another time #{player_name}"
    break
else
    puts 'please put "yes" or "no"'
  end
end




   