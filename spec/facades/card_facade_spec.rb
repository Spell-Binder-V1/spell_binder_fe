require "rails_helper"

RSpec.describe CardFacade do
  describe '.get_card' do
    it 'fetches a card from the API and displays its details' do
      single_card_fixture = File.read('spec/fixtures/get_single_card.json')
      stub_request(:get, "http://localhost:3000/api/v0/cards/1")
        .to_return(status: 200, body: single_card_fixture)

      card = CardFacade.get_card(1)

      expect(card.name).to eq("Red Elf")
      expect(card.set).to eq("23V")
      expect(card.type).to eq("Creature")
      expect(card.subtypes).to eq(["Elves"])
      expect(card.rarity).to eq("Rare")
      expect(card.text).to eq("Red Elf can't be blocked except by red creatures.")
      expect(card.power).to eq("5")
      expect(card.toughness).to eq("5")
      expect(card.artist).to eq("Kev Walker")
    end
  end

  describe '.random_card' do
    it "fetches a random card from the API and displays it details" do
      random_card = File.read('spec/fixtures/get_random_card.json')
      stub_request(:get, "http://localhost:3000/api/v0/cards/random").to_return(status: 200, body: random_card)

      card = CardFacade.random_card
      
      expect(card.name).to eq("Shu Elite Companions")
      expect(card.set).to eq("ME3")
      expect(card.type).to eq("Creature — Human Soldier")
      expect(card.rarity).to eq("Common")
      expect(card.text).to eq("Horsemanship (This creature can't be blocked except by creatures with horsemanship.)")
      expect(card.power).to eq("3")
      expect(card.toughness).to eq("3")
      expect(card.artist).to eq("Qiao Dafu")
    end
  end
end