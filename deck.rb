class Deck
  def initialize
    @deck = Card::RANKS.map do |rank|
      Card::SUITS.map do |suit|
        Card.new(rank, suit)
      end
    end.flatten
  end

  def count
    @deck.size
  end

  def shuffle!
    @deck.shuffle!
  end

  def draw(n)
    @deck.pop(n)
  end
end
