class User
  attr_reader :user_name,
              :email,
              :password_digest
              
  def initialize(attributes)
    @user_name = attributes[:user_name]
    @email = attributes[:email]
    @password_digest = attributes[:password_digest]
  end
end