require "rails_helper"

RSpec.describe CollectionFacade do
  describe '.get_collections' do
    it "fetches collections from the API and displays them" do
      collections_fixture = File.read('spec/fixtures/get_collections.json')
      stub_request(:get, "http://localhost:3000/api/v0/collections")
        .to_return(status: 200, body: collections_fixture)

      collections = CollectionFacade.get_collections

      expect(collections).to be_an(Array)
      expect(collections.size).to eq(500)
      expect(collections[0].name).to eq("Tenth Edition")
      expect(collections[1].name).to eq("Unlimited Edition")
    end
  end

  describe '.get_single_collection' do
    it "fetches a single collection from the API and displays its cards" do
      single_collection_fixture = File.read('spec/fixtures/get_single_collection.json')
      stub_request(:get, "http://localhost:3000/api/v0/collections/1")
        .to_return(status: 200, body: single_collection_fixture)

      cards = CollectionFacade.get_single_collection(1)

      expect(cards).to be_an(Array)
      expect(cards.size).to eq(92)
      expect(cards[0].name).to eq("Abu Ja'far")
      expect(cards[1].name).to eq("Army of Allah")
    end
  end
end