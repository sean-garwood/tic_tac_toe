# frozen_string_literal: true

# check legality, do other stuff
module MoveHelper
  def random_move
    # pick a random free square
    # set game board to letter unless move.illegal?
  end
end

# initializes the game, declares winner
class Game
  attr_accessor :winner

  def initialize(player_one, player_two, winner = nil)
    @player_one = player_one
    @player_two = player_two
    @winner = winner
  end

  def end_game
    puts winner.nil? ? nil : winner
  end

  def declare_winner(winner)
    @winner = winner
  end

  def cats_game?
    # check to see if the game is a tie
    # if moves = 9 and
  end
end

# all things relating to the game board
class Board
  def initialize
    @state = Array.new(3) { Array.new(3) }
  end

  def mark_square(row, col, letter)
    # mark the square
    @state[row][col] = letter unless illegal?
  end

  def print_board
    # print the board to the console
  end
end

# move object
class Move
  include MoveHelper
  def initialize(player, row, col)
    @player = player
    @row = row
    @column = col
  end

  def illegal?
    # check to see if the move is legal
  end
end

# Represents state of each players. Initializes two Player objs/game: human and
# computer.
class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def wins?
    @winner
  end
end
