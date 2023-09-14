require "rails_helper"

RSpec.describe "Footer" do
  describe "as a visitor" do
    it "display links to Adv Search, How to Play, Discord, Instagram, Contact Us" do
      visit "/"

      within("footer") do
        expect(page).to have_link("Adv Search")
        expect(page).to have_link("How To Play")
        expect(page).to have_link("Discord")
        expect(page).to have_link("Instagram")
        expect(page).to have_link("Contact Us")
      end
    end

    it "redirects to 'coming_soon' when clicking Adv Search link" do
      visit "/"
      click_on "Adv Search"

      expect(current_path).to eq(coming_soon_path)
    end

    it "has a link to Home which redirects the users back to the welcome page" do
      visit "/"
      click_on "Home"

      expect(current_path).to eq("/")
    end
  end
end

# As a visitor/registered user
# When I visit “/” I see a footer with links to
# Adv Search - coming soon
# How to - coming soon
# All Collections - collections index
# Random Card - random card show page
# Discord - coming soon
# Instagram - comings soon
# Read Me - link to readme
# Your Account - link to dashboard
# Register - link to form to create an account
# Contact Us - coming soon
# GitHub - link to GitHub repo