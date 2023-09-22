require 'rails_helper'

RSpec.describe Collection do
  it 'exists' do
    collection_data = {
      id: 1,
      attributes: {
        code: 'COL',
        name: 'Sample Collection',
        type: 'Sample Type',
        release_date: '2023-09-21',
        block: 'Sample Block',
        icon: 'sample-icon.png',
        cards: ['Card 1', 'Card 2', 'Card 3']
      }
    }

    collection = Collection.new(collection_data)

    expect(collection).to be_a(Collection)
    expect(collection.id).to eq(1)
    expect(collection.code).to eq('COL')
    expect(collection.name).to eq('Sample Collection')
    expect(collection.type).to eq('Sample Type')
    expect(collection.release_date).to eq('2023-09-21')
    expect(collection.block).to eq('Sample Block')
    expect(collection.icon).to eq('sample-icon.png')
    expect(collection.cards).to eq(['Card 1', 'Card 2', 'Card 3'])
  end
end