# tic_tac_toe

Assignment from [The Odin Project's Ruby path]
(https://www.theodinproject.com/lessons/ruby-tic-tac-toe).

## spec

Build a tic-tac-toe game on the command line where two human players can play
against each other and the board is displayed in between turns.

## design

### procedure

1. load file, print "Welcome to tic-tac-toe! Player one, enter your name." to
console. name = gets.chomp.to_s



### objects

The following items need to have objects to represent them in memory:

- A game state
  - Winner, loser
  - Board
- Both players
- Moves
- Turns

Taking a turn is a procedure, so it does not need an object per se, but it could
be a message that is sent to game state.
gameboard will be public.
player moves will be public
setting the winner needs to be private to the Game instance
