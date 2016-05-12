require_relative '../card'
require_relative 'spec_helper'

describe Card, "#face_card?" do
	context "testing card functionalities" do
		it "checks if a given card is a face card or not" do
			card = Card.new(:jack, :heart)
			expect(card.face_card?).to eql true
		end
	end
end

describe Card, "#to_s" do
	context "testing card functionalities" do
		it "tests the string convertion" do
			card = Card.new(:jack, :heart)
			expect(card.to_s).to eql "Jack of Heart"
		end
	end
end

describe Card, "#==" do
	context "testing card functionalities" do
		it "checks if two cards are the same" do
			card = Card.new(:jack, :heart)
			card2 = Card.new(:jack, :suit)
			expect(card == card2).to eql false
		end
	end
end

describe Card, "#value" do
	context "testing card functionalities" do
		it "tests the value of the card" do
			card = Card.new(:jack, :heart)
			expect(card.value).to eql 11
		end
	end
end

describe Card, "#<=>" do
	context "testing card functionalities" do
		it "compares two cards" do
			card = Card.new(:jack, :heart)
			card2 = Card.new(:king, :spade)
			expect(card <=> card2).to eql -1
		end
	end
end