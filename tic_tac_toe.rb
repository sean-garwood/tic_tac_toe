# frozen_string_literal: true

module TurnHelper
  def player_turn
    @turn_number.odd? ? @player_one.name : @player_two.name
  end
end

def report
  player_turn
  puts "-=-TURN #{@turn_number}-=-\nGo ahead, #{player_turn}"
end

# initializes the game, declares winner
class Game
  attr_reader :player_one, :player_two, :turn_number, :winner

  includes TurnHelper

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @turn_number = 1
    @winner = nil
  end

  private

  attr_writer :turn_number, :winner

  def cats_game?
    @turn_number == 9 && @winner.nil
    cats_game
  end

  def declare_winner
    puts @winner
  end

  def cats_game
    # puts something about a tie game and no one wins.
  end
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
    @@players += 1
  end

  private

  def username
    puts "Welcome, player #{@@players}! Enter your name:"
    gets.chomp
  end
end

board = Board.new
player_one = Player.new
player_two = Player.new
game = Game.new(player_one, player_two)
puts 'Game on! Good luck, players.'
game.report
board.print_board
puts 'Make your move. Enter the desired row.'
row = gets.chomp
puts 'Enter the column.'
col = gets.chomp
board.mark_square(row, col, )
