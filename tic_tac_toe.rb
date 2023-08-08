# frozen_string_literal: true

# initializes the game, declares winner
class Game
  attr_reader :player_one, :player_two, :winner

  def initialize(player_one, player_two, winner = nil)
    @player_one = player_one
    @player_two = player_two
  end

  def cats_game?
    # check to see if the game is a tie
    # if moves = 9 and
  end

  def declare_winner
    @winner = 'me'
    puts @winner
  end

  private

  attr_writer :winner
end

# all things relating to the game board
class Board
  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new(3, '[ ]') }
  end

  def print_board
    puts @board
  end

  def mark_square(row, col, letter)
    # mark the square
    target = @board[row][col]
    target = letter unless target != '[ ]'
  end

  private

  attr_writer :board

  def to_s
    @board.each { |row| "#{row.join('')}" }
  end
end

# Represents state of each players. Initializes two Player objs/game: human and
# computer.
class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

board = Board.new
sean = Player.new("sean")
tom = Player.new("tom")
game = Game.new(sean, tom)
board.mark_square(1, 1, 'a')
board.print_board
