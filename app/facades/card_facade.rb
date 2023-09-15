class CardFacade
  def self.random_card
    data = SpellbinderService.get_random_card
    attributes = data[:data][0][:attributes]
    Card.new(attributes)
  end

  def self.get_card(id)
    data = SpellbinderService.get_card(id)
    attributes = data[:data][0][:attributes]
    Card.new(attributes)
  end
end