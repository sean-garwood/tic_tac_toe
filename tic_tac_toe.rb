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

  def mark_square(row, col, letter)
    @board[row][col] = "[#{letter}]" unless @board[row][col] != '[ ]'
  end

  def print_board
    @board.each do |row|
      puts row.map { |e| e }.join(' ')
    end
  end

  private

  attr_writer :board
end

# Represents state of each player. Initializes two Player objs/game: human and
# computer.
class Player
  attr_reader :name

  @@players = 1

  def initialize
    @name = username
    @@players +=1
  end

  private

  def username
    puts "Welcome, player #{@@players.to_s}! Enter your name:"
    gets.chomp
  end
end

# Instances of turns
class Turn
  @@turn = 1
  def initialize(player, turn_number, move = nil)
    puts board
    puts "-=-TURN #{turn_number}-=-\nGo ahead, #{player.name}."
  end
end

board = Board.new
player_one = Player.new
player_two = Player.new
Game.new(player_one, player_two)
turn = 1
turn.odd? ? Turn.new(player_one.name, turn) : Turn.new(player_two.name, turn)
