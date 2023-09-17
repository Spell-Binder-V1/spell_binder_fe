class CollectionShowPoro
  attr_reader :id,
              :code,
              :name,
              :type,
              :release_date,
              :block,
              :icon

  attr_accessor :cards

  def initialize(data)
    @id = data[:id]
    @code = data[:data][:attributes][:code]
    @name = data[:data][:attributes][:name]
    @type = data[:data][:attributes][:type]
    @release_date = data[:data][:attributes][:release_date]
    @block = data[:data][:attributes][:block]
    @icon = data[:data][:attributes][:icon]
    @cards = data[:data][:attributes][:cards]
  end
end
