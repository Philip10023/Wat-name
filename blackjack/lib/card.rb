require 'pry'
require_relative 'Card_Components'
class Card
  attr_accessor :value, :suit
  def initialize(value, suit)
    @value=value
    @suit=suit
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

  def type_of_card
    @card_type = nil
    if @value.include?('J' || 'Q' || 'K')
           # card['J'] || card['Q'] || card["K"]
       @card_type = "face card"
    elsif @value.include?('A')
       @card_type = "ace"
     else
       @card_type = "number"
    end
    @card_type
  end

end
# Jacky=Card.new('J','♥')
# LittleGuys=Card.new('3','♠')
# AceMasta=Card.new('A','♥')
# # puts LittleGuys.convert_to_num_value
# puts LittleGuys.type_of_card
# # puts Jacky.convert_to_num_value
# puts Jacky.type_of_card
# # puts AceMasta.convert_to_num_value
# puts AceMasta.type_of_card
