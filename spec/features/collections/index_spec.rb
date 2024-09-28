require "rails_helper"

RSpec.describe "Collections Index Page" do
  describe "as a visitor" do
    before :each do
      all_collections = File.read('spec/fixtures/get_collections.json')
      single_collection = File.read('spec/fixtures/get_single_collection.json')

      stub_request(:get, "#{ENV['SPELLBINDER_BASE_URL']}/api/v0/collections").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Faraday v2.7.11'
        }).
      to_return(status: 200, body: all_collections, headers: {})

      stub_request(:get, "#{ENV['SPELLBINDER_BASE_URL']}/api/v0/collections/10E").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v2.7.11'
           }).
         to_return(status: 200, body: single_collection, headers: {})
    end

    it "displays the name of each collection as a link to the collection's show page" do
      visit "/collections"

      expect(page).to have_link("Tenth Edition")
      expect(page).to have_content("2007-07-13")
      # expect(page).to have_content("Set Logo: https://img.scryfall.com/sets/3dn.svg?1555905600")
      expect(page).to have_content("10E")
    end

    it "displays names as links to the collection's show page" do
      visit "/collections"

      expect(page).to have_link("Tenth Edition")

      click_on "Tenth Edition"
      expect(current_path).to eq("/collections/10E")
    end
  end
end

