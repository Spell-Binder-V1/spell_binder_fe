# require "rails_helper"

# RSpec.describe "Cards Show Page" do
#   describe "as a visitor" do
#     before :each do
#       single_card = File.read('spec/fixtures/get_single_card.json')
#       stub_request(:get, "http://localhost:3000/api/v0/cards/571334").to_return(status: 200, body: single_card)
#       visit "/cards/571334"
#     end

#     it "displays an image of the card and card information" do
#       expect(page).to have_content("Emrakul, the Aeons Torn")
#       expect(page).to have_selector("img[src='http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=571334&type=card']")
#       # expect(page).to have_content("Set Number: 23V")
#       expect(page).to have_content("{15}")
#       expect(page).to have_content("Creature")
#       expect(page).to have_content("Mythic")
#       expect(page).to have_content("This spell can't be countered. When you cast this spell, take an extra turn after this one. Flying, protection from spells that are one or more colors, annihilator 6 When Emrakul, the Aeons Torn is put into a graveyard from anywhere, its owner shuffles their graveyard into their library.")
#       expect(page).to have_content("15/15")
#       expect(page).to have_content("Illustrated by Mark Tedin")
#     end
#   end
# end
