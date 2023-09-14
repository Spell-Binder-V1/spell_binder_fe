class CardFacade
  def self.random_card
    data = SpellbinderService.get_random_card
    attributes = data[:data][:attributes]
    Card.new(attributes)
  end
end