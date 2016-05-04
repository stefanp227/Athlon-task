Athlon-task
===========

This is the task to apply for junior developer @ Athlon.

How to use:
  For creating a deck:
    `deck = Deck.new`

  For shuffling a deck:
    `deck.shuffle!` 

  For counting the remaining cards in the deck:
    `deck.count`

  For drawing cards:
    `deck.draw` or `deck.draw(2)`

  For creating a card:
    `card = Card.new(:jack, :spade)`

  For checking wether the card is a face card or not:
    `card.face_card?`

  For comparing two cards:
  	`card <=> other_card`

  For checking if two cards are equal(have the same suit and rank):
  	`card == other_card`

  For getting the name of the card:
  	`card.to_s` will give `Jack of Spade`