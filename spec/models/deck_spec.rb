require 'rails_helper'

RSpec.describe Deck, type: :model do
  it "shows decks relationships and validations" do
    should belong_to(:user)

    should validate_presence_of(:name)
    should validate_presence_of(:user_id)
  end

  describe "#add_card" do
    before do
      search_card = File.read("spec/fixtures/get_search_blacklotus.json")

      stub_request(:get, "http://localhost:3000/api/v0/search?q=Black%20Lotus").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Faraday v2.7.11'
        }).
      to_return(status: 200, body: search_card, headers: {})
    end
    it "can add a card to the main_board of a deck" do
      user = User.create!(username: "TestUser", email: "Testemail@test.com")
      deck1 = user.decks.create!(name: "Testy")
      user.add_card("Black Lotus", deck1)

      expect(user.decks.first.cards["main_board"].count).to eq(1)
    end
  end
end
