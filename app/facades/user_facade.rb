class UserFacade
  def self.find_user(username, password)
    user = SpellbinderService.find_user(username, password)
    User.new(user)
  end

  # def self.authenticate(user_name, password)
  #   json = SpellbinderService.authenticate(user_name, password)
  #   User.new(json[:data]) if json.key?(:data)
  # end
end