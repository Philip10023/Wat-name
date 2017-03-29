require_relative 'Deck'
require_relative 'Card'
require 'pry'
class Hand
  attr_accessor :Deck, :cards
  def initialize(cards)
    @cards = cards
  end
  def calculate_hand
    card_1 = @cards[0].convert_to_num_value
    card_2 = @cards[1].convert_to_num_value
      if card_1 == 11 && card_2 == 11
         card_2 = 1
      end
    card_1 + card_2
  end
  def convert_to_num_value
    if @value == 'J' || @value== 'Q' || @value=='K'
           # card['J'] || card['Q'] || card["K"]
       @value=10
    elsif @value == 'A'
       @value=11
    end
    @value
  end
end
