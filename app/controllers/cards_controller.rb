class CardsController < ApplicationController
  def random_card
    @random_card = CardFacade.random_card
  end

  def show
    @card = CardFacade.get_card(params[:id])
    @user = User.find_by(params[:uid])
    @decks = @user.decks
  end

  # def add_to_deck
  #   @card = Card.find(params[:id])
  #   deck_id = params[:deck_id]

  #   deck = Deck.find(deck_id)
  #   deck.main_board << @card

  #   if deck.save
  #     flash[:success] = "Card added to the deck successfully."
  #     redirect_to deck_path(deck)
  #   else
  #     flash[:error] = "Error adding card to the deck."
  #     redirect_back(fallback_location: root_path)
  #   end
  # end

  def add_to_mainboard
    card = CardFacade.get_card(params[:card_id])
    deck = Deck.find(params[:deck_id])
    deck.cards["main_board"] << card
    deck.save

    redirect_to decks_path(deck), notice: "Card added to the deck's mainboard successfully."
  end
end