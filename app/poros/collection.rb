class Collection
  attr_reader :id,
              :code, 
              :name,
              :type,
              :releasedate,
              :block,
              :icon

  def initialize(data)
    @id = data[:attributes][:id]
    @code = data[:attributes][:code]
    @name = data[:attributes][:name]
    @type = data[:attributes][:type]
    @releasedate = data[:attributes][:releasedate]
    @block = data[:attributes][:block]
    @icon = data[:attributes][:icon]
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