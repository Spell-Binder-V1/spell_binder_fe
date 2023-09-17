class CollectionFacade
  def self.get_collections
    SpellbinderService.get_collections[:data].map do |collection|
      Collection.new(collection)
    end
  end

  def self.get_single_collection(id)
    raw_collection_data = SpellbinderService.get_collection(id)
    collection = CollectionShowPoro.new(raw_collection_data)
    collection_cards = collection.cards.map do |card|
      Card.new(card)
    end

    collection.cards = []

    collection_cards.each do |card|
      collection.cards << card
    end

    collection
  end
end