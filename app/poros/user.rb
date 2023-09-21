class User
  attr_reader :id, :name, :email, :password_digest

  def initialize(data)
    @id = data[:id]
    @name = data[:username]
    @email = data[:email]
    @password_digest = data[:password_digest]
  end
end