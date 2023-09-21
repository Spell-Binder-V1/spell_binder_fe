require "rails_helper"

RSpec.describe "Dashboard Index Page" do
  before do
    user_deck = File.read('spec/fixtures/get_user_deck.json')

    stub_request(:get, "http://localhost:3000/api/v0/decks").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v2.7.11'
           }).
         to_return(status: 200, body: user_deck)

  end
  describe "#dashboard index" do
    it "displays a link for each deck image" do
      visit dashboard_index_path
      save_and_open_page
      expect(page).to have_content("Buff MagicKarp")
      expect(page).to have_button("Create Deck")
      expect(page).to have_button("Share Deck")
      expect(page).to have_button("Delete Deck")
      expect(page).to have_selector("img=[src=https://static.wikia.nocookie.net/mtgsalvation_gamepedia/images/f/f8/Magic_card_back.jpg/revision/latest?cb=20140813141013]")
    end
  end
end