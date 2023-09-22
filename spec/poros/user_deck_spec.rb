require 'rails_helper'

RSpec.describe UserDeck do
  it 'exists' do
    user_deck_data = {
      username: 'sample_username',
      name: 'Sample Deck',
      cards: [
        {
          main_board: ['Card 1', 'Card 2'],
          side_board: ['Sideboard Card 1'],
          maybe_board: ['Maybeboard Card 1', 'Maybeboard Card 2']
        }
      ]
    }

    user_deck = UserDeck.new(user_deck_data)

    expect(user_deck).to be_a(UserDeck)
    expect(user_deck.username).to eq('sample_username')
    expect(user_deck.deck_name).to eq('Sample Deck')
    expect(user_deck.main_board).to eq(['Card 1', 'Card 2'])
    expect(user_deck.side_board).to eq(['Sideboard Card 1'])
    expect(user_deck.maybe_board).to eq(['Maybeboard Card 1', 'Maybeboard Card 2'])
  end
end
