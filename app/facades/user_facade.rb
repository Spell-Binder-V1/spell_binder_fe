class UserFacade
  def self.find_user(username, password)
    user = SpellbinderService.find_user(username, password)
    User.new(user)
  end

  def self.create_user(username, email, password)
    user = SpellbinderService.create_user(username, email, password)
    User.new(user)
  end
end