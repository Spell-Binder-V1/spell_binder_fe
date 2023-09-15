require "rails_helper"

RSpec.describe "Cards Show Page" do
  describe "as a visitor" do
    before :each do
      single_card = File.read('spec/fixtures/get_single_card.json')
      stub_request(:get, "http://localhost:3000/api/v0/cards/1").to_return(status: 200, body: single_card)
      visit "/cards/1"
    end

    it "displays an image of the card and card information" do
      expect(page).to have_content("Red Elf")
      expect(page).to have_selector("img[src='http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=201295&type=card']")
      expect(page).to have_content("Set Number: 23V")
      expect(page).to have_content("Mana Cost: {0}")
      expect(page).to have_content("Type: Creature")
      expect(page).to have_content("Subtype: Elves")
      expect(page).to have_content("Rarity: Rare")
      expect(page).to have_content("Text: Red Elf can't be blocked except by red creatures.")
      expect(page).to have_content("Power: 5")
      expect(page).to have_content("Toughness: 5")
      expect(page).to have_content("Illustrated by: Kev Walker")
    end
  end
end