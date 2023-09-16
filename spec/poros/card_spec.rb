require "rails_helper"

RSpec.describe Card do
  it 'initializes with the correct attributes' do
    attributes = {
      id: 1,
      multiverseid: 12345,
      name: 'Sample Card',
      mana_cost: '{U}',
      converted_mana_cost: 1,
      colors: ['Blue'],
      coloridentity: ['U'],
      type: 'Creature',
      subtypes: ['Merfolk', 'Wizard'],
      rarity: 'Common',
      set: 'Sample Set',
      setName: 'Sample Set Name',
      text: 'This is a sample card.',
      artist: 'Sample Artist',
      number: '42',
      power: '2',
      toughness: '2',
      image_url: 'http://example.com/sample_card.jpg',
      rulings: ['Sample ruling 1', 'Sample ruling 2']
    }

    card = Card.new(attributes)

    expect(card.id).to eq(1)
    expect(card.multiverseid).to eq(12345)
    expect(card.name).to eq('Sample Card')
    expect(card.manacost).to eq('{U}')
    expect(card.converted_mana_cost).to eq(1)
    expect(card.coloridentity).to eq(['U'])
    expect(card.type).to eq('Creature')
    expect(card.subtypes).to eq(['Merfolk', 'Wizard'])
    expect(card.rarity).to eq('Common')
    expect(card.set).to eq('Sample Set')
    expect(card.set_name).to eq('Sample Set Name')
    expect(card.text).to eq('This is a sample card.')
    expect(card.artist).to eq('Sample Artist')
    expect(card.number).to eq('42')
    expect(card.power).to eq('2')
    expect(card.toughness).to eq('2')
    expect(card.imageurl).to eq('http://example.com/sample_card.jpg')
    expect(card.rulings).to eq(['Sample ruling 1', 'Sample ruling 2'])
  end
end