require "rails_helper"

RSpec.describe "Random Card Page" do
  describe "as a visitor" do
    before :each do
      random_card = File.read('spec/fixtures/get_random_card.json')
      stub_request(:get, "#{api_endpoint("/api/v0/cards/random")}")
      .to_return(status: 200, body: random_card)
      visit cards_random_path
    end

    it "displays an image of the card and card information" do
      
      expect(page).to have_content("Shu Elite Companions")
      expect(page).to have_selector("img[src='http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=201295&type=card']")
      # expect(page).to have_content("Set Number: ME3")
      expect(page).to have_content("{4}")
      expect(page).to have_content("Creature")
      expect(page).to have_content("Human Soldier")
      expect(page).to have_content("Common")
      expect(page).to have_content("Horsemanship (This creature can't be blocked except by creatures with horsemanship.)")
      expect(page).to have_content("3/3")
      expect(page).to have_content("Illustrated by Qiao Dafu")
    end


# Information about its format legality.**************
# Any associated flavor text.**************
# The cards number within the collection**************
  end
end