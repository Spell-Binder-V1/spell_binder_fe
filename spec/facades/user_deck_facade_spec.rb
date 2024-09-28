require "rails_helper"

RSpec.describe "Collections Show Page" do
  describe "as a visitor" do
    before :each do
      user_deck_data = File.read('spec/fixtures/get_user_deck.json')
      stub_request(:get, api_endpoint("api/v0/decks"))
        .to_return(status: 200, body: user_deck_data)
    end

    it "returns user and their decks" do
      user_deck = UserDeckFacade.receive_user_decks

      expect(user_deck.first.username).to eq("Buff MagicKarp")
      expect(user_deck.first.deck_name).to eq("dreams")
      expect(user_deck.first.main_board).to be_an(Array)
      expect(user_deck.first.main_board.first).to be_a(Card)
      expect(user_deck.first.side_board).to be_an(Array)
      expect(user_deck.first.maybe_board).to be_an(Array)
    end
  end
end
