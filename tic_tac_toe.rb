# frozen_string_literal: true

# input

# output
module Output
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

class Game
end

# all things relating to the game board
class Board
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

# Check to see if the game is over, and if so, return the result
module GameOver
  def cats_game?
    # check to see if the game is a tie
  end

  def player_wins?
    # check if player wins
  end
end

# Move instances
# probably want to make these private to each player though, so they can't make
# moves for their opponent.
class Move
  include MoveHelper
  def initialize(user, row, col)
    @user = user
    @row = row
    @column = col
  end
end

# Represents state of each players. Initializes two Player objs/game: human and
# computer.
class Player
  def initialize(user)
    @user = user
  end
end

# i've outlined how to talk to the player, the game board state, and a set
# of files to check for wins

board = GameBoard.new
p board
