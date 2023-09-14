require "rails_helper"

RSpec.describe "Random Card Page" do
  describe "as a visitor" do
    before :each do
      random_card = File.read('spec/fixtures/get_random_card.json')
      stub_request(:get, "https://spell-binder-be-54fef257a8cc.herokuapp.com/api/v0/random_card").to_return(status: 200, body: random_card)
      visit random_card_path
    end

    it "displays an image of the card and card information" do
      expect(page).to have_content("Derek Chavez")
      expect(page).to have_selector("img[src='http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=2&type=card']")
      expect(page).to have_content("Set Number: 18D")
      expect(page).to have_content("Mana Cost: {5}{R}{G}")
      expect(page).to have_content("Type: Creature")
      expect(page).to have_content("Subtype: Vampire Shaman")
      expect(page).to have_content("Rarity: Mythic Rare")
      expect(page).to have_content("Text: Trample, haste, banding")
      expect(page).to have_content("Power: 10")
      expect(page).to have_content("Toughness: 1")
      expect(page).to have_content("Illustrated by: Christopher Rush")
    end


# Information about its format legality.**************
# Any associated flavor text.**************
# The cards number within the collection**************
end
end