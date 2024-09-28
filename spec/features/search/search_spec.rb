require "rails_helper"

RSpec.describe "Search Bar" do

  before do
    search_return = File.read("spec/fixtures/get_search_blacklotus.json")
    error_return = File.read("spec/fixtures/search_error.json")

    stub_request(:get, "#{ENV['SPELLBINDER_BASE_URL']}/api/v0/search?q=addfgsewdads").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v2.7.11'
           }).
         to_return(status: 200, body: error_return)

    stub_request(:get, "#{ENV['SPELLBINDER_BASE_URL']}/api/v0/search?q=Black%20Lotus").
    with(
      headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Faraday v2.7.11'
      }).
    to_return(status: 200, body: search_return)
  end
  describe "#search" do
    it "can search for a card by specific name" do
      visit "/"

      fill_in "Find Cards", with: "Black Lotus"
      click_button "Search"

      expect(current_path).to eq("/search")
      expect(page).to have_selector("img[src='http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=600&type=card']")
    end
  end
end