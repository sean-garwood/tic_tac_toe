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
end

# all things relating to the game board
class GameBoard


end

class Players
  include WinCondition

  def initialize(name, display_name)
    @name = name
    @display_name = display_name
  end
end

class User > Players
end

class Computer > Players
end
