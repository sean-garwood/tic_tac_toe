# frozen_string_literal: true

# the goal of this is to create tic-tac-toe on the command line.
# i need to...
  # have a method that checks for a win after each turn
  # have a representation of the game board
    # multi-d array
  # take input from user
  # have computer make (random => optimal) moves

# how to represent all of this in classes?

# modules first

# io

module Talk
  def report_game_state
  end
  # def to_s
  # end
end

# win_condition
module WinCondition
  def cats_game?
end

# all things relating to the game board
module GameBoard
  include WinCondition
  @@state = Array.new(3) { Array.new(3) }

  def mark_square(row, col, player)
    if player == "user"
      @@state[row][col] = 'X'
    else
      @@state[row][col] = 'O'
    end
  end

  def print_board
  end
end

class Players

end

class User < Players
  def initialize(name, display_name)
    @name = name
    @display_name = display_name
  end
end

class Computer < Players
end

# i've outlined how to talk to the player, the game board state, and a set
# of files to check for wins
