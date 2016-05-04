class Deck
  def initialize
    @cards = Card::RANKS.map do |rank|
      Card::SUITS.map do |suit|
        Card.new(rank, suit)
      end
    end.flatten
  end

  def count
    @cards.size
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw(n)
    @cards.pop(n)
  end
end
