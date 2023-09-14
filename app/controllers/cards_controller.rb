class CardsController < ApplicationController
  def random_card
    @random_card = CardFacade.random_card
  end
end