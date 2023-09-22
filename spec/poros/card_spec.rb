require "rails_helper"

RSpec.describe Card do
  it "exists" do
    card_data = {
      "id": "571334",
      "name": "Emrakul, the Aeons Torn",
      "image_url": "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=571334&type=card",
      "set": "Prerelease Events",
      "set_name": "Prerelease Events",
      "number": "23V",
      "rarity": "Mythic",
      "color": "Colorless",
      "colors": [],
      "cmc": 15,
      "type": "Legendary Creature — Eldrazi",
      "types": [
          "Creature"
      ],
      "text": "This spell can't be countered. When you cast this spell, take an extra turn after this one. Flying, protection from spells that are one or more colors, annihilator 6 When Emrakul, the Aeons Torn is put into a graveyard from anywhere, its owner shuffles their graveyard into their library.",
      "power": "15",
      "toughness": "15",
      "artist": "Mark Tedin"
    }

    card = Card.new(card_data)

    expect(card).to be_a(Card)
    expect(card.id).to eq("571334")
    expect(card.name).to eq("Emrakul, the Aeons Torn")
    expect(card.set).to eq("Prerelease Events")
    expect(card.number).to eq("23V")
    expect(card.rarity).to eq("Mythic")
    expect(card.type).to eq("Legendary Creature — Eldrazi")
  end
end