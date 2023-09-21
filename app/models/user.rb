class User < ApplicationRecord
  has_many :decks

  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true

  def self.from_omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
      u.username = response[:info][:name]
      u.email = response[:info][:email]
      # u.password = SecureRandom.hex(15)
    end
  end

  def add_card(card_name, deck)
    card = CardFacade.search_card(card_name).first
    deck.cards["main_board"] << card
    deck.save
  end
end


