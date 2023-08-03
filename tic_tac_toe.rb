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
    @winner = "me"
    puts @winner.to_s
  end

  private

  attr_writer :winner
end

# all things relating to the game board
class Board
  attr_reader :state

  def initialize
    @state = Array.new(3) { Array.new(3, '') }
  end

  def print_board
    puts @state
  end

  def mark_square(row, col, letter)
    # mark the square
    @state[row][col] = letter unless letter != ''
  end

  private

  def to_s
    @state.each { |row| "#{row.flatten.join('').join("\n")}" }
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

while game.winner do
  6.times { puts "hi\n" }
  game.end_game
end
game.declare_winner
