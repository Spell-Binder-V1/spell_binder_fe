class SearchController < ApplicationController
  def search
    @cards = CardFacade.search_card(params[:query])
    if @cards.is_a?(Error)
      flash[:message] = "No results found."
      redirect_to root_path
    end
  end
end