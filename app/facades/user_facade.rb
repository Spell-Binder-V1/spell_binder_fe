class UserFacade
  def self.get_user(id)
    SpellbinderService.get_user[:data].map do |user_data|
      User.new(user_data)
    end
  end
end