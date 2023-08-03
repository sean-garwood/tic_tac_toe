# frozen_string_literal: true

# check legality, do other stuff
module MoveHelper
  def illegal?
    # check to see if the move is legal
  end

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

  def player_wins?
    # check if player wins
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

# create an object that has player, letter, position to play in
class Turn
  attr_accessor :player

  def initialize(player)
    @player = player
  end
end

# move object
class Move < Turn
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
  attr_reader :winner

  def initialize(name, winner = false)
    @name = name
  end

end
