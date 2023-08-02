# frozen_string_literal: true

# input/output
module Talk
  def print_board
    # print the board to the console
  end
  # def to_s
  # end
end

# check legality, do other stuff
module MoveHelper
  def human?
    # check to see if player is human
  end

  def illegal?
    # check to see if the move is legal
  end

  def random_move
    # pick a random free square
    # set game board to letter unless move.illegal?
  end

  def letter
    human? ? 'X' : 'O'
  end
end

# win_condition
module WinCondition
  def cats_game?
    # check to see if the game is a tie
  end

  def player_wins?
    # check if player wins
  end
end

# all things relating to the game board
class GameBoard
  include MoveHelper
  include WinCondition
  def initialize
    @state = Array.new(3) { Array.new(3) }
  end

  def mark_square(row, col, letter)
    # mark the square
    @state[row][col] = letter
  end
end

# Move instances
class Move
  include MoveHelper
  def initialize(row, col, player)
    @row = row
    @column = col
    @player = player
  end
end

# Represents both players
class Player
  def initialize(name)
    @name = name
  end
end

# i've outlined how to talk to the player, the game board state, and a set
# of files to check for wins

board = GameBoard.new
