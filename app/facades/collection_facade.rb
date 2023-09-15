class CollectionFacade
  def self.get_collections
    SpellbinderService.get_collections[:data].map do |collection|
      Collection.new(collection)
    end
  end

  def self.get_single_collection(id)
    raw_data = SpellbinderService.get_collection(id)
      data = raw_data[:data]
       data.map do |card|
          Card.new(card[:attributes])
    end
  end
end