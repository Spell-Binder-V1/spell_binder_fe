class CardFacade
  def self.random_card
    data = SpellbinderService.get_random_card
    attributes = data[:data][:attributes]
    #there was a [0] between the data and attributes before?
    Card.new(attributes)
  end

  def self.get_card(id)
    data = SpellbinderService.get_card(id)
    attributes = data[:data][:attributes]
    Card.new(attributes)
  end
end