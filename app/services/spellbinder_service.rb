class SpellbinderService
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_card(id)
    get_url("/api/v1/cards/#{id}")
  end

  def self.get_collections
    get_url("api/v1/collections")
  end

  def get_collection(id)
    get_url("api/v1/collections/#{id}")
  end

  def get_random_card
    get_url("api/v1/random_card")
  end

  def get_decks
    get_url("api/v1/decks")
  end
  
  def get_deck(id)
    get_url("api/v1/decks/#{id}")
  end

  
end