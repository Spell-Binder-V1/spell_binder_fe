class CardsController < ApplicationController
  def random_card
    @random_card = CardFacade.random_card
  end

  def show
    @card = CardFacade.get_card(params[:id])
    @user = User.find_by(params[:uid])
    @decks = @user.decks
  end
end