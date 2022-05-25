class Game
  attr_accessor :player, :board, :turn, :winner, :turn_count

  def initialize(player, board)
    @player = player
    @board = board
    @turn = 1
    @turn_count = 0
    @winner = false
  end
end
