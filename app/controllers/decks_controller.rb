class DecksController < ApplicationController
  def index
    @user = User.find_by(params[:uid])
  end

  def show
    @deck = Deck.find(params[:id])
  end
end