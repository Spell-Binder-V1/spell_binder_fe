class CardFacade
  def self.random_card
    data = SpellbinderService.get_random_card
    attributes = data[:data][0][:attributes]
    Card.new(attributes)
  end

  def self.get_card(id)
    data = SpellbinderService.get_card(id)
    attributes = data[:data][:attributes]
    Card.new(attributes)
  end

  def self.search_card(card)
    data = SpellbinderService.search_card(card)
    attributes = data[:data]
    if data.has_key?(:errors)
      Error.new(data)
    else
      attributes.map do |card_data|
        Card.new(card_data[:attributes])
      end
    end
  end
end