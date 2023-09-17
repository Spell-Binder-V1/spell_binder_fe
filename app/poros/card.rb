class Card
  attr_reader :id,
              :multiverseid,
              :name,
              :manacost,
              :converted_mana_cost,
              :coloridentity,
              :type,
              :subtypes,
              :rarity,
              :set,
              :text,
              :artist,
              :number,
              :power,
              :toughness,
              :imageurl,
              :rulings,
              :set_name

  def initialize(attributes)
    @id = attributes[:id]
    @multiverseid = attributes[:multiverseid]
    @name = attributes[:name]
    @manacost = attributes[:mana_cost]
    @converted_mana_cost = attributes[:converted_mana_cost]
    @colors = attributes[:colors]
    @coloridentity = attributes[:coloridentity]
    @type = attributes[:type]
    @subtypes = attributes[:subtypes]
    @rarity = attributes[:rarity]
    @set = attributes[:set]
    @set_name = attributes[:setName]
    @text = attributes[:text]
    @artist = attributes[:artist]
    @number = attributes[:number]
    @power = attributes[:power]
    @toughness = attributes[:toughness]
    @imageurl = attributes[:image_url]
    @rulings = attributes[:rulings]
  end
end