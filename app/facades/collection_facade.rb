class CollectionFacade
  def self.get_collections
    SpellbinderService.get_collections[:data].map do |collection|
      Collection.new(collection)
    end
  end
end