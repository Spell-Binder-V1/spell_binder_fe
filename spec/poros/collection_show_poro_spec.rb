require "rails_helper"

RSpec.describe CollectionShowPoro do
  it "exists" do
    collection_show_data = {
      id: 1,
      data: {
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
    }

    collection_show = CollectionShowPoro.new(collection_show_data)

    expect(collection_show).to be_a(CollectionShowPoro)
    expect(collection_show.id).to eq(1)
    expect(collection_show.code).to eq('COL')
    expect(collection_show.name).to eq('Sample Collection')
    expect(collection_show.type).to eq('Sample Type')
    expect(collection_show.release_date).to eq('2023-09-21')
    expect(collection_show.block).to eq('Sample Block')
    expect(collection_show.icon).to eq('sample-icon.png')
    expect(collection_show.cards).to eq(['Card 1', 'Card 2', 'Card 3'])
  end
end