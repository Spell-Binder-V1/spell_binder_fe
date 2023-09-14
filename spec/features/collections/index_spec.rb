require "rails_helper"

RSpec.describe "Collections Index Page" do
  describe "as a visitor" do
    before :each do
      all_collections = File.read('spec/fixtures/get_collections.json')
      stub_request(:get, "http://localhost:3000/api/v0/collections").to_return(status: 200, body: all_collections)
    
      single_collection = File.read('spec/fixtures/get_single_collection.json')
      stub_request(:get, "http://localhost:3000/api/v0/collections/1").to_return(status: 200, body: single_collection)
    end

    it "displays the name of each collection as a link to the collection's show page" do
      visit "/collections"
      
      expect(page).to have_link("New Wave")
      expect(page).to have_link("3D Masters")
      expect(page).to have_content("Release Date: 2015-01-01")
      expect(page).to have_content("Release Date: 2017-08-10")
      # expect(page).to have_content("Set Logo: https://img.scryfall.com/sets/3dn.svg?1555905600")
      expect(page).to have_content("Set Abbreviation: 23V")
    end

    it "displays names as links to the collection's show page" do
      visit "/collections"

      expect(page).to have_link("New Wave")

      click_on "New Wave"

      expect(current_path).to eq("/collections/1")
    end
  end
end

