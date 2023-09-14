class CollectionFacade
  def self.get_collections
    SpellbinderService.get_collections[:data].map do |collection|
      Collection.new(collection)
    end
  end

  def self.get_single_collection(id)
    data = SpellbinderService.get_collection(id)
    Collection.new(data[:data])
  end
end