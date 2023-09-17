require "rails_helper"

RSpec.describe "Collections Show Page" do
  describe "as a visitor" do
    before :each do
      single_collection = File.read('spec/fixtures/get_single_collection.json')
      stub_request(:get, "http://localhost:3000/api/v0/collections/10E").to_return(status: 200, body: single_collection)
      visit "/collections/10E"
    end

    it "displays the card image" do
      expect(page).to have_selector("img[src='http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=130550&type=card']")
      # expect(page).to have_content("Abu Ja'far")
      # expect(page).to have_content("Number of Cards: 3")
      # expect(page).to have_content("Set Logo: https://img.scryfall.com/sets/3dn.svg?1555905600")
    end
  end
end