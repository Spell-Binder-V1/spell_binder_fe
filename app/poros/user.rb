class User
  include BCrypt
  attr_reader :user_name,
              :email,
              :password_digest,
              :id
              
  def initialize(attributes)
    @id = attributes[:id]
    @user_name = attributes[:user_name]
    @email = attributes[:email]
    @password_digest = BCrypt::Password.create(attributes[:password_digest])
  end

  def authenticate(password)
    BCrypt::Password.new(password_digest) == password
  end
end