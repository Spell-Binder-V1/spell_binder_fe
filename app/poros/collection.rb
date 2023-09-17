class Collection
  attr_reader :id,
              :code,
              :name,
              :type,
              :release_date,
              :block,
              :icon,
              :cards

  def initialize(data)
    @id = data[:id]

    @code = data[:attributes][:code]
    @name = data[:attributes][:name]
    @type = data[:attributes][:type]
    @release_date = data[:attributes][:release_date]
    @block = data[:attributes][:block]
    @icon = data[:attributes][:icon]
    @cards = data[:attributes][:cards]
  end
end


# {
#   "data":
#   {
#     "id": "1",
#     "type": "collection",
#     "attributes": {
#       "id": "1",
#       "code": "23V",
#       "name": "New Wave",
#       "type": "core",
#       "releasedate": "2015-01-01",
#       "block": "Commander",
#       "icon?": "true"
#     }
# }
# }