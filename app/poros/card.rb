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


# {
#   "data":
#   {
#     "id": "2",
#     "type": "card",
#     "attributes": {
#       "multiverseid": "2",
#       "name": "Derek Chavez",
#       "manacost": "{5}{R}{G}",
#       "converted_mana_cost": 7.0,
#       "colors": ["red", "green"],
#       "coloridentity": ["red", "green"],
#       "type": "Creature",
#       "subtypes": ["Vampire", "Shaman"],
#       "rarity": "Mythic Rare",
#       "set": "18D",
#       "text": "Trample, haste, banding",
#       "artist": "Christopher Rush",
#       "number": "20",
#       "power": "10",
#       "toughness": "1",
#       "imageurl": "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=2&type=card",
#       "rulings": [
#         {
#           "date": "2006-9-26",
#           "text": "If a creature has multiple instances of banding or bands with other creatures, all damage blocking it must come from creatures that share a type with the creature being blocked."
#         }
#       ]
#     }
#   }
# }