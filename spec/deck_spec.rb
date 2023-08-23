require './lib/card'
require './lib/deck'
require 'pry'

RSpec.describe Deck do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

  it 'card_1 exist' do
  expect(card_1).to be_instance_of(Card)
  end

  it 'card_2 exist' do
  expect(card_2).to be_instance_of(Card)
  end

  it 'card_3 exist' do
  expect(card_3).to be_instance_of(Card)
  end

  it 'cards is an array' do
  expect(cards).to eq([card_1, card_2, card_3])
  end

  it 'deck as instance' do
  expect(deck.cards).to eq(cards)
  end

  it 'counts cards in deck' do
    expect(deck.count).to eq(cards.length)
  end

  it 'returns cards in category' do
    expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])
  end

  it 'returns cards in category' do
    expect(deck.cards_in_category(:Geography)).to eq([card_1])
  end

  it 'returns cards in category' do
    expect(deck.cards_in_category("Pop Culture")).to eq([])
  end
end
    

   


