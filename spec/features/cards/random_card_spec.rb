require "rails_helper"

RSpec.describe "Random Card Page" do
  describe "as a visitor" do
    before :each do
      random_card = File.read('spec/fixtures/get_random_card.json')
      stub_request(:get, "https://spell-binder-be-54fef257a8cc.herokuapp.com/api/v0/random_card").to_return(status: 200, body: random_card)
    end

    it "displays an image of the card" do
      visit "/"

      click_on "Random Card"
      expect(page).to have_selector("img[src='http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=2&type=card']")
    end

    it "disp"

# The mana cost of the card.
# Information about its format legality.
# The card type.
# The card's sub-type, if applicable.
# The rarity of the card.
# The card's name.
# Any associated flavor text.
# The artist's name.
# The card's original text.
# The cards number within the collection
end
end