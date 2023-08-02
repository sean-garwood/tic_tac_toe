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
2. repeat for player two
3. player one makes a move
  - check for winner after third move
4. player two makes a move
5. repeat steps 3-4 until a winner is determined, or until nine moves have
   passed and there is no winner.

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
