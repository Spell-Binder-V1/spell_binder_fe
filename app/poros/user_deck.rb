class UserDeck

  attr_reader :main_board, :side_board, :maybe_board

  def initialize(attributes)
    @main_board = attributes[:main_board]
    @side_board = attributes[:side_board]
    @maybe_board = attributes[:maybe_board]
  end
end