require_relative 'Card_Components'
require_relative 'Card'
require 'pry'

class Deck
  include Card_Components
  attr_accessor :cards

  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle!
  end

  def deal(num)
    cards.pop(num)
  end
end
