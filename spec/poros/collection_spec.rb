require "rails_helper"

RSpec.describe Collection do
  it 'initializes with the correct attributes' do
    data = {
      id: 1,
      attributes: {
        code: 'COL1',
        name: 'Sample Collection',
        type: 'Expansion',
        release_date: '2023-09-15',
        block: 'Sample Block',
        icon: 'collection-icon.png'
      }
    }

    collection = Collection.new(data)

    expect(collection.id).to eq(1)
    expect(collection.code).to eq('COL1')
    expect(collection.name).to eq('Sample Collection')
    expect(collection.type).to eq('Expansion')
    expect(collection.release_date).to eq('2023-09-15')
    expect(collection.block).to eq('Sample Block')
    expect(collection.icon).to eq('collection-icon.png')
  end
end