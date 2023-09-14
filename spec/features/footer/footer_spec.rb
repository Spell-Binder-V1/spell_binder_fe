require "rails_helper"

RSpec.describe "Footer" do
  describe "as a visitor" do
    it "display links to Adv Search, How to Play, Discord, Instagram, Contact Us" do
      visit "/"
save_and_open_page
      within("footer") do
        expect(page).to have_link("Adv Search")
        expect(page).to have_link("How To Play")
        expect(page).to have_link("Discord")
        expect(page).to have_link("Instagram")
        expect(page).to have_link("Contact Us")
      end
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