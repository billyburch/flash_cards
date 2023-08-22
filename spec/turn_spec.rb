require './lib/turn'
require './lib/card'

card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
turn = Turn.new("Juneau", card)

turn.card

turn.guess

turn.correct?

turn.feedback