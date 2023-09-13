require "rails_helper"

RSpec.describe "Welcome Page" do
# ***The "SpellBinder" logo.***
  describe "as a visitor" do
    it "displays a search bar labeled Find a Card" do
      visit "/"
save_and_open_page
      expect(page).to have_selector("input[type='search'][placeholder='Find a Card']")
    end

    it "displays a Random Card button" do
      visit "/"
      
      expect(page).to have_button("Random Card")
    end
    
    it "displays options to login and create an account" do
      visit "/"
      
      expect(page).to have_link("Login")
      expect(page).to have_link("Create an Account")
    end
    
    it "has a button called All Collections" do
      visit "/"

      expect(page).to have_button("All Collections")
    end
  end
end

