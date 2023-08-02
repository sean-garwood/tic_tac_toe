# frozen_string_literal: true

# Check to see if the game is over, and if so, return the result
module GameOver
  def cats_game?
    # check to see if the game is a tie
    # if moves = 9 and
  end

  def player_wins?
    # check if player wins
  end
end

# input

# output
module Output
  def print_board
    # print the board to the console
  end

  def game_over(winner)
    winner == nil ? 'tie' : "#{winner} wins"
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

# initializes the game, declares winner
class Game
  def initialize(player_one, player_two, winner = nil)
    @player_one = player_one
    @player_two = player_two
    @winner = winner
  end


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

# create an object that has player, letter, position to play in
class Turn
  def initialize(letter, player, position)
    @letter = letter
    @player = player
    @position = position
  end
end

# move object
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
  def initialize(winner)
    @winner = winner
  end
end

# Player instances to house methods
class PlayerOne < Player
  def initialize(winner, name)
    super
    @name = name
  end
end

class PlayerTwo < Player
  def initialize(winner, name)
    super
    @name = name
  end
end

winner = nil
while !winner do
  # some code
  winner = "me"
end

puts Output.game_over(winner)
