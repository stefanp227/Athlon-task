class Card
  RANKS = %i(ace two three four five six seven eight nine ten jack queen king).freeze
  SUITS = %i(heart club diamond spade).freeze

  attr_accessor :suit
  attr_accessor :rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    value > 10
  end

  def to_s
    "#{rank.capitalize} of #{suit.capitalize}"
  end

  def ==(other)
    rank == other.rank && suit == other.suit
  end

  def value
    RANKS.index(@rank) + 1
  end

  def <=>(other)
    value <=> other.value
  end
end
