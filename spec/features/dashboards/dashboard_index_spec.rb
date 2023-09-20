require "rails_helper"

RSpec.describe "Dashboard Index Page" do
  before do
    user_deck = File.read('spec/fixtures/get_user_deck.json')
    @user = User.new(name: "goku", email: "goku@dbz.com", password_digest: "password")
  end
  describe "#dashboard index" do
    it "displays a link for each deck image" do
      visit dashboard_index_path
      require 'pry'; binding.pry
      expect(page).to have_content(@user.name)
      expect(page).to have_button("Create Deck")
      expect(page).to have_button("Share Deck")
      expect(page).to have_button("Delete Deck")
      expect(page).to have_selector("img=[src=https://static.wikia.nocookie.net/mtgsalvation_gamepedia/images/f/f8/Magic_card_back.jpg/revision/latest?cb=20140813141013]")
    end
  end
end