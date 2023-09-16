require "rails_helper"

RSpec.describe "Dashboard Index Page" do
  describe "#dashboard index" do
    xit "displays a link for each deck image" do
      user = File.read('spec/fixtures/get_user.json')
      stub_request(:get, "http://localhost:3000/api/v0/dashboard").to_return(status: 200, body: user)
      visit dashboard_index_path

      expect(page).to have_content("Account Name: #{user.user_name}")
      expect(page).to have_button("Create a Deck")
      expect(page).to have_button("Share")
    end
  end
end