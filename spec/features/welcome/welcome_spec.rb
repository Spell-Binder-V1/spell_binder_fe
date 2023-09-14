require "rails_helper"

RSpec.describe "Welcome Page" do
# ***The "SpellBinder" logo.***
  describe "as a visitor" do
    before :each do
      random_card = File.read('spec/fixtures/get_random_card.json')
      stub_request(:get, "http://localhost:3000/api/v0/cards/random").to_return(status: 200, body: random_card)
    end
    it "displays a search bar labeled Find a Card" do
      visit "/"

      expect(page).to have_selector("input[type='search'][placeholder='Find a Card']")
    end

    it "displays a Random Card button which takes user to a random card's show page" do
      visit "/"

      expect(page).to have_link("Random Card")

      click_on "Random Card"

      expect(current_path).to eq(cards_random_path)
    end

    it "displays options to login and create an account" do
      visit "/"
      
      expect(page).to have_link("Login")
      expect(page).to have_link("Create an Account")
    end
    
    it "has a button called All Collections" do
      visit "/"

      expect(page).to have_link("All Collections")
    end
  end
end

