require_relative '../deck'
require_relative '../card'
require_relative 'spec_helper'

describe Deck, "#count" do
	context "testing deck functionalities" do
		it "checks the size of the deck" do
			deck = Deck.new
			expect(deck.count).to eql 52
		end
	end
end

describe Deck, "#draw" do
	context "testing deck functionalities" do
		it "tests draw function" do
			deck = Deck.new
			deck.draw(5)
			expect(deck.count).to eql 47
		end
	end
end

describe Deck, "#shuffle!" do
	context "testing deck functionalities" do
		it "tests the shuffle! function" do
			deck = Deck.new
			deck2 = deck.shuffle!
			expect(deck == deck2).to eql false
		end
	end
end