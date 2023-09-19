class SearchController < ApplicationController
  def search
    @cards = CardFacade.search_card(params[:query])
  end
end