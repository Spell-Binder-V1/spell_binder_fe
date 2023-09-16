class SpellbinderService
  def self.conn
    # if ENV['RAILS_ENV'] == 'test'
      Faraday.new(url: "http://localhost:3000")
    # else
      # Faraday.new(url: "https://spell-binder-be-54fef257a8cc.herokuapp.com")
    # end
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_card(id)
    get_url("/api/v0/cards/#{id}")
  end

  def self.get_collections
    get_url("/api/v0/collections")
  end

  def self.get_collection(id)
    get_url("/api/v0/collections/#{id}")
  end

  def self.get_random_card
    get_url("/api/v0/cards/random")
  end

  def self.get_decks
    get_url("/api/v0/decks")
  end

  def self.get_deck(id)
    get_url("/api/v0/decks/#{id}")
  end

  def self.get_user(id)
    get_url("/api/v0/dashboard/#{id}")
    #sessions_controller
  end


end