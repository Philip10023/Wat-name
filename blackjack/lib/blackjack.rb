require_relative "card"
require_relative "deck"
require_relative "hand"
require 'pry'

deck=Deck.new
hit=deck.deal(1)
playerCards=deck.deal(2)
dealerCards=deck.deal(2)
player = Hand.new(playerCards)
computer = Hand.new(dealerCards)
# binding.pry
#player = Hand.new(playerCard)
#computer = Hand.new(dealerCard)
# deck=Deck.new
# cards=deck.deal(2)
# player=Hand.new(cards)
playerstorage = ""
playerCards.each do |card|
  playerstorage  << "|#{card.value}, #{card.suit}|\t"
end

puts "The player's cards are #{playerstorage}"
puts "Hit or Stand? H/S:"
userinput= gets.chomp
if userinput == 'H'
  player.cards << hit[0]
end
# binding.pry
playerstorage=""
player.cards.each do |card|
  playerstorage  << "|#{card.value}, #{card.suit}|\t"
end
puts "The player's cards are #{playerstorage}"
# binding.pry
dealerstorage = ""
dealerCards.each do |card|
  dealerstorage  << "|#{card.value}, #{card.suit}|\t"
end
puts "The dealer's cards are #{dealerstorage}"
#binding.pry
puts player.calculate_hand
puts computer.calculate_hand
