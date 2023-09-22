require "rails_helper"

RSpec.describe "Decks Index Page" do
  before do
    user_deck = File.read('spec/fixtures/get_user_deck.json')

    @user = User.create!(username: "goku", email: "goku@dbz.com")
    @user.decks.create!(name: "Testy1")
    @user.decks.create!(name: "Testy2")
    @user.decks.create!(name: "Testy3")
    @user.decks.create!(name: "Testy4")
    @user.decks.create!(name: "Testy5")
    @user.decks.create!(name: "Testy6")
    @user.decks.create!(name: "Testy7")

    allow_any_instance_of(ApplicationController).to receive(:session).and_return({ user_id: @user.id })

    stub_request(:get, "http://localhost:3000/api/v0/decks").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v2.7.11'
           }).
         to_return(status: 200, body: user_deck)
  end

  describe "Deck index" do
    it "displays a link for each deck image" do
      visit decks_path

      expect(page).to have_content(@user.username)
      
      expect(page).to have_content("goku")

      expect(page).to have_link("Create Deck")
      expect(page).to have_button("Delete Testy1")

      expect(page).to have_link("logout")
      click_link "logout"

      expect(current_path).to eq(root_path)
    end
  end
end