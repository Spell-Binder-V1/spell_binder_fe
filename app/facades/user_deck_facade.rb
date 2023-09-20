class UserDeckFacade
  def self.receive_user_profile(deck_id)
    user_data = SpellbinderService.get_user_profile(deck_id)
    user = user_data.map do |data|
      User.new(data)
    end
    decks = user.decks.map do |deck|
      Deck.new(deck)
    end

    user.decks = []
    user.decks << decks

    cards = user.decks.cards.map do |card|
      Card.new(card)
    end

    user.decks.cards = []
    user.deck.cards << cards

    user
  end
end