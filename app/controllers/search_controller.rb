class SearchController < ApplicationController
  def search
    @cards = pagy(CardFacade.search_card(params[:query]))
  end
end