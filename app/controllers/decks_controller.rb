class DecksController < ApplicationController
  def index
    @user = User.find_by(params[:uid])
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new

  end

  def create
    @user = User.find_by(params[:uid])
    @deck = @user.decks.create!(deck_params)
    if @deck.save
      redirect_to '/decks'
      flash[:success] = "Deck created!"
    else
      render :new
    end
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to decks_path
    flash[:success] = "Deck deleted!"
  end

  private

  def deck_params
    params.permit(:name)
  end
end