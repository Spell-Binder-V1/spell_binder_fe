class UserDeck

  attr_reader :main_board, :side_board, :maybe_board, :deck_name, :name, :username

  def initialize(attributes)
    @username = attributes[:username]
    @deck_name = attributes[:name]
    @main_board = attributes[:cards][0][:main_board]
    @side_board = attributes[:cards][0][:side_board]
    @maybe_board = attributes[:cards][0][:maybe_board]
  end
end