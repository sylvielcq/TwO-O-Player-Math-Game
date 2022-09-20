### TWO-O-PLAYER MATH GAME - PLANNING ###

=begin
# Classes

Player #=> Defines the behavior of players
  Initialize:
  - player_id = id
  - current_life_count = 3
  Methods:
  - get/set current_life_count
  - decrease_life_count
 
Game #=> holds the game logic
  Initialize:
  - current_player = 1
  Methods:
  - get current_player
  - switch current_player
  
  def game_loop
  - create a new question object
  - print out question using current_player
  - get input from player
  - If input is correct
    - Print out 'YES! You are correct.'
  - If incorrect
    - Print out "Seriously? No!"
    - call decrease_life_count for the player
  - If current scores are still both above 0
    - Print out current scores
    - Print out "----- NEW TURN -----"
    - Switch current_player
    - Loop back to START
  - If one of the scores == 0
    - Print out end statement "Player x wins with a score of x/3"
    - Print out "----- GAME OVER -----"
    - Print out "Good bye!"
  end

Question #=> everything related to math questions
  Methods:
  - generate random number between 1 and 20
  - create math addition question using current_player and 2 random generated numbers
  - calculate answer
  - check answer (=> bool)


# Objects

Player1
  - id = 1
  
Player2
  - id = 2

Questions

=end