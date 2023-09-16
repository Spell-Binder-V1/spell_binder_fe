class UserFacade
  def self.get_user(id)
    SpellbinderService.get_user[:data].map do |user_data|
      User.new(user_data)
    end
  end

  def self.authenticate(email, password)
    response = SpellbinderService.authenticate_with(email, password)
    if response && response.key?(:data)
      User.new(response[:data])
    else
      nil
    end
  end
end