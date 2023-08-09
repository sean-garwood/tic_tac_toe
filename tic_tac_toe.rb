# frozen_string_literal: true

# check board state for a win
module WinCondition
  EMPTY_SPACE = '[ ]'
  def winning_row?
    @board.each do |row|
      win = row[0] == row[1] && row[1] == row[2] && !row.include?(EMPTY_SPACE)
      if win
        return true
      else
        next
      end
    end
    false
  end

  # check whether the nth index in each row is equal to the nth index in the
  # other two rows and none are blank.
  def winning_column?
    @board.reduce([]) do |nth_elements, row|
      nth_elements.push(row[0], row[1], row[2])
    end
  end
end

# does boring stuff re: turns
module TurnHelper
  def player_turn
    turn_number.odd? ? player_one.name : player_two.name
  end

  def report
    puts "-=-TURN #{@turn_number}-=-\n\nGo ahead, #{player_turn}\n"
  end
end

# all things relating to the game board
class Board
  EMPTY_SPACE = '[ ]'
  NEW_BOARD = Array.new(3) { Array.new(3, EMPTY_SPACE) }
  include WinCondition
  attr_reader :board

  def initialize
    @board = NEW_BOARD
  end

  def fill_board
    @board.each do |row|
      row.each_index do |index|
        row[index] = '[x]'
      end
    end
  end

  def full?
    @board.all? do |row|
      row.all? { |cell| cell != EMPTY_SPACE }
    end
  end

  def mark_square(row, col, letter)
    @board[row][col] = "[#{letter}]" unless @board[row][col] != EMPTY_SPACE
  end

  def print_board
    @board.each do |row|
      puts row.map { |e| e }.join(' ')
    end
  end

  protected

  attr_writer :board
end

# initializes the game, declares winner
class Game
  include TurnHelper
  include WinCondition
  attr_reader :player_one, :player_two, :turn_number, :winner

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @turn_number = 1
    @winner = nil
  end

  def bump_turn_number
    @turn_number += 1
  end

  def declare_winner(winner)
    @winner = winner
    puts("#{@winner} wins!")
    exit
  end

  private

  attr_writer :turn_number, :winner

  def cats_game?(board)
    board.full? && @winner.nil?
  end

  def cats_game
    puts('Tie game! Nobody wins.')
    exit
  end

  def over?
    @winner.nil? ? false : true
  end
end

# Represents state of each player. Initializes two Player objs/game
class Player
  attr_reader :letter, :name

  @@players = 1

  def initialize
    @letter = player_letter
    @name = create_username
    @@players += 1
  end

  private

  attr_writer :letter

  def player_letter
    @@players.odd? ? 'x' : 'o'
  end

  def create_username
    puts "Welcome, player #{@@players}! Enter your name:"
    gets.chomp
  end
end

def take_turn(player, board, game)
  game.report
  board.print_board
  puts "Make your move.\n\nEnter the desired row."
  row = gets.chomp.to_i
  puts 'Enter the column.'
  col = gets.chomp.to_i
  board.mark_square(row, col, player.letter)
  # check for winner
  game.bump_turn_number
end

player_one = Player.new
player_two = Player.new
board = Board.new
game = Game.new(player_one, player_two)
puts "Game on! Good luck, players.\n"

puts '---debug---'
# board.fill_board
board.print_board
board.fill_board
board.print_board
board.winning_row? ? game.declare_winner('king') : "didn't work"
puts board.full?
board.print_board
