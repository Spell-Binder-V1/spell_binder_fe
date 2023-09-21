class DashboardController < ApplicationController
  def index
    @user = User.find_by(params[:uid])
  end

  def show
    # @deck = Deck.find_by(params[:id])
  end
end