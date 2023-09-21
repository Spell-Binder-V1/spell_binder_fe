class UserDeckFacade
  def self.receive_user_decks
    user_data = SpellbinderService.get_user_decks
    user_decks = user_data.map! do |deck|
      UserDeck.new(deck)
    end

    user_decks.each do |deck|
      deck.main_board.flatten!.map! do |card|
        Card.new(card)
      end
    end

    user_decks.each do |deck|
      deck.side_board.flatten!.map! do |card|
        Card.new(card)
      end
    end

    user_decks.each do |deck|
      deck.maybe_board.flatten!.map! do |card|
        Card.new(card)
      end
    end
    user_data
  end
end